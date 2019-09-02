#ifndef INC_GUARD_DEFINITIONS
#define INC_GUARD_DEFINITIONS
#include <stdint.h>

bool bootMode;

//trigger length and input debounce tollerance (No of jumps)
uint8_t trigLength;
#define unbounce 5

//EEPROM preset address
const uint8_t addr = 0x0;
uint8_t trigPreset;

//EEPROM Format Signatures
uint8_t sig0 = 0x0;
uint8_t sig1 = 0x5A;
uint8_t sig2 = 0x11;

#endif
