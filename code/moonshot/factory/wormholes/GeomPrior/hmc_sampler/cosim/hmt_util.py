import torch
import numpy as np
import time
from termcolor import colored
import inspect
import random
import sys


def set_random_seed(seed=None):
    if seed is None:
        seed = int((time.time()*1e6) % 1e8)
    global _random_seed
    _random_seed = seed
    random.seed(seed)
    np.random.seed(seed)
    torch.manual_seed(seed)
    if torch.cuda.is_available():
        torch.cuda.manual_seed(seed)


set_random_seed()

_print_refresh_rate = 0.25  # seconds

progress_bar_num_iters = None
progress_bar_len_str_num_iters = None
progress_bar_time_start = None
progress_bar_prev_duration = None


def progress_bar(i, len):
    bar_len = 20
    filled_len = int(round(bar_len * i / len))
    # percents = round(100.0 * i / len, 1)
    return '#' * filled_len + '-' * (bar_len - filled_len)


def progress_bar_init(message, num_iters, iter_name='Items', rejections=False):
    global progress_bar_num_iters
    global progress_bar_len_str_num_iters
    global progress_bar_time_start
    global progress_bar_prev_duration
    if num_iters < 1:
        raise ValueError('num_iters must be a positive integer')
    progress_bar_num_iters = num_iters
    progress_bar_time_start = time.time()
    progress_bar_prev_duration = 0
    progress_bar_len_str_num_iters = len(str(progress_bar_num_iters))
    print(message)
    sys.stdout.flush()
    if not rejections:
        print('Time spent  | Time remain.| Progress             | {} | {}/sec'.format(iter_name.ljust(progress_bar_len_str_num_iters * 2 + 1), iter_name))
    else:
        print('Time spent  | Time remain.| Progress             | {} | {}/sec | Rejected Samples'.format(iter_name.ljust(progress_bar_len_str_num_iters * 2 + 1), iter_name))



def progress_bar_update(iter,rejections=None):
    global progress_bar_prev_duration
    duration = time.time() - progress_bar_time_start
    if rejections is None:
        if (duration - progress_bar_prev_duration > _print_refresh_rate) or (iter >= progress_bar_num_iters - 1):
            progress_bar_prev_duration = duration
            traces_per_second = (iter + 1) / duration
            print('{} | {} | {} | {}/{} | {:,.2f}       '.format(days_hours_mins_secs_str(duration), days_hours_mins_secs_str((progress_bar_num_iters - iter) / traces_per_second), progress_bar(iter, progress_bar_num_iters), str(iter).rjust(progress_bar_len_str_num_iters), progress_bar_num_iters, traces_per_second), end='\r')
            sys.stdout.flush()
    else:
        if (duration - progress_bar_prev_duration > _print_refresh_rate) or (iter >= progress_bar_num_iters - 1):
            progress_bar_prev_duration = duration
            traces_per_second = (iter + 1) / duration
            print('{} | {} | {} | {}/{} | {:,.2f} |  {:,.2f}     '.format(days_hours_mins_secs_str(duration), days_hours_mins_secs_str((progress_bar_num_iters - iter) / traces_per_second), progress_bar(iter, progress_bar_num_iters), str(iter).rjust(progress_bar_len_str_num_iters), progress_bar_num_iters, traces_per_second,rejections), end='\r')
            sys.stdout.flush()



def progress_bar_end(message=None):
    progress_bar_update(progress_bar_num_iters)
    print()
    if message is not None:
        print(message)


def days_hours_mins_secs_str(total_seconds):
    d, r = divmod(total_seconds, 86400)
    h, r = divmod(r, 3600)
    m, s = divmod(r, 60)
    return '{0}d:{1:02}:{2:02}:{3:02}'.format(int(d), int(h), int(m), int(s))


def has_nan_or_inf(value):
    if torch.is_tensor(value):
        value = torch.sum(value)
        isnan = int(torch.isnan(value)) > 0
        isinf = int(torch.isinf(value)) > 0
        return isnan or isinf
    else:
        value = float(value)
        return (value == float('inf')) or (value == float('-inf')) or (value == float('NaN'))


class LogProbError(Exception):
    pass

# def flatten(value):
#     # Taken from autograd.misc.flatten
#     t = type(value)
#     if t in (list, tuple):
#         return concatenate(map(flatten, value))
#     elif t is dict:
#         return concatenate(flatten(value[k]) for k in sorted(value))
#     else:
#         return value.contiguous().view(-1)
#
# def concatenate(lst):
#     lst = list(lst)
#     return torch.cat(lst) if lst else torch.tensor([])


