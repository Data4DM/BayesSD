1. ast_walker.py에서 InitialValueCodegenWalker 클래스의 인자로 lookup_function_names를 받는데 이건 BlockCodegenWalker와 중복이라서 삭제해야 해요.

2. StanFunctionBuilder 클래스를 보면 get_generated_lookups_dict() 라는 함수가 있어요. 비슷한 형태로 get_generated_datastructures_set()라는 함수를 만들어서, DataStructureCodegenWalker 클래스의 data_variable_names 변수를 노출시키는 함수를 먼저 생성하세요.

line 305 of stan_block_builder.py

![[Pasted image 20221002175847.png]]
3. StanTransformedParametersBuilder.build_block, write_block 에서 1단계에서 반환해주는 변수를 인자로 받게끔 함수 signature를 수정해주세요.

line 20 of stan_block_builder.py


4. 그러면 오류 사진에서 지칭하는 코드 부분에 새로운 인자를 넣어줄 수 있고요, 그러면 부족하다고 하는 인자가 채워집니다.

5. stanify_data2draws, draws2data를 보면 transformed_params_builder.build_block() 를 호출하는 부분이 있어요. 이미 있는 코드를 참고해서 1단계에서 만든 함수를 호출한 값을 인자로 넣어주게끔 수정해주세요.
