#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LEDBlinking.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LEDBlinking.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=LEDBlinking.c LEDBlinking_main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/LEDBlinking.o ${OBJECTDIR}/LEDBlinking_main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/LEDBlinking.o.d ${OBJECTDIR}/LEDBlinking_main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/LEDBlinking.o ${OBJECTDIR}/LEDBlinking_main.o

# Source Files
SOURCEFILES=LEDBlinking.c LEDBlinking_main.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/LEDBlinking.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ64MC802
MP_LINKER_FILE_OPTION=,--script=p33FJ64MC802.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/LEDBlinking.o: LEDBlinking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LEDBlinking.o.d 
	@${RM} ${OBJECTDIR}/LEDBlinking.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  LEDBlinking.c  -o ${OBJECTDIR}/LEDBlinking.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/LEDBlinking.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"LEDBlinking.X" -I"." -I".." -I"D:/PROGRA~2/MICROC~1/xc16/v1.26/include" -I"D:/PROGRA~2/MICROC~1/xc16/v1.26/support/dsPIC33F/h" -I"D:/PROGRA~2/MICROC~1/xc16/v1.26/support/generic/h" -I"D:/Program Files (x86)/MATLAB/R2015b/rtw/c/ert" -I"D:/Program Files (x86)/MATLAB/R2015b/extern/include" -I"D:/Program Files (x86)/MATLAB/R2015b/simulink/include" -I"D:/Program Files (x86)/MATLAB/R2015b/rtw/c/src" -I"D:/Program Files (x86)/MATLAB/R2015b/rtw/c/src/ext_mode/common" -I"D:/Program Files (x86)/MATLAB/R2015b/rtw/c/src/ext_mode/common" -msmart-io=1 -Wall -msfr-warn=off   -g -O3
	@${FIXDEPS} "${OBJECTDIR}/LEDBlinking.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/LEDBlinking_main.o: LEDBlinking_main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LEDBlinking_main.o.d 
	@${RM} ${OBJECTDIR}/LEDBlinking_main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  LEDBlinking_main.c  -o ${OBJECTDIR}/LEDBlinking_main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/LEDBlinking_main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"LEDBlinking.X" -I"." -I".." -I"D:/PROGRA~2/MICROC~1/xc16/v1.26/include" -I"D:/PROGRA~2/MICROC~1/xc16/v1.26/support/dsPIC33F/h" -I"D:/PROGRA~2/MICROC~1/xc16/v1.26/support/generic/h" -I"D:/Program Files (x86)/MATLAB/R2015b/rtw/c/ert" -I"D:/Program Files (x86)/MATLAB/R2015b/extern/include" -I"D:/Program Files (x86)/MATLAB/R2015b/simulink/include" -I"D:/Program Files (x86)/MATLAB/R2015b/rtw/c/src" -I"D:/Program Files (x86)/MATLAB/R2015b/rtw/c/src/ext_mode/common" -I"D:/Program Files (x86)/MATLAB/R2015b/rtw/c/src/ext_mode/common" -msmart-io=1 -Wall -msfr-warn=off   -g -O3
	@${FIXDEPS} "${OBJECTDIR}/LEDBlinking_main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/LEDBlinking.o: LEDBlinking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LEDBlinking.o.d 
	@${RM} ${OBJECTDIR}/LEDBlinking.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  LEDBlinking.c  -o ${OBJECTDIR}/LEDBlinking.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/LEDBlinking.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"LEDBlinking.X" -I"." -I".." -I"D:/PROGRA~2/MICROC~1/xc16/v1.26/include" -I"D:/PROGRA~2/MICROC~1/xc16/v1.26/support/dsPIC33F/h" -I"D:/PROGRA~2/MICROC~1/xc16/v1.26/support/generic/h" -I"D:/Program Files (x86)/MATLAB/R2015b/rtw/c/ert" -I"D:/Program Files (x86)/MATLAB/R2015b/extern/include" -I"D:/Program Files (x86)/MATLAB/R2015b/simulink/include" -I"D:/Program Files (x86)/MATLAB/R2015b/rtw/c/src" -I"D:/Program Files (x86)/MATLAB/R2015b/rtw/c/src/ext_mode/common" -I"D:/Program Files (x86)/MATLAB/R2015b/rtw/c/src/ext_mode/common" -msmart-io=1 -Wall -msfr-warn=off   -g -O3
	@${FIXDEPS} "${OBJECTDIR}/LEDBlinking.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/LEDBlinking_main.o: LEDBlinking_main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LEDBlinking_main.o.d 
	@${RM} ${OBJECTDIR}/LEDBlinking_main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  LEDBlinking_main.c  -o ${OBJECTDIR}/LEDBlinking_main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/LEDBlinking_main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"LEDBlinking.X" -I"." -I".." -I"D:/PROGRA~2/MICROC~1/xc16/v1.26/include" -I"D:/PROGRA~2/MICROC~1/xc16/v1.26/support/dsPIC33F/h" -I"D:/PROGRA~2/MICROC~1/xc16/v1.26/support/generic/h" -I"D:/Program Files (x86)/MATLAB/R2015b/rtw/c/ert" -I"D:/Program Files (x86)/MATLAB/R2015b/extern/include" -I"D:/Program Files (x86)/MATLAB/R2015b/simulink/include" -I"D:/Program Files (x86)/MATLAB/R2015b/rtw/c/src" -I"D:/Program Files (x86)/MATLAB/R2015b/rtw/c/src/ext_mode/common" -I"D:/Program Files (x86)/MATLAB/R2015b/rtw/c/src/ext_mode/common" -msmart-io=1 -Wall -msfr-warn=off   -g -O3
	@${FIXDEPS} "${OBJECTDIR}/LEDBlinking_main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/LEDBlinking.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  D:/PROGRA~2/MICROC~1/xc16/v1.26/lib/libpic30-elf.a D:/PROGRA~2/MICROC~1/xc16/v1.26/lib/libm-elf.a D:/PROGRA~2/MICROC~1/xc16/v1.26/lib/libc-elf.a D:/PROGRA~2/MICROC~1/xc16/v1.26/lib/libq-elf.a D:/PROGRA~2/MICROC~1/xc16/v1.26/lib/libq-dsp-elf.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/LEDBlinking.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    D:\PROGRA~2\MICROC~1\xc16\v1.26\lib\libpic30-elf.a D:\PROGRA~2\MICROC~1\xc16\v1.26\lib\libm-elf.a D:\PROGRA~2\MICROC~1\xc16\v1.26\lib\libc-elf.a D:\PROGRA~2\MICROC~1\xc16\v1.26\lib\libq-elf.a D:\PROGRA~2\MICROC~1\xc16\v1.26\lib\libq-dsp-elf.a  -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library-path="LEDBlinking.X",--library-path=".",--library-path="..",--library-path="D:/PROGRA~2/MICROC~1/xc16/v1.26/include",--library-path="D:/PROGRA~2/MICROC~1/xc16/v1.26/support/dsPIC33F/h",--library-path="D:/PROGRA~2/MICROC~1/xc16/v1.26/support/generic/h",--library-path="D:/Program Files (x86)/MATLAB/R2015b/rtw/c/ert",--library-path="D:/Program Files (x86)/MATLAB/R2015b/extern/include",--library-path="D:/Program Files (x86)/MATLAB/R2015b/simulink/include",--library-path="D:/Program Files (x86)/MATLAB/R2015b/rtw/c/src",--library-path="D:/Program Files (x86)/MATLAB/R2015b/rtw/c/src/ext_mode/common",--library-path="D:/Program Files (x86)/MATLAB/R2015b/rtw/c/src/ext_mode/common",--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/LEDBlinking.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  D:/PROGRA~2/MICROC~1/xc16/v1.26/lib/libpic30-elf.a D:/PROGRA~2/MICROC~1/xc16/v1.26/lib/libm-elf.a D:/PROGRA~2/MICROC~1/xc16/v1.26/lib/libc-elf.a D:/PROGRA~2/MICROC~1/xc16/v1.26/lib/libq-elf.a D:/PROGRA~2/MICROC~1/xc16/v1.26/lib/libq-dsp-elf.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/LEDBlinking.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    D:\PROGRA~2\MICROC~1\xc16\v1.26\lib\libpic30-elf.a D:\PROGRA~2\MICROC~1\xc16\v1.26\lib\libm-elf.a D:\PROGRA~2\MICROC~1\xc16\v1.26\lib\libc-elf.a D:\PROGRA~2\MICROC~1\xc16\v1.26\lib\libq-elf.a D:\PROGRA~2\MICROC~1\xc16\v1.26\lib\libq-dsp-elf.a  -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library-path="LEDBlinking.X",--library-path=".",--library-path="..",--library-path="D:/PROGRA~2/MICROC~1/xc16/v1.26/include",--library-path="D:/PROGRA~2/MICROC~1/xc16/v1.26/support/dsPIC33F/h",--library-path="D:/PROGRA~2/MICROC~1/xc16/v1.26/support/generic/h",--library-path="D:/Program Files (x86)/MATLAB/R2015b/rtw/c/ert",--library-path="D:/Program Files (x86)/MATLAB/R2015b/extern/include",--library-path="D:/Program Files (x86)/MATLAB/R2015b/simulink/include",--library-path="D:/Program Files (x86)/MATLAB/R2015b/rtw/c/src",--library-path="D:/Program Files (x86)/MATLAB/R2015b/rtw/c/src/ext_mode/common",--library-path="D:/Program Files (x86)/MATLAB/R2015b/rtw/c/src/ext_mode/common",--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/LEDBlinking.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
