#ifndef GUARD_GBA_EEPROM
#define GUARD_GBA_EEPROM

#include "types.h"

// error codes
#define EEPROM_OUT_OF_RANGE 0x80ff
#define EEPROM_COMPARE_FAILED 0x8000
#define EEPROM_UNSUPPORTED_TYPE 0x8080

/**
 * selects EEPROM type
 * selects 512byte on invalid argument
 *
 * @param unk_1 4 for 512 byte, 0x40 for 8k
 * @return 1 on invalid argument, 0 otherwise
 */
u16 EEPROMConfigure(u16 unk_1);
u16 EEPROMRead(u16 address, u16* data);
u16 EEPROMCompare(u16 address, const u16* data);
u16 EEPROMWrite0_8k_Check(u16 address, const u16* data);

#endif // GUARD_GBA_EEPROM
