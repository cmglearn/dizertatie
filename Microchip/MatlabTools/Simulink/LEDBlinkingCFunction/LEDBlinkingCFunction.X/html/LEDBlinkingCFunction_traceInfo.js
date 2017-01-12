function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <Root>/C Function Call */
	this.urlHashMap["LEDBlinkingCFunction:8"] = "LEDBlinkingCFunction.c:46&LEDBlinkingCFunction.h:54";
	/* <Root>/Compiler Options */
	this.urlHashMap["LEDBlinkingCFunction:2"] = "msg=rtwMsg_CodeGenerationReducedBlock&block=LEDBlinkingCFunction/Compiler%20Options";
	/* <Root>/Data Type Conversion */
	this.urlHashMap["LEDBlinkingCFunction:5"] = "LEDBlinkingCFunction.c:51";
	/* <Root>/Microchip Master */
	this.urlHashMap["LEDBlinkingCFunction:1"] = "LEDBlinkingCFunction.c:81";
	/* <S1>/Data Type
Propagation */
	this.urlHashMap["LEDBlinkingCFunction:3:1"] = "msg=rtwMsg_reducedBlock&block=LEDBlinkingCFunction/Counter%20Limited/Data%20Type%20Propagation";
	/* <S1>/Output */
	this.urlHashMap["LEDBlinkingCFunction:3:4"] = "LEDBlinkingCFunction.c:43,66,71&LEDBlinkingCFunction.h:53,55";
	/* <S2>/Digital Output
Write */
	this.urlHashMap["LEDBlinkingCFunction:4:4"] = "LEDBlinkingCFunction.c:55";
	/* <S3>/FixPt
Constant */
	this.urlHashMap["LEDBlinkingCFunction:3:3:2"] = "LEDBlinkingCFunction.c:60";
	/* <S3>/FixPt
Data Type
Duplicate */
	this.urlHashMap["LEDBlinkingCFunction:3:3:3"] = "msg=rtwMsg_reducedBlock&block=LEDBlinkingCFunction/Counter%20Limited/Increment%20Real%20World/FixPt%20Data%20Type%20Duplicate";
	/* <S3>/FixPt
Sum1 */
	this.urlHashMap["LEDBlinkingCFunction:3:3:4"] = "LEDBlinkingCFunction.c:59";
	/* <S4>/Constant */
	this.urlHashMap["LEDBlinkingCFunction:3:5:4"] = "LEDBlinkingCFunction.c:67";
	/* <S4>/FixPt
Data Type
Duplicate1 */
	this.urlHashMap["LEDBlinkingCFunction:3:5:2"] = "msg=rtwMsg_reducedBlock&block=LEDBlinkingCFunction/Counter%20Limited/Wrap%20To%20Zero/FixPt%20Data%20Type%20Duplicate1";
	/* <S4>/FixPt
Switch */
	this.urlHashMap["LEDBlinkingCFunction:3:5:3"] = "LEDBlinkingCFunction.c:64,75";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "LEDBlinkingCFunction"};
	this.sidHashMap["LEDBlinkingCFunction"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<S1>"] = {sid: "LEDBlinkingCFunction:3"};
	this.sidHashMap["LEDBlinkingCFunction:3"] = {rtwname: "<S1>"};
	this.rtwnameHashMap["<S2>"] = {sid: "LEDBlinkingCFunction:4"};
	this.sidHashMap["LEDBlinkingCFunction:4"] = {rtwname: "<S2>"};
	this.rtwnameHashMap["<S3>"] = {sid: "LEDBlinkingCFunction:3:3"};
	this.sidHashMap["LEDBlinkingCFunction:3:3"] = {rtwname: "<S3>"};
	this.rtwnameHashMap["<S4>"] = {sid: "LEDBlinkingCFunction:3:5"};
	this.sidHashMap["LEDBlinkingCFunction:3:5"] = {rtwname: "<S4>"};
	this.rtwnameHashMap["<Root>/C Function Call"] = {sid: "LEDBlinkingCFunction:8"};
	this.sidHashMap["LEDBlinkingCFunction:8"] = {rtwname: "<Root>/C Function Call"};
	this.rtwnameHashMap["<Root>/Compiler Options"] = {sid: "LEDBlinkingCFunction:2"};
	this.sidHashMap["LEDBlinkingCFunction:2"] = {rtwname: "<Root>/Compiler Options"};
	this.rtwnameHashMap["<Root>/Counter Limited"] = {sid: "LEDBlinkingCFunction:3"};
	this.sidHashMap["LEDBlinkingCFunction:3"] = {rtwname: "<Root>/Counter Limited"};
	this.rtwnameHashMap["<Root>/Data Type Conversion"] = {sid: "LEDBlinkingCFunction:5"};
	this.sidHashMap["LEDBlinkingCFunction:5"] = {rtwname: "<Root>/Data Type Conversion"};
	this.rtwnameHashMap["<Root>/Demux"] = {sid: "LEDBlinkingCFunction:13"};
	this.sidHashMap["LEDBlinkingCFunction:13"] = {rtwname: "<Root>/Demux"};
	this.rtwnameHashMap["<Root>/Digital Output"] = {sid: "LEDBlinkingCFunction:4"};
	this.sidHashMap["LEDBlinkingCFunction:4"] = {rtwname: "<Root>/Digital Output"};
	this.rtwnameHashMap["<Root>/Microchip Master"] = {sid: "LEDBlinkingCFunction:1"};
	this.sidHashMap["LEDBlinkingCFunction:1"] = {rtwname: "<Root>/Microchip Master"};
	this.rtwnameHashMap["<Root>/Mux"] = {sid: "LEDBlinkingCFunction:12"};
	this.sidHashMap["LEDBlinkingCFunction:12"] = {rtwname: "<Root>/Mux"};
	this.rtwnameHashMap["<S1>/Data Type Propagation"] = {sid: "LEDBlinkingCFunction:3:1"};
	this.sidHashMap["LEDBlinkingCFunction:3:1"] = {rtwname: "<S1>/Data Type Propagation"};
	this.rtwnameHashMap["<S1>/Force to be scalar"] = {sid: "LEDBlinkingCFunction:3:2"};
	this.sidHashMap["LEDBlinkingCFunction:3:2"] = {rtwname: "<S1>/Force to be scalar"};
	this.rtwnameHashMap["<S1>/Increment Real World"] = {sid: "LEDBlinkingCFunction:3:3"};
	this.sidHashMap["LEDBlinkingCFunction:3:3"] = {rtwname: "<S1>/Increment Real World"};
	this.rtwnameHashMap["<S1>/Output"] = {sid: "LEDBlinkingCFunction:3:4"};
	this.sidHashMap["LEDBlinkingCFunction:3:4"] = {rtwname: "<S1>/Output"};
	this.rtwnameHashMap["<S1>/Wrap To Zero"] = {sid: "LEDBlinkingCFunction:3:5"};
	this.sidHashMap["LEDBlinkingCFunction:3:5"] = {rtwname: "<S1>/Wrap To Zero"};
	this.rtwnameHashMap["<S1>/y"] = {sid: "LEDBlinkingCFunction:3:6"};
	this.sidHashMap["LEDBlinkingCFunction:3:6"] = {rtwname: "<S1>/y"};
	this.rtwnameHashMap["<S2>/In1"] = {sid: "LEDBlinkingCFunction:4:71"};
	this.sidHashMap["LEDBlinkingCFunction:4:71"] = {rtwname: "<S2>/In1"};
	this.rtwnameHashMap["<S2>/In2"] = {sid: "LEDBlinkingCFunction:4:145"};
	this.sidHashMap["LEDBlinkingCFunction:4:145"] = {rtwname: "<S2>/In2"};
	this.rtwnameHashMap["<S2>/Digital Output Write"] = {sid: "LEDBlinkingCFunction:4:4"};
	this.sidHashMap["LEDBlinkingCFunction:4:4"] = {rtwname: "<S2>/Digital Output Write"};
	this.rtwnameHashMap["<S3>/u"] = {sid: "LEDBlinkingCFunction:3:3:1"};
	this.sidHashMap["LEDBlinkingCFunction:3:3:1"] = {rtwname: "<S3>/u"};
	this.rtwnameHashMap["<S3>/FixPt Constant"] = {sid: "LEDBlinkingCFunction:3:3:2"};
	this.sidHashMap["LEDBlinkingCFunction:3:3:2"] = {rtwname: "<S3>/FixPt Constant"};
	this.rtwnameHashMap["<S3>/FixPt Data Type Duplicate"] = {sid: "LEDBlinkingCFunction:3:3:3"};
	this.sidHashMap["LEDBlinkingCFunction:3:3:3"] = {rtwname: "<S3>/FixPt Data Type Duplicate"};
	this.rtwnameHashMap["<S3>/FixPt Sum1"] = {sid: "LEDBlinkingCFunction:3:3:4"};
	this.sidHashMap["LEDBlinkingCFunction:3:3:4"] = {rtwname: "<S3>/FixPt Sum1"};
	this.rtwnameHashMap["<S3>/y"] = {sid: "LEDBlinkingCFunction:3:3:5"};
	this.sidHashMap["LEDBlinkingCFunction:3:3:5"] = {rtwname: "<S3>/y"};
	this.rtwnameHashMap["<S4>/U"] = {sid: "LEDBlinkingCFunction:3:5:1"};
	this.sidHashMap["LEDBlinkingCFunction:3:5:1"] = {rtwname: "<S4>/U"};
	this.rtwnameHashMap["<S4>/Constant"] = {sid: "LEDBlinkingCFunction:3:5:4"};
	this.sidHashMap["LEDBlinkingCFunction:3:5:4"] = {rtwname: "<S4>/Constant"};
	this.rtwnameHashMap["<S4>/FixPt Data Type Duplicate1"] = {sid: "LEDBlinkingCFunction:3:5:2"};
	this.sidHashMap["LEDBlinkingCFunction:3:5:2"] = {rtwname: "<S4>/FixPt Data Type Duplicate1"};
	this.rtwnameHashMap["<S4>/FixPt Switch"] = {sid: "LEDBlinkingCFunction:3:5:3"};
	this.sidHashMap["LEDBlinkingCFunction:3:5:3"] = {rtwname: "<S4>/FixPt Switch"};
	this.rtwnameHashMap["<S4>/Y"] = {sid: "LEDBlinkingCFunction:3:5:5"};
	this.sidHashMap["LEDBlinkingCFunction:3:5:5"] = {rtwname: "<S4>/Y"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
