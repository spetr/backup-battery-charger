/******************************************************************************/
/* Files to Include                                                           */
/******************************************************************************/

#if defined(__XC)
    #include <xc.h>         /* XC8 General Include File */
#elif defined(HI_TECH_C)
    #include <htc.h>        /* HiTech General Include File */
#endif

#define _XTAL_FREQ 4000000

#include <stdint.h>        /* For uint8_t definition */
#include <stdbool.h>       /* For true/false definition */

#include "system.h"        /* System funct/params, like osc/peripheral config */
#include "user.h"          /* User funct/params, such as InitApp */

/******************************************************************************/
/* User Global Variable Declaration                                           */
/******************************************************************************/

unsigned int VoltageLow = 0;
unsigned int VoltageHigh = 0;
unsigned int tmp = 0;
bool Charging = false ;

/******************************************************************************/
/* Main Program                                                               */
/******************************************************************************/

void main(void)
{
  /* Configure the oscillator for the device */
  ConfigureOscillator();

  /* Initialize I/O and Peripherals for application */
  InitApp();

  while(1)
  {
    VoltageLow = ADC_Read(1);
    _delay(1000);
    VoltageHigh = ADC_Read(0);
    _delay(1000);
    VoltageLow = VoltageLow + ADC_Read(1);
    _delay(1000);
    VoltageHigh = VoltageHigh + ADC_Read(0);
    _delay(1000);
    VoltageLow = VoltageLow + ADC_Read(1);
    _delay(1000);
    VoltageHigh = VoltageHigh + ADC_Read(0);
    _delay(1000);
    VoltageLow = VoltageLow + ADC_Read(1);
    _delay(1000);
    VoltageHigh = VoltageHigh + ADC_Read(0);
    _delay(1000);
    VoltageLow = VoltageLow + ADC_Read(1);
    _delay(1000);
    VoltageHigh = VoltageHigh + ADC_Read(0);
    _delay(1000);
    if(VoltageHigh > VoltageLow) {
        tmp = VoltageHigh;
        VoltageHigh = VoltageLow;
        VoltageLow = tmp;
    }
    // Pokud to vetsi napeti klesne, zacnem nabijet
    if(Charging == false && VoltageLow < 2560) { // Soucet peti mereni 2.5V
      Charging = true;
      GP2=1;
      GP5=1;
      __delay_ms(500);
      GP4=1;
    }
    // Pokud to mensi napeti stoupne, prestanem nabijet
    if(Charging == true && VoltageHigh > 2560) { // Soucet peti mereni 2.5V
      Charging = false;
      GP2=0;
      GP4=0;
      __delay_ms(500);
      GP5=0;
    }
  }
}

