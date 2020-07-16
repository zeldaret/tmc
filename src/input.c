#include "global.h"
#include "entity.h"

typedef struct {
    u16 field_0x0;
    u16 field_0x2;
    u16 field_0x4;
    u8 field_0x6;
    u8 field_0x7;
} Input;

void StoreKeyInput(Input *pkeyInput, u32 ioKeyInput);

extern Input gUnk_03000FF0;

void ReadKeyInput(void)
{
    u32 reg = ~*(u16*)0x04000130 & 0x3FF;
    Input* input = &gUnk_03000FF0;
    StoreKeyInput(input, reg);
}

void StoreKeyInput(Input *input, u32 ioKeyInput)
{
  u32 difference;
  u32 temp = input->field_0x0;
  
  difference = ioKeyInput & ~temp;
  input->field_0x2 = difference;
  if (ioKeyInput == temp) {
    if (--input->field_0x7 == 0) {
      input->field_0x7 = 4;
      input->field_0x4 = ioKeyInput;
    }
    else {
      input->field_0x4 = 0;
    }
  }
  else {
    input->field_0x7 = 0x14;
    input->field_0x4 = difference;
  }
  input->field_0x0 = ioKeyInput;
}