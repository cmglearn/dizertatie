/*
 * -------------------------------------------------------------------
 * MPLAB 16-Bit Device Blocks for Simulink v3.38.
 *
 *   Product Page:  http://www.microchip.com/SimulinkBlocks
 *           Forum: http://www.microchip.com/forums/f192.aspx
 *           Wiki:  http://microchip.wikidot.com/simulink:start
 * -------------------------------------------------------------------
 * File: LEDBlinkingCFunction.c
 *
 * Code generated for Simulink model 'LEDBlinkingCFunction'.
 *
 * Model version                  : 1.30
 * Simulink Coder version         : 8.9 (R2015b) 13-Aug-2015
 * C/C++ source code generated on : Sun Sep 04 22:33:18 2016
 */

#include "LEDBlinkingCFunction.h"

/* Block signals and states (auto storage) */
DW rtDW;

/* Real-time model */
RT_MODEL rtM_;
RT_MODEL *const rtM = &rtM_;

/* C Function Call declare function as extern */
extern unsigned char delay(unsigned char n);

/* Model step function for TID0 */
void LEDBlinkingCFunction_step0(void)  /* Sample time: [0.001s, 0.0s] */
{
  /* (no output/update code required) */
}

/* Model step function for TID1 */
void LEDBlinkingCFunction_step1(void)  /* Sample time: [0.5s, 0.0s] */
{
  /* local block i/o variables */
  boolean_T rtb_DataTypeConversion[2];
  uint8_T rtb_FixPtSum1;

  /* UnitDelay: '<S1>/Output' */
  rtDW.Output = rtDW.Output_DSTATE;

  /* S-Function (MCHP_C_function_Call): '<Root>/C Function Call' */
  rtDW.CFunctionCall = delay(
    rtDW.Output
    );

  /* DataTypeConversion: '<Root>/Data Type Conversion' */
  rtb_DataTypeConversion[0] = (((uint8_T)0U) != 0);
  rtb_DataTypeConversion[1] = (rtDW.CFunctionCall != 0);

  /* S-Function (MCHP_Digital_Output_Write): '<S2>/Digital Output Write' */
  LATBbits.LATB3 = rtb_DataTypeConversion[0];
  LATBbits.LATB8 = rtb_DataTypeConversion[1];

  /* Sum: '<S3>/FixPt Sum1' incorporates:
   *  Constant: '<S3>/FixPt Constant'
   */
  rtb_FixPtSum1 = (uint8_T)(rtDW.Output + 1U);

  /* Switch: '<S4>/FixPt Switch' */
  if (rtb_FixPtSum1 > 1) {
    /* Update for UnitDelay: '<S1>/Output' incorporates:
     *  Constant: '<S4>/Constant'
     */
    rtDW.Output_DSTATE = 0U;
  } else {
    /* Update for UnitDelay: '<S1>/Output' */
    rtDW.Output_DSTATE = rtb_FixPtSum1;
  }

  /* End of Switch: '<S4>/FixPt Switch' */
}

/* Model initialize function */
void LEDBlinkingCFunction_initialize(void)
{
  /* S-Function "Microchip MASTER" initialization Block: <Root>/Microchip Master */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
