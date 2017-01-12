function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <Root>/Compiler Options */
	this.urlHashMap["LEDBlinking:2"] = "msg=rtwMsg_CodeGenerationReducedBlock&block=LEDBlinking/Compiler%20Options";
	/* <Root>/Data Type Conversion */
	this.urlHashMap["LEDBlinking:5"] = "LEDBlinking.c:40";
	/* <Root>/Microchip Master */
	this.urlHashMap["LEDBlinking:1"] = "LEDBlinking.c:72";
	/* <S1>/Data Type
Propagation */
	this.urlHashMap["LEDBlinking:3:1"] = "msg=rtwMsg_reducedBlock&block=LEDBlinking/Counter%20Limited/Data%20Type%20Propagation";
	/* <S1>/Output */
	this.urlHashMap["LEDBlinking:3:4"] = "LEDBlinking.c:41,51,57,62&LEDBlinking.h:53";
	/* <S2>/Digital Output
Write */
	this.urlHashMap["LEDBlinking:4:4"] = "LEDBlinking.c:45";
	/* <S3>/FixPt
Constant */
	this.urlHashMap["LEDBlinking:3:3:2"] = "LEDBlinking.c:50";
	/* <S3>/FixPt
Data Type
Duplicate */
	this.urlHashMap["LEDBlinking:3:3:3"] = "msg=rtwMsg_reducedBlock&block=LEDBlinking/Counter%20Limited/Increment%20Real%20World/FixPt%20Data%20Type%20Duplicate";
	/* <S3>/FixPt
Sum1 */
	this.urlHashMap["LEDBlinking:3:3:4"] = "LEDBlinking.c:49";
	/* <S4>/Constant */
	this.urlHashMap["LEDBlinking:3:5:4"] = "LEDBlinking.c:58";
	/* <S4>/FixPt
Data Type
Duplicate1 */
	this.urlHashMap["LEDBlinking:3:5:2"] = "msg=rtwMsg_reducedBlock&block=LEDBlinking/Counter%20Limited/Wrap%20To%20Zero/FixPt%20Data%20Type%20Duplicate1";
	/* <S4>/FixPt
Switch */
	this.urlHashMap["LEDBlinking:3:5:3"] = "LEDBlinking.c:55,66";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "LEDBlinking"};
	this.sidHashMap["LEDBlinking"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<S1>"] = {sid: "LEDBlinking:3"};
	this.sidHashMap["LEDBlinking:3"] = {rtwname: "<S1>"};
	this.rtwnameHashMap["<S2>"] = {sid: "LEDBlinking:4"};
	this.sidHashMap["LEDBlinking:4"] = {rtwname: "<S2>"};
	this.rtwnameHashMap["<S3>"] = {sid: "LEDBlinking:3:3"};
	this.sidHashMap["LEDBlinking:3:3"] = {rtwname: "<S3>"};
	this.rtwnameHashMap["<S4>"] = {sid: "LEDBlinking:3:5"};
	this.sidHashMap["LEDBlinking:3:5"] = {rtwname: "<S4>"};
	this.rtwnameHashMap["<Root>/Compiler Options"] = {sid: "LEDBlinking:2"};
	this.sidHashMap["LEDBlinking:2"] = {rtwname: "<Root>/Compiler Options"};
	this.rtwnameHashMap["<Root>/Counter Limited"] = {sid: "LEDBlinking:3"};
	this.sidHashMap["LEDBlinking:3"] = {rtwname: "<Root>/Counter Limited"};
	this.rtwnameHashMap["<Root>/Data Type Conversion"] = {sid: "LEDBlinking:5"};
	this.sidHashMap["LEDBlinking:5"] = {rtwname: "<Root>/Data Type Conversion"};
	this.rtwnameHashMap["<Root>/Digital Output"] = {sid: "LEDBlinking:4"};
	this.sidHashMap["LEDBlinking:4"] = {rtwname: "<Root>/Digital Output"};
	this.rtwnameHashMap["<Root>/Microchip Master"] = {sid: "LEDBlinking:1"};
	this.sidHashMap["LEDBlinking:1"] = {rtwname: "<Root>/Microchip Master"};
	this.rtwnameHashMap["<S1>/Data Type Propagation"] = {sid: "LEDBlinking:3:1"};
	this.sidHashMap["LEDBlinking:3:1"] = {rtwname: "<S1>/Data Type Propagation"};
	this.rtwnameHashMap["<S1>/Force to be scalar"] = {sid: "LEDBlinking:3:2"};
	this.sidHashMap["LEDBlinking:3:2"] = {rtwname: "<S1>/Force to be scalar"};
	this.rtwnameHashMap["<S1>/Increment Real World"] = {sid: "LEDBlinking:3:3"};
	this.sidHashMap["LEDBlinking:3:3"] = {rtwname: "<S1>/Increment Real World"};
	this.rtwnameHashMap["<S1>/Output"] = {sid: "LEDBlinking:3:4"};
	this.sidHashMap["LEDBlinking:3:4"] = {rtwname: "<S1>/Output"};
	this.rtwnameHashMap["<S1>/Wrap To Zero"] = {sid: "LEDBlinking:3:5"};
	this.sidHashMap["LEDBlinking:3:5"] = {rtwname: "<S1>/Wrap To Zero"};
	this.rtwnameHashMap["<S1>/y"] = {sid: "LEDBlinking:3:6"};
	this.sidHashMap["LEDBlinking:3:6"] = {rtwname: "<S1>/y"};
	this.rtwnameHashMap["<S2>/In1"] = {sid: "LEDBlinking:4:71"};
	this.sidHashMap["LEDBlinking:4:71"] = {rtwname: "<S2>/In1"};
	this.rtwnameHashMap["<S2>/In2"] = {sid: "LEDBlinking:4:145"};
	this.sidHashMap["LEDBlinking:4:145"] = {rtwname: "<S2>/In2"};
	this.rtwnameHashMap["<S2>/Digital Output Write"] = {sid: "LEDBlinking:4:4"};
	this.sidHashMap["LEDBlinking:4:4"] = {rtwname: "<S2>/Digital Output Write"};
	this.rtwnameHashMap["<S3>/u"] = {sid: "LEDBlinking:3:3:1"};
	this.sidHashMap["LEDBlinking:3:3:1"] = {rtwname: "<S3>/u"};
	this.rtwnameHashMap["<S3>/FixPt Constant"] = {sid: "LEDBlinking:3:3:2"};
	this.sidHashMap["LEDBlinking:3:3:2"] = {rtwname: "<S3>/FixPt Constant"};
	this.rtwnameHashMap["<S3>/FixPt Data Type Duplicate"] = {sid: "LEDBlinking:3:3:3"};
	this.sidHashMap["LEDBlinking:3:3:3"] = {rtwname: "<S3>/FixPt Data Type Duplicate"};
	this.rtwnameHashMap["<S3>/FixPt Sum1"] = {sid: "LEDBlinking:3:3:4"};
	this.sidHashMap["LEDBlinking:3:3:4"] = {rtwname: "<S3>/FixPt Sum1"};
	this.rtwnameHashMap["<S3>/y"] = {sid: "LEDBlinking:3:3:5"};
	this.sidHashMap["LEDBlinking:3:3:5"] = {rtwname: "<S3>/y"};
	this.rtwnameHashMap["<S4>/U"] = {sid: "LEDBlinking:3:5:1"};
	this.sidHashMap["LEDBlinking:3:5:1"] = {rtwname: "<S4>/U"};
	this.rtwnameHashMap["<S4>/Constant"] = {sid: "LEDBlinking:3:5:4"};
	this.sidHashMap["LEDBlinking:3:5:4"] = {rtwname: "<S4>/Constant"};
	this.rtwnameHashMap["<S4>/FixPt Data Type Duplicate1"] = {sid: "LEDBlinking:3:5:2"};
	this.sidHashMap["LEDBlinking:3:5:2"] = {rtwname: "<S4>/FixPt Data Type Duplicate1"};
	this.rtwnameHashMap["<S4>/FixPt Switch"] = {sid: "LEDBlinking:3:5:3"};
	this.sidHashMap["LEDBlinking:3:5:3"] = {rtwname: "<S4>/FixPt Switch"};
	this.rtwnameHashMap["<S4>/Y"] = {sid: "LEDBlinking:3:5:5"};
	this.sidHashMap["LEDBlinking:3:5:5"] = {rtwname: "<S4>/Y"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
