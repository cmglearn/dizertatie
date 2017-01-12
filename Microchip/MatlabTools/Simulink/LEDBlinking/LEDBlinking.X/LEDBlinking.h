/*
 * -------------------------------------------------------------------
 * MPLAB 16-Bit Device Blocks for Simulink v3.38.
 *
 *   Product Page:  http://www.microchip.com/SimulinkBlocks
 *           Forum: http://www.microchip.com/forums/f192.aspx
 *           Wiki:  http://microchip.wikidot.com/simulink:start
 * -------------------------------------------------------------------
 * File: LEDBlinking.h
 *
 * Code generated for Simulink model 'LEDBlinking'.
 *
 * Model version                  : 1.9
 * Simulink Coder version         : 8.9 (R2015b) 13-Aug-2015
 * C/C++ source code generated on : Sat Sep 03 22:53:00 2016
 */

#ifndef RTW_HEADER_LEDBlinking_h_
#define RTW_HEADER_LEDBlinking_h_
#include <stddef.h>
#ifndef LEDBlinking_COMMON_INCLUDES_
# define LEDBlinking_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* LEDBlinking_COMMON_INCLUDES_ */

#define FCY                            3.685E+6

/* Include for pic 33F */
#include <p33Fxxxx.h>
#include <libpic30.h>                  /* For possible use with C function Call block (delay_ms or delay_us functions might be used by few peripherals) */
#include <libq.h>                      /* For possible use with C function Call block */

/* Macros for accessing real-time model data structure */
#ifndef rtmCounterLimit
# define rtmCounterLimit(rtm, idx)     ((rtm)->Timing.TaskCounters.cLimit[(idx)])
#endif

#ifndef rtmStepTask
# define rtmStepTask(rtm, idx)         ((rtm)->Timing.TaskCounters.TID[(idx)] == 0)
#endif

#ifndef rtmTaskCounter
# define rtmTaskCounter(rtm, idx)      ((rtm)->Timing.TaskCounters.TID[(idx)])
#endif

#define LEDBlinking_M                  (rtM)

/* Forward declaration for rtModel */
typedef struct tag_RTM RT_MODEL;

/* Block signals and states (auto storage) for system '<Root>' */
typedef struct {
  uint8_T Output_DSTATE;               /* '<S1>/Output' */
} DW;

/* Real-time Model Data Structure */
struct tag_RTM {
  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    struct {
      uint16_T TID[2];
      uint16_T cLimit[2];
    } TaskCounters;
  } Timing;
};

/* Block signals and states (auto storage) */
extern DW rtDW;

/* Model entry point functions */
extern void LEDBlinking_initialize(void);
extern void LEDBlinking_step0(void);
extern void LEDBlinking_step1(void);

/* Real-time Model object */
extern RT_MODEL *const rtM;

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<S1>/Data Type Propagation' : Unused code path elimination
 * Block '<S3>/FixPt Data Type Duplicate' : Unused code path elimination
 * Block '<S4>/FixPt Data Type Duplicate1' : Unused code path elimination
 */

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'LEDBlinking'
 * '<S1>'   : 'LEDBlinking/Counter Limited'
 * '<S2>'   : 'LEDBlinking/Digital Output'
 * '<S3>'   : 'LEDBlinking/Counter Limited/Increment Real World'
 * '<S4>'   : 'LEDBlinking/Counter Limited/Wrap To Zero'
 */
#endif                                 /* RTW_HEADER_LEDBlinking_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
