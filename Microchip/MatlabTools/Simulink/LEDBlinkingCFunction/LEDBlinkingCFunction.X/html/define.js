function CodeDefine() { 
this.def = new Array();
this.def["__attribute__"] = {file: "LEDBlinkingCFunction_main_c.html",line:29,type:"fcn"};
this.def["main"] = {file: "LEDBlinkingCFunction_main_c.html",line:101,type:"fcn"};
this.def["rtDW"] = {file: "LEDBlinkingCFunction_c.html",line:21,type:"var"};
this.def["rtM_"] = {file: "LEDBlinkingCFunction_c.html",line:24,type:"var"};
this.def["rtM"] = {file: "LEDBlinkingCFunction_c.html",line:25,type:"var"};
this.def["LEDBlinkingCFunction_step0"] = {file: "LEDBlinkingCFunction_c.html",line:31,type:"fcn"};
this.def["LEDBlinkingCFunction_step1"] = {file: "LEDBlinkingCFunction_c.html",line:37,type:"fcn"};
this.def["LEDBlinkingCFunction_initialize"] = {file: "LEDBlinkingCFunction_c.html",line:79,type:"fcn"};
this.def["RT_MODEL"] = {file: "LEDBlinkingCFunction_h.html",line:49,type:"type"};
this.def["DW"] = {file: "LEDBlinkingCFunction_h.html",line:56,type:"type"};
this.def["int8_T"] = {file: "rtwtypes_h.html",line:49,type:"type"};
this.def["uint8_T"] = {file: "rtwtypes_h.html",line:50,type:"type"};
this.def["int16_T"] = {file: "rtwtypes_h.html",line:51,type:"type"};
this.def["uint16_T"] = {file: "rtwtypes_h.html",line:52,type:"type"};
this.def["int32_T"] = {file: "rtwtypes_h.html",line:53,type:"type"};
this.def["uint32_T"] = {file: "rtwtypes_h.html",line:54,type:"type"};
this.def["real32_T"] = {file: "rtwtypes_h.html",line:55,type:"type"};
this.def["real64_T"] = {file: "rtwtypes_h.html",line:56,type:"type"};
this.def["real_T"] = {file: "rtwtypes_h.html",line:62,type:"type"};
this.def["time_T"] = {file: "rtwtypes_h.html",line:63,type:"type"};
this.def["boolean_T"] = {file: "rtwtypes_h.html",line:64,type:"type"};
this.def["int_T"] = {file: "rtwtypes_h.html",line:65,type:"type"};
this.def["uint_T"] = {file: "rtwtypes_h.html",line:66,type:"type"};
this.def["ulong_T"] = {file: "rtwtypes_h.html",line:67,type:"type"};
this.def["char_T"] = {file: "rtwtypes_h.html",line:68,type:"type"};
this.def["uchar_T"] = {file: "rtwtypes_h.html",line:69,type:"type"};
this.def["byte_T"] = {file: "rtwtypes_h.html",line:70,type:"type"};
this.def["creal32_T"] = {file: "rtwtypes_h.html",line:80,type:"type"};
this.def["creal64_T"] = {file: "rtwtypes_h.html",line:85,type:"type"};
this.def["creal_T"] = {file: "rtwtypes_h.html",line:90,type:"type"};
this.def["cint8_T"] = {file: "rtwtypes_h.html",line:97,type:"type"};
this.def["cuint8_T"] = {file: "rtwtypes_h.html",line:104,type:"type"};
this.def["cint16_T"] = {file: "rtwtypes_h.html",line:111,type:"type"};
this.def["cuint16_T"] = {file: "rtwtypes_h.html",line:118,type:"type"};
this.def["cint32_T"] = {file: "rtwtypes_h.html",line:125,type:"type"};
this.def["cuint32_T"] = {file: "rtwtypes_h.html",line:132,type:"type"};
this.def["pointer_T"] = {file: "rtwtypes_h.html",line:150,type:"type"};
this.def["delay"] = {file: "delay_c.html",line:1,type:"fcn"};
}
CodeDefine.instance = new CodeDefine();
var testHarnessInfo = {OwnerFileName: "", HarnessOwner: "", HarnessName: "", IsTestHarness: "0"};
var relPathToBuildDir = "../ert_main.c";
var fileSep = "\\";
var isPC = true;
function Html2SrcLink() {
	this.html2SrcPath = new Array;
	this.html2Root = new Array;
	this.html2SrcPath["LEDBlinkingCFunction_main_c.html"] = "../LEDBlinkingCFunction_main.c";
	this.html2Root["LEDBlinkingCFunction_main_c.html"] = "LEDBlinkingCFunction_main_c.html";
	this.html2SrcPath["LEDBlinkingCFunction_c.html"] = "../LEDBlinkingCFunction.c";
	this.html2Root["LEDBlinkingCFunction_c.html"] = "LEDBlinkingCFunction_c.html";
	this.html2SrcPath["LEDBlinkingCFunction_h.html"] = "../LEDBlinkingCFunction.h";
	this.html2Root["LEDBlinkingCFunction_h.html"] = "LEDBlinkingCFunction_h.html";
	this.html2SrcPath["rtwtypes_h.html"] = "../rtwtypes.h";
	this.html2Root["rtwtypes_h.html"] = "rtwtypes_h.html";
	this.html2SrcPath["rtmodel_h.html"] = "../rtmodel.h";
	this.html2Root["rtmodel_h.html"] = "rtmodel_h.html";
	this.html2SrcPath["delay_c.html"] = "../../clib/delay.c";
	this.html2Root["delay_c.html"] = "delay_c.html";
	this.getLink2Src = function (htmlFileName) {
		 if (this.html2SrcPath[htmlFileName])
			 return this.html2SrcPath[htmlFileName];
		 else
			 return null;
	}
	this.getLinkFromRoot = function (htmlFileName) {
		 if (this.html2Root[htmlFileName])
			 return this.html2Root[htmlFileName];
		 else
			 return null;
	}
}
Html2SrcLink.instance = new Html2SrcLink();
var fileList = [
"LEDBlinkingCFunction_main_c.html","LEDBlinkingCFunction_c.html","LEDBlinkingCFunction_h.html","rtwtypes_h.html","rtmodel_h.html","delay_c.html"];