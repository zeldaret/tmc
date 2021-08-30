#include "manager.h"
#include "structures.h"
#include "functions.h"

typedef struct {
    Manager manager;
    u16 field_0x20;
} Manager34;

extern void (*const gUnk_08108D8C[])(Manager34*);
void sub_0805DBF0(Manager34*);

extern ScreenTransitionData gUnk_0813AC48;

void Manager34_Main(Manager34* this) {
    gUnk_08108D8C[this->manager.action](this);
    sub_0805DBF0(this);
}

void sub_0805DBB4(Manager34* this) {
    this->manager.action = 1;
    this->field_0x20 = gScreenTransition.filler[0] * 0x3c;
}

void sub_0805DBCC(Manager34* this) {
    if (((this->manager.parent)->next == NULL) && (this->manager.action = 2, 0x12d < this->field_0x20)) {
        this->field_0x20 = 0x12d;
    }
}

void nullsub_498(Manager34* this) {
}

ASM_FUNC("asm/non_matching/manager34/sub_0805DBF0.inc", void sub_0805DBF0(Manager34* this))

void sub_0805DC70(Manager34* this) {
    sub_0805E5A8();
    DoExitTransition(&gUnk_0813AC48);
}