def flatten(model):
    return torch.cat([p.flatten() for p in model.parameters()])


def unflatten(model, flattened_params):
    if flattened_params.dim() != 1:
        raise ValueError('Expecting a 1d flattened_params')
    params_list = []
    i = 0
    for val in list(model.parameters()):
        length = val.nelement()
        param = flattened_params[i:i+length].view_as(val)
        params_list.append(param)
        i += length

    return params_list


def update_model_params_in_place(model, params):
    for weights, new_w in zip(model.parameters(), params):
        weights.data = new_w


# Edited from https://github.com/mariogeiger/hessian
def gradient(outputs, inputs, grad_outputs=None, retain_graph=None, create_graph=False):
    '''
    Compute the gradient of `outputs` with respect to `inputs`

    gradient(x.sum(), x)
    gradient((x * y).sum(), [x, y])
    '''
    if torch.is_tensor(inputs):
        inputs = [inputs]
    else:
        inputs = list(inputs)
    grads = torch.autograd.grad(outputs, inputs, grad_outputs,
                                allow_unused=True,
                                retain_graph=retain_graph,
                                create_graph=create_graph)
    grads = [x if x is not None else torch.zeros_like(y) for x, y in zip(grads, inputs)]
    return torch.cat([x.contiguous().view(-1) for x in grads])


def hessian(output, inputs, out=None, allow_unused=False, create_graph=False, return_inputs=False):
    '''
    Compute the Hessian of `output` with respect to `inputs`

    hessian((x * y).sum(), [x, y])
    '''
    assert output.ndimension() == 0

    if torch.is_tensor(inputs):
        inputs = [inputs]
    else:
        inputs = list(inputs)

    n = sum(p.numel() for p in inputs)
    if out is None:
        out = output.new_zeros(n, n)

    ai = 0
    for i, inp in enumerate(inputs):
        [grad] = torch.autograd.grad(output, inp, create_graph=True, allow_unused=allow_unused)
        grad = torch.zeros_like(inp) if grad is None else grad
        grad = grad.contiguous().view(-1)

        for j in range(inp.numel()):
            if grad[j].requires_grad:
                row = gradient(grad[j], inputs[i:], retain_graph=True, create_graph=create_graph)[j:]
            else:
                row = grad[j].new_zeros(sum(x.numel() for x in inputs[i:]) - j)

            out[ai, ai:].add_(row.type_as(out))  # ai's row
            if ai + 1 < n:
                out[ai + 1:, ai].add_(row[1:].type_as(out))  # ai's column
            del row
            ai += 1
        del grad
    # https://github.com/pytorch/pytorch/issues/16532
    if return_inputs:
        return out, inputs
    else:
        return out

def jacobian(outputs, inputs, create_graph=False, return_inputs = False):
    '''
    Compute the Jacobian of `outputs` with respect to `inputs`

    jacobian(x, x)
    jacobian(x * y, [x, y])
    jacobian([x * y, x.sqrt()], [x, y])
    '''
    if torch.is_tensor(outputs):
        outputs = [outputs]
    else:
        outputs = list(outputs)

    if torch.is_tensor(inputs):
        inputs = [inputs]
    else:
        inputs = list(inputs)

    jac = []
    for output in outputs:
        output_flat = output.view(-1)
        output_grad = torch.zeros_like(output_flat)
        for i in range(len(output_flat)):
            output_grad[i] = 1
            jac += [gradient(output_flat, inputs, output_grad, True, create_graph)]
            output_grad[i] = 0
    if return_inputs:
        return torch.stack(jac), inputs
    else:
        return torch.stack(jac)

def eval_print(*expressions):
    print('\n\n' + colored(inspect.stack()[1][3], 'white', attrs=['bold']))
    frame = sys._getframe(1)
    max_str_length = 0
    for expression in expressions:
        if len(expression) > max_str_length:
            max_str_length = len(expression)
    for expression in expressions:
        val = eval(expression, frame.f_globals, frame.f_locals)
        if isinstance(val, np.ndarray):
            val = val.tolist()
        print('  {} = {}'.format(expression.ljust(max_str_length), repr(val)))

#################################################################################
# Found here: https://gist.github.com/apaszke/4c8ead6f17a781d589f6655692e7f6f0
#################################################################################

