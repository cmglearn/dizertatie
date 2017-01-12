/*
 * -------------------------------------------------------------------
 * MPLAB 16-Bit Device Blocks for Simulink v3.38.
 *
 *   Product Page:  http://www.microchip.com/SimulinkBlocks
 *           Forum: http://www.microchip.com/forums/f192.aspx
 *           Wiki:  http://microchip.wikidot.com/simulink:start
 * -------------------------------------------------------------------
 * File: LEDBlinking.c
 *
 * Code generated for Simulink model 'LEDBlinking'.
 *
 * Model version                  : 1.9
 * Simulink Coder version         : 8.9 (R2015b) 13-Aug-2015
 * C/C++ source code generated on : Sat Sep 03 22:53:00 2016
 */

#include "LEDBlinking.h"

/* Block signals and states (auto storage) */
DW rtDW;

/* Real-time model */
RT_MODEL rtM_;
RT_MODEL *const rtM = &rtM_;

/* Model step function for TID0 */
void LEDBlinking_step0(void)           /* Sample time: [0.001s, 0.0s] */
{
  /* (no output/update code required) */
}

/* Model step function for TID1 */
void LEDBlinking_step1(void)           /* Sample time: [0.5s, 0.0s] */
{
  /* local block i/o variables */
  boolean_T rtb_DataTypeConversion;
  uint8_T rtb_FixPtSum1;

  /* DataTypeConversion: '<Root>/Data Type Conversion' incorporates:
   *  UnitDelay: '<S1>/Output'
   */
  rtb_DataTypeConversion = (rtDW.Output_DSTATE != 0);

  /* S-Function (MCHP_Digital_Output_Write): '<S2>/Digital Output Write' */
  LATBbits.LATB3 = rtb_DataTypeConversion;
  LATBbits.LATB8 = rtb_DataTypeConversion;

  /* Sum: '<S3>/FixPt Sum1' incorporates:
   *  Constant: '<S3>/FixPt Constant'
   *  UnitDelay: '<S1>/Output'
   */
  rtb_FixPtSum1 = (uint8_T)(rtDW.Output_DSTATE + 1U);

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
void LEDBlinking_initialize(void)
{
  /* S-Function "Microchip MASTER" initialization Block: <Root>/Microchip Master */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
