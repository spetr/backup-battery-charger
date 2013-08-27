/******************************************************************************/
/* Files to Include                                                           */
/******************************************************************************/

#if defined(__XC)
    #include <xc.h>         /* XC8 General Include File */
#elif defined(HI_TECH_C)
    #include <htc.h>        /* HiTech General Include File */
#endif

#include <stdint.h>         /* For uint8_t definition */
#include <stdbool.h>        /* For true/false definition */

#include "user.h"

/******************************************************************************/
/* User Functions                                                             */
/******************************************************************************/

/* <Initialize variables in user.h and insert code for user algorithms.> */

void InitApp(void)
{
  // Initialize ports
  OPTION_REG = 0b00000000;
  CMCON = 0b00000111; // Shut off the Comparator
  VRCON = 0b00000000; // Shut off the Voltage Reference
  GPIO = 0b00000000; // Make all pins 0
  ANSEL = 0b01110011; // AN0, AN1 analog input, AD clock from internal oscillator
  TRISIO = 0b00001011; // GP2, GP4, GP5 is output, all others are input
  WPU = 0b00110100; // Enable pull up on GP2, GP4, GP5

//  IOCB = 0;
}

//Function ADC_Read
unsigned int ADC_Read(unsigned char channel)
{
  unsigned char ADCL=0;
  unsigned char ADCH=0;
  unsigned int Value = 0;

  ADCON0bits.CHS = channel;
  ADCON0bits.ADFM = 1;
  _delay(200);
  ADCON0bits.ADON=1;  //switch on the adc module
  _delay(200);
  ADCON0bits.GO_nDONE=1;  //Start conversion
  while(ADCON0bits.GO_nDONE); //wait for the conversion to finish
  ADCON0bits.ADON=0;  //switch off adc
  ADCH=ADRESH;
  ADCL=ADRESL;
  Value = (int)(ADCH*256) + ADCL;
  return Value;
}