import sys
import types
from collections import OrderedDict

PY2 = sys.version_info[0] == 2
_internal_attrs = {'_backend', '_parameters', '_buffers', '_backward_hooks', '_forward_hooks', '_forward_pre_hooks', '_modules'}


### Had to add this for conv net
_new_methods = {'conv2d_forward','_forward_impl', '_check_input_dim', '_conv_forward'}


class Scope(object):
    def __init__(self):
        self._modules = OrderedDict()


# Function keeps looping and turning each module in the network to a function
def _make_functional(module, params_box, params_offset):
    self = Scope()
    num_params = len(module._parameters)
    param_names = list(module._parameters.keys())
    # Set dummy variable to bias_None to rename as flag if no bias
    if 'bias' in param_names and module._parameters['bias'] is None:
        param_names[-1] = 'bias_None' # Remove last name (hopefully bias) from list
    forward = type(module).forward.__func__ if PY2 else type(module).forward
    if type(module) == torch.nn.modules.container.Sequential:
        # Patch sequential model by replacing the forward method
        forward = Sequential_forward_patch
    if 'BatchNorm' in module.__class__.__name__:
        # Patch sequential model by replacing the forward method (hoping applies for all BNs need
        # to put this in tests)
        forward = bn_forward_patch

    for name, attr in module.__dict__.items():
        if name in _internal_attrs:
            continue   #If internal attributes skip
        setattr(self, name, attr)
    ### Had to add this for conv net (MY ADDITION)
    for name in dir(module):
        if name in _new_methods:
            if name == '_conv_forward': # Patch for pytorch 1.5.0+cu101
                setattr(self, name, types.MethodType(type(module)._conv_forward,self))
            if name == 'conv2d_forward':
                setattr(self, name, types.MethodType(type(module).conv2d_forward,self))
            if name == '_forward_impl':
                setattr(self, name, types.MethodType(type(module)._forward_impl,self))
            if name == '_check_input_dim': # Batch Norm
                # import pdb; pdb.set_trace()
                setattr(self, name, types.MethodType(type(module)._check_input_dim,self))

    child_params_offset = params_offset + num_params
    for name, child in module.named_children():
        child_params_offset, fchild = _make_functional(child, params_box, child_params_offset)
        self._modules[name] = fchild  # fchild is functional child
        setattr(self, name, fchild)
    def fmodule(*args, **kwargs):

        # Uncomment below if statement to step through (with 'n') assignment of parameters.
#         if params_box[0] is not None:
#             import pdb; pdb.set_trace()

        # If current layer has no bias, insert the corresponding None into params_box
        # with the params_offset ensuring the correct weight is applied to the right place.
        if 'bias_None' in param_names:
            params_box[0].insert(params_offset + 1, None)
        for name, param in zip(param_names, params_box[0][params_offset:params_offset + num_params]):

            # In order to deal with layers that have no bias:
            if name == 'bias_None':
                setattr(self, 'bias', None)
            else:
                setattr(self, name, param)
        # In the forward pass we receive a context object and a Tensor containing the
        # input; we must return a Tensor containing the output, and we can use the
        # context object to cache objects for use in the backward pass.

        # When running the kwargs no longer exist as they were put into params_box and therefore forward is just
        # forward(self, x), so I could comment **kwargs out
        return forward(self, *args) #, **kwargs)

    return child_params_offset, fmodule


def make_functional(module):
    params_box = [None]
    _, fmodule_internal = _make_functional(module, params_box, 0)

    def fmodule(*args, **kwargs):
        params_box[0] = kwargs.pop('params') # if key is in the dictionary, remove it and return its value, else return default. If default is not given and key is not in the dictionary, a KeyError is raised.
        return fmodule_internal(*args, **kwargs)

    return fmodule

##### PATCH FOR nn.Sequential #####

def Sequential_forward_patch(self, input):
    # put at top of notebook nn.Sequential.forward = Sequential_forward_patch
    for label, module in self._modules.items():
        input = module(input)
    return input

##### Patch for batch norm #####
def bn_forward_patch(self, input):
    # set running var to None and running mean
    return torch.nn.functional.batch_norm(
                input, running_mean = None, running_var = None,
                weight = self.weight, bias = self.bias,
                training = self.training,
                momentum = self.momentum, eps = self.eps)

def gpu_check_delete(string, locals):
    if string in locals:
        del locals[string]
        torch.cuda.empty_cache()
