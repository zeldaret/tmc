#include "global.h"
#include "entity.h"
#include "player.h"
#include "manager.h"
#include "flags.h"
#include "area.h"

void sub_08058398(ManagerA*);
void sub_080583EC(ManagerA*);
void sub_08058408(ManagerA*);
void sub_08058514(ManagerA*);
void sub_080585B0(ManagerA*);

void (*const gUnk_081081F4[])(ManagerA*) = { sub_08058398, sub_080583EC, sub_08058408, sub_08058514, sub_080585B0 };

void sub_08058380(ManagerA* this) {
    gUnk_081081F4[this->manager.action](this);
}

extern void sub_0805E3A0(Manager*, u32);

void sub_08058398(ManagerA* this) {

    if (CheckFlags(this->unk_3c) != 0) {
        DeleteThisEntity();
    }
    this->unk_24 = this->unk_3a << 3;
    this->unk_26 = this->unk_3b << 3;
    this->unk_20 = this->unk_24 + (this->unk_38 << 4);
    this->unk_22 = this->unk_26 + (this->unk_39 << 4);
    sub_0805E3A0(&this->manager, 0x06);
    if (this->unk_3e == 0) {
        this->manager.action = 2;
    } else {
        this->manager.action = 1;
    }
}

void sub_08058408(ManagerA*);

void sub_080583EC(ManagerA* this) {
    if (CheckFlags(this->unk_3e) != 0) {
        this->manager.action = 2;
        sub_08058408(this);
    }
}

extern u32 CheckPlayerInRegion(u32, u32, u32, u32);
extern void sub_0805E544(void);
extern void sub_08078A90(u32);
extern void sub_08078AA8(u32, u32);
extern void sub_080186C0(u16);
extern void sub_08078B48(void);

u32 sub_0805848C(ManagerA*);
void sub_080585DC(ManagerA*);

void sub_08058408(ManagerA* this) {
    u32 tmp2;
    tmp2 = (gPlayerState.flags.all & 0x08);
    if (tmp2 != 0)
        return;
    if (!CheckPlayerInRegion(this->unk_20, this->unk_22, this->unk_24, this->unk_26))
        return;
    switch (this->manager.unk_0a) {
        case 1:
            return;
        case 2:
            sub_080585DC(this);
            if ((gPlayerState.flags.all & 0x80) == 0)
                return;
        case 0:
        default:
            sub_080585DC(this);
            if (sub_0805848C(this) == 0)
                return;
            sub_08078A90(3);
            sub_08078B48();
            sub_0805E544();
            this->manager.action = 3;
            this->manager.unk_0d = 0;
            this->manager.unk_0e = 0x1e;
            return;
        case 3:
            this->manager.action = 4;
            this->manager.unk_0d = tmp2;
            sub_080186C0(this->unk_36);
            return;
    }
}

u32 sub_0805848C(ManagerA* this) {
    switch (gPlayerState.field_0xa8 - 5) {
        case 0:
        case 2:
        case 3:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
        case 22:
        case 23:
            return 0;
        case 1:
        case 4:
        case 20:
        case 21:
        default:
            return 1;
    }
}

extern void UnfreezeTime(void);

void sub_08058514(ManagerA* this) {
    switch (this->manager.unk_0d) {
        case 1:
            if ((gPlayerState.flags.all & 0x1235) != 0)
                return;
            if (gPlayerEntity.height.HALF.HI != 0)
                return;
            gPlayerState.jumpStatus = 0;
            sub_08078AA8(this->unk_36, this->unk_35);
            this->manager.unk_0d++;
            this->manager.unk_0e = 0x1E;
            return;
        case 0:
        case 2:
            if (((--this->manager.unk_0e) << 0x18) == 0) {
                this->manager.unk_0d++;
            }
            return;
        case 3:
            if (gPlayerEntity.action != 1 && gPlayerEntity.action != 9)
                return;
            gPlayerState.field_0x8b = 1;
            UnfreezeTime();
            SetFlag(this->unk_3c);
            DeleteThisEntity();
            return;
        default:
            return;
    }
}

extern void sub_0801855C(void);

void sub_080585B0(ManagerA* this) {
    if (gArea.filler4[0] != 0xFF) {
        DeleteThisEntity();
    }
    if (CheckFlags(this->unk_3c)) {
        sub_0801855C();
        DeleteThisEntity();
    }
}
void sub_080585DC(ManagerA* this) {
    if (CheckFlags(this->unk_3c)) {
        DeleteThisEntity();
    }
}
