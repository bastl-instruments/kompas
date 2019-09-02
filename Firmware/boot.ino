//check for kompas starting up for the first time
bool isEEPROMvalid() {
  uint8_t byte1, byte2, byte3;

  byte1 = EEPROM.read(EEPROM.length() - 3);
  byte2 = EEPROM.read(EEPROM.length() - 2);
  byte3 = EEPROM.read(EEPROM.length() - 1);

  return ((byte1 == sig0) && (byte2 == sig1) && (byte3 == sig2));
}

void formatFactory() {
  //default triggerPreset
  EEPROM.update(addr, 0x1);
  
  //signature to avoid factory overwriting
  EEPROM.update(EEPROM.length() - 3, sig0);
  EEPROM.update(EEPROM.length() - 2, sig1);
  EEPROM.update(EEPROM.length() - 1, sig2);
}

//trigger length presets (ms)
void loadPreset() {
  trigPreset = EEPROM.read(addr);
    switch(trigPreset) {
      case 0:
        trigLength = 2;
        break;
      case 1:
        trigLength = 5;
        break;
      case 2:
        trigLength = 10;
        break;
      default:
        trigLength = 5;
  }
}
