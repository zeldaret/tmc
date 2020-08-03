#include "global.h"
#include "entity.h"
#include "readKeyInput.h"

void StoreKeyInput(Input *pkeyInput, u32 ioKeyInput);

void ReadKeyInput(void)
{
    u32 reg = ~*(u16*)0x04000130 & 0x3FF;
    Input* input = &gUnk_03000FF0;
    StoreKeyInput(input, reg);
}

void StoreKeyInput(Input *input, u32 ioKeyInput)
{
  u32 difference;
  u32 temp = input->heldKeys;
  
  difference = ioKeyInput & ~temp;
  input->newKeys = difference;
  if (ioKeyInput == temp) {
    if (--input->unk7 == 0) {
      input->unk7 = 4;
      input->unk4 = ioKeyInput;
    }
    else {
      input->unk4 = 0;
    }
  }
  else {
    input->unk7 = 0x14;
    input->unk4 = difference;
  }
  input->heldKeys = ioKeyInput;
}