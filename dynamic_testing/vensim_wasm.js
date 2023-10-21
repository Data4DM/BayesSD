var VensimLoadingFilesCount = 0;	//Count of files currently being loaded to the WASM file system

function SetDebugModeOn() {
	_SetDebugModeOn();
}

function SetDebugModeOff() {
	_SetDebugModeOff();
}

function SetConstant(strParameter, fValue)
{
	var ptr  = allocate(intArrayFromString(strParameter), ALLOC_NORMAL);
	var n = Number(fValue);
	if ( Number.isNaN(n) || ! Number.isFinite(n) ) {
		console.log("Non-numeric value " + fValue + " for " + strParameter + " in SetConstant")
		return -1;
	}
	return _SetConstant(-1, ptr, n);
}

function GetConstant(strParameter, fValue)
{
	var ptr  = allocate(intArrayFromString(strParameter), ALLOC_NORMAL);
	return _GetConstant(ptr);
}

function SetLookup(strParameter, farrXvals, farrYvals)
{
	var ptr  = allocate(intArrayFromString(strParameter), ALLOC_NORMAL);
	
	if ( farrXvals.length != farrYvals.length || farrXvals.length==0 || farrYvals.length==0) {
		console.log("Mismatched or zero array lengths for "+ strParameter + " in SetLookup");
		return -1;
	}

	// convert javascript arrays to typed arrays of numbers
	let xarr = new Float32Array(farrXvals);
	let yarr = new Float32Array(farrYvals);

	// validate numbers, because javascript's loose typing makes it very easy for this to go wrong
	for(i=0;i<xarr.length;i++) {
		if ( isNaN(farrXvals[i]) || ! isFinite(farrXvals[i]) || isNaN(farrYvals[i]) || ! isFinite(farrYvals[i]) ) {
			console.log("Non-numeric value for " + strParameter + " in SetLookup");
			return -1;
		}
	}

	// copy typed arrays into wasm heap memory
	// see https://becominghuman.ai/passing-and-returning-webassembly-array-parameters-a0f572c65d97
	// or https://emscripten.org/docs/porting/connecting_cpp_and_javascript/Interacting-with-code.html#interacting-with-code-ccall-cwrap
	var bufX = Module._malloc(xarr.length*xarr.BYTES_PER_ELEMENT);
	Module.HEAPF32.set(xarr, bufX >> 2); // note bit shift for index vs pointer conversion https://github.com/emscripten-core/emscripten/issues/4003
	var bufY = Module._malloc(yarr.length*yarr.BYTES_PER_ELEMENT);
	Module.HEAPF32.set(yarr, bufY >> 2);
	rval = Module.ccall('SetLookup', 'number', ['number','number','number','number','number'], [-1, ptr, xarr.length, bufX, bufY]);
	// this is like calling return _SetLookup(-1, ptr, xarr.length, xarr.buffer, yarr.buffer); but with memory wasm can see
	Module._free(bufX);
	Module._free(bufY);

	return rval;

}

function LoadFileToWASMFileSystem(strFileToLoad)
{
	VensimLoadingFilesCount++;
	
	var oReq = new XMLHttpRequest();
	oReq.open("GET", strFileToLoad, true);
	oReq.responseType = "arraybuffer";

	oReq.onload = function (oEvent)
	{
		var arrayBuffer = oReq.response;
		if (arrayBuffer)
		{
			var byteArray = new Uint8Array(arrayBuffer);
			var bFileCreated = FS.writeFile(strFileToLoad, byteArray);
			
			var ptr  = allocate(intArrayFromString(strFileToLoad), ALLOC_NORMAL);
			_LoadRun(ptr);
		}
		VensimLoadingFilesCount--;
	};

	oReq.send();
}




function LoadFileToWASMFileSystem(strFileToLoad)
{
	VensimLoadingFilesCount++;
	
	var oReq = new XMLHttpRequest();
	oReq.open("GET", strFileToLoad, true);
	oReq.responseType = "arraybuffer";

	oReq.onload = function (oEvent)
	{
		var arrayBuffer = oReq.response;
		if (arrayBuffer)
		{
			var byteArray = new Uint8Array(arrayBuffer);
			var bFileCreated = FS.writeFile(strFileToLoad, byteArray);
			
			var ptr  = allocate(intArrayFromString(strFileToLoad), ALLOC_NORMAL);
			_LoadRun(ptr);
		}
		VensimLoadingFilesCount--;
	};

	oReq.send();
}

