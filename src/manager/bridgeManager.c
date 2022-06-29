/**
 * @file bridgeManager.c
 * @ingroup Managers
 *
 * @brief Manages spawn/removal of bridges
 */
#include "manager/bridgeManager.h"
#include "flags.h"
#include "functions.h"
#include "sound.h"

void BridgeManager_Init(BridgeManager*);
void BridgeManager_Action1(BridgeManager*);
void BridgeManager_Action2(BridgeManager*);

static const u16 gUnk_08108024[] = { 0, -1, 1, 0, 0, 1, -1, 0 };
static const u16 gUnk_08108034[] = { 0, 1, -1, 0, 0, -1, 1, 0 };

void BridgeManager_Main(BridgeManager* this) {
    static void (*const BridgeManager_Actions[])(BridgeManager*) = {
        BridgeManager_Init,
        BridgeManager_Action1,
        BridgeManager_Action2,
    };
    BridgeManager_Actions[super->action](this);
}

void sub_08057CA4(BridgeManager*, u32, u32);

void BridgeManager_Init(BridgeManager* this) {
    u32 tmp;
    tmp = (super->type2 & 0x3) << 1;
    if (super->timer == 1) {
        this->unk_30 = 0x323;
    } else {
        this->unk_30 = tmp & 2 ? 0x37 : 0x36;
    }
    this->unk_28 = gUnk_08108024[tmp];
    this->unk_2a = gUnk_08108024[tmp + 1];
    this->unk_2c = gUnk_08108034[tmp];
    this->unk_2e = gUnk_08108034[tmp + 1];
    this->unk_32 = ((super->type2 >> 2) & 0xF) + 1;
    super->timer = 28;
    super->subtimer = 0;
    super->action = (super->type2 & 0x80) ? 2 : 1;
    if (super->action != 2 || !CheckFlags(this->flags))
        return;
    for (; this->unk_32; this->unk_32--) {
        sub_08057CA4(this, this->unk_28, this->unk_2a);
        sub_0807B7D8(this->unk_30, this->x | (this->y << 6), this->unk_3c);
    }
    DeleteManager(super);
}

void BridgeManager_Action1(BridgeManager* this) {
    if (--super->timer)
        return;
    super->timer = 8;
    if (CheckFlags(this->flags)) {
        if (this->unk_32 == super->subtimer)
            return;
        sub_08057CA4(this, this->unk_28, this->unk_2a);
        sub_0807B7D8(this->unk_30, this->x | (this->y << 6), this->unk_3c);
        super->subtimer++;
        SoundReq(SFX_HEART_GET);
    } else {
        if (!super->subtimer)
            return;
        RestorePrevTileEntity(this->x | (this->y << 6), this->unk_3c);
        sub_08057CA4(this, this->unk_2c, this->unk_2e);
        super->subtimer--;
        SoundReq(SFX_HEART_GET);
    }
}

void BridgeManager_Action2(BridgeManager* this) {
    if (super->subAction == 0) {
        if (!CheckFlags(this->flags))
            return;
        super->subAction++;
    } else {
        if (--super->timer)
            return;
        super->timer = 8;
        if (this->unk_32 != super->subtimer) {
            sub_08057CA4(this, this->unk_28, this->unk_2a);
            sub_0807B7D8(this->unk_30, this->x | (this->y << 6), this->unk_3c);
            super->subtimer++;
            SoundReq(SFX_HEART_GET);
        } else {
            if (this->unk_30 != 0x323) {
                SoundReq(SFX_SECRET);
            }
            DeleteManager(super);
        }
    }
}

void sub_08057CA4(BridgeManager* this, u32 xOffset, u32 yOffset) {
    this->x += xOffset;
    this->y += yOffset;
}
