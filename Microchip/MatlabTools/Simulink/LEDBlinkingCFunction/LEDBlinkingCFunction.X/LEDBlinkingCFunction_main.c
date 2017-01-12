/*
 * -------------------------------------------------------------------
 * MPLAB 16-Bit Device Blocks for Simulink v3.38.
 *
 *   Product Page:  http://www.microchip.com/SimulinkBlocks
 *           Forum: http://www.microchip.com/forums/f192.aspx
 *           Wiki:  http://microchip.wikidot.com/simulink:start
 * -------------------------------------------------------------------
 * File: LEDBlinkingCFunction_main.c
 *
 * Code generated for Simulink model 'LEDBlinkingCFunction'.
 *
 * Model version                  : 1.30
 * Simulink Coder version         : 8.9 (R2015b) 13-Aug-2015
 * C/C++ source code generated on : Sun Sep 04 22:33:18 2016
 */

#define MCHP_isMainFile
#include "LEDBlinkingCFunction.h"

/* Microchip Global Variables */
/* Set Fuses Options */
_FOSCSEL( FNOSC_FRC ) ;
_FOSC( FCKSM_CSDCMD ) ;
_FWDT( FWDTEN_OFF ) ;
_FICD( JTAGEN_OFF ) ;

/* Scheduler */
void __attribute__((__interrupt__,__auto_psv__)) _T1Interrupt(void)
{
  {
    struct {
      unsigned int Flags0 : 1;
      unsigned int Flags1 : 1;
    } static volatile Overrun;

    struct {
      unsigned int Flags0 : 1;
      unsigned int Flags1 : 1;
    } static volatile event;

    static int_T taskCounter[2] = { 0, 0 };

    _T1IF = 0;                         /* Re-enable interrupt */

    /* Check subrate overrun, set rates that need to run this time step*/
    if (taskCounter[1] == 0) {         /* task dropped on overload */
      event.Flags1 = 1U;
    }

    /* Update task internal counters */
    taskCounter[1]++;
    if (taskCounter[1] == 500) {
      taskCounter[1]= 0;
    }

    /* Step the model for base rate */
    /* Start profiling task 0 */
    LEDBlinkingCFunction_step0();

    /* Get model outputs here */
    _T1IF = 0;                         /* Re-enable interrupt */

    /* Stop profiling task 0 */
    if (_T1IF ) {
      return;                          /* Will re-enter into the interrupt */
    }

    /* Re-Enable Interrupt. IPL value is 2 at this point */
    _IPL0 = 1;                         /* Set IPL to 1 (interrupt priority is 2) */
    _IPL1 = 0;

    /* Step the model for any subrate */
    /* Handle Task 1 */
    if (Overrun.Flags1) {
      return;                          /* Priority to higher rate steps interrupted */
    }

    if (event.Flags1) {
      Overrun.Flags1 = 1;
      do {
        /* Start profiling task 1 */
        event.Flags1 = 0U;
        LEDBlinkingCFunction_step1();

        /* Get model outputs here */
        ;                              /* Execute task tid 1 */

        /* Stop profiling task 1 */
      } while (event.Flags1);

      Overrun.Flags1 = 0U;
    }

    /* Disable Interrupt. IPL value is 1 at this point */
    _IPL1 = 1;                         /* Set IPL to 2 (interrupt priority was 1) */
    _IPL0 = 0;
  }
}

int main()
{
  /* Initialize model */
  /* Configure Pins as Analog or Digital */
  AD1PCFGL = 32;

  /* Configure Remappables Pins */

  /* Configure Digitals I/O directions */
  TRISB = 0xFEF7;

  /* Initialize model */
  LEDBlinkingCFunction_initialize();

  /* Configure Timers */
  /* --- TIMER 1 --- This timer is enabled at end of configuration functions. */
  _T1IP = 2;                           /* Set timer Interrupt Priority */
  _T1IF = 0;                           /* Reset pending Interrupt */
  _T1IE = 1;                           /* Enable Timer Interrupt. */
  PR1 = 0x0E64;                        /* Period */

  /* Enable Time-step */
  TMR1 = 0x0E63;
  T1CON = 0x8000;                      /* Timer 1 is the source trigger for the model Time-step */

  /* Main Loop */
  for (;;) ;
}                                      /* end of main() */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