function CloseRun(strRun)
{
	var ptr  = allocate(intArrayFromString(strRun), ALLOC_NORMAL);
	return _CloseRun(ptr);
}

function GetVariableIndex(strParameter)
{
	var ptr  = allocate(intArrayFromString(strParameter), ALLOC_NORMAL);
	return _GetVariableIndex(ptr);
}

/*
function LoadFileFromServer(filePath)
{
	var result = null;
	var xmlhttp = new XMLHttpRequest();
	
	xmlhttp.open("GET", filePath, false);
	xmlhttp.send();

	if (xmlhttp.status==200)
	{
		var responseType = xmlhttp.responseType;
		result = xmlhttp.responseText;
	}
	
	return result;
}
*/

function ExportCSV()
{
	_DumpResultsToDisk();
	DownloadFile("export.csv");
}

function DownloadFile(strFileName)
{
    var stream = FS.open(strFileName, 'r');
	
	if ( stream)
	{
		var fileStats = FS.stat(strFileName);
		var nSize = fileStats.size;
		var buf = new Uint8Array(nSize);
		FS.read(stream, buf, 0, nSize, 0);
		FS.close(stream);

		var bb = new Blob([buf], { type: 'text/plain' });
		var a = document.createElement('a');
		
		a.download = strFileName;
		a.href = window.URL.createObjectURL(bb);
		a.click();
		return;
	}
	
	alert('Error : Export not found.')
}

function AddCINFileFromServer(strFileToLoad)
{
	VensimLoadingFilesCount++;

	var oReq = new XMLHttpRequest();
	oReq.open("GET", strFileToLoad, true);
	oReq.responseType = "arraybuffer";
	
	oReq.onload = function (oEvent)
	{
		var arrayBuffer = oReq.response; // Note: not oReq.responseText
		VensimLoadingFilesCount--;
		if (arrayBuffer)
		{
			var byteArray = new Uint8Array(arrayBuffer);
			var bFileCreated = FS.writeFile(strFileToLoad, byteArray);

			//Run the model and update the graphs.
			var ptr  = allocate(intArrayFromString(strFileToLoad), ALLOC_NORMAL);
			InitializeModel();
			_AddCINFile(ptr);
			RunSim();
			UpdateCharts(1);
		}
	};
	oReq.send(null);
}

function SetConstantUsingIndex(nIndex, fValue)
{
	return _SetConstant(nIndex, "", fValue);
}

function GetNumVariables()
{
	return _GetNumVariables();
}

function GetVariableName(nIndex)
{
	var tempptr = _GetVariableName(nIndex);
	var strVarName = UTF8ToString(tempptr);
	return strVarName;
}

function GetVariableType(nIndex)
{
	return _GetVariableType(nIndex);
}

function InitializeModel()
{
	return _InitializeModel();
}

function GetNumberOfSubscriptElements(strParameter)
{
	var ptr  = allocate(intArrayFromString(strVarName), ALLOC_NORMAL);
	return _GetNumberOfSubscriptElements(ptr);
}

function RunSim()
{
	return _RunSim();
}

function GetSeriesNumVals(strVarName)
{
	var ptr  = allocate(intArrayFromString(strVarName), ALLOC_NORMAL);
	return _GetTimeSeriesNumVals(ptr);
}

function GetSeries(strVarName)
{
	var nNumVals = GetSeriesNumVals(strVarName);
	var ptr  = allocate(intArrayFromString(strVarName), ALLOC_NORMAL);
	var nNumValsReturned = nNumVals;
	var fResultsArray = ccallArrays("GetSeries", "array", ["intArray"], [ptr], {heapIn: "HEAPF64", heapOut: "HEAPF64", returnArraySize: nNumValsReturned});
	return fResultsArray;
}

function GetValueAtTime(strVarName, fTime)
{
	var ptr  = allocate(intArrayFromString(strVarName), ALLOC_NORMAL);
	return _GetValueAtTime(ptr, fTime);
}

