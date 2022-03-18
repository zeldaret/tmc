#define NENT_DEPRECATED
#include "entity.h"
#include "script.h"
#include "structures.h"
#include "functions.h"
#include "message.h"
#include "object.h"
#include "npc.h"
#include "hitbox.h"

typedef struct {
    Entity base;
    Entity* ent1;
    Entity* ent2;
    Entity* ent3;
    u16 unk74;
    u16 unk76;
} PicolyteBottleEntity;

extern ScreenTransitionData gUnk_0813AD4C;

void sub_0806E014(PicolyteBottleEntity* this);
void sub_0806E0DC(PicolyteBottleEntity* this);
void PicolyteBottle_Init(PicolyteBottleEntity* this);
void PicolyteBottle_Action1(PicolyteBottleEntity* this);
void PicolyteBottle_Action2(PicolyteBottleEntity* this);
void nullsub_111(PicolyteBottleEntity* this);

extern void sub_08078828(Entity*);

void PicolyteBottle(Entity* this) {
    static void (*const PicolyteBottle_Actions[])(PicolyteBottleEntity*) = {
        PicolyteBottle_Init,
        PicolyteBottle_Action1,
        PicolyteBottle_Action2,
        nullsub_111,
    };

    PicolyteBottle_Actions[this->action]((PicolyteBottleEntity*)this);
    if (this->type == 0) {
        gPlayerState.mobility |= 0x80;
    }
}

void PicolyteBottle_Init(PicolyteBottleEntity* this) {
    Entity* npc;

    if (super->type == 0) {
        super->action = 1;
        npc = CreateNPC(PICOLYTE_BOTTLE, 1, 0);
        this->ent1 = npc;
        npc->parent = super;
        npc = CreateNPC(PICOLYTE_BOTTLE, 1, 1);
        this->ent2 = npc;
        npc->parent = super;
        npc = CreateNPC(PICOLYTE_BOTTLE, 1, 2);
        this->ent3 = npc;
        npc->parent = super;
        this->unk74 = 0;
        this->unk76 = 10;
        gRoomTransition.field_0x6 = 10;
        sub_0806E014(this);
        sub_0807DD50(super);
    } else {
        super->hitbox = (Hitbox*)&gHitbox_0;
        super->collisionLayer = 1;
        sub_0806E0DC(this);
    }
}

void PicolyteBottle_Action1(PicolyteBottleEntity* this) {
    sub_0807DD94(super, 0);
    if (super->actionDelay != 0xff) {
        if (super->damage != 0) {
            this->ent3->actionDelay++;
        }
        this->ent1->actionDelay++;
        this->ent2->actionDelay++;
        super->actionDelay = 0xff;
        SetRoomFlag(0);
    }
}

void PicolyteBottle_Action2(PicolyteBottleEntity* this) {
    Entity* obj;

    if (super->interactType != 0) {
        super->interactType = 0;
        super->parent->actionDelay = super->type2;
        super->parent->type2 = super->field_0xf;
    } else {
        if (super->actionDelay != 0) {
            super->actionDelay = 0;
            obj = CreateObject(OBJECT_35, 2, super->field_0xf);
            if (obj != NULL) {
                obj->parent = super;
                super->child = obj;
                CopyPosition(super, obj);
            }
            sub_080788E0(super);
            sub_0807B7D8(0x74, this->unk76, 2);
        }
    }
}

void nullsub_111(PicolyteBottleEntity* this) {
}

void sub_0806E014(PicolyteBottleEntity* this) {
    static const u8 gUnk_081142CC[] = { 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0 };
    static const u8 gUnk_081142DC[] = { 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0,
                                        1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0 };
    u32 uVar1;
    int iVar2;
    const u8* ptr;

    uVar1 = (Random() & 0x70) >> 4;
    super->type2 = 0xff;
    super->actionDelay = 0xff;
    if (CheckLocalFlag(0x93) == 0) {
        super->damage = 0;
        iVar2 = uVar1 * 2;
        ptr = &gUnk_081142CC[iVar2];
        this->ent1->field_0xf = ptr[0];
        PositionRelative(super, this->ent1, 0x480000, 0x480000);
        this->ent2->field_0xf = ptr[1];
        PositionRelative(super, this->ent2, 0x680000, 0x480000);
        this->ent3->field_0xf = 0xff;
        CopyPosition(super, this->ent3);
    } else {
        super->damage = 1;
        iVar2 = uVar1 * 4;
        ptr = &gUnk_081142DC[iVar2];
        this->ent1->field_0xf = ptr[0];
        PositionRelative(super, this->ent1, 0x380000, 0x480000);
        this->ent2->field_0xf = ptr[1];
        PositionRelative(super, this->ent2, 0x580000, 0x480000);
        this->ent3->field_0xf = ptr[2];
        PositionRelative(super, this->ent3, 0x780000, 0x480000);
    }
}

void sub_0806E0DC(PicolyteBottleEntity* this) {
    super->actionDelay = 0;
    if (super->field_0xf != 0xff) {
        super->action = 2;
        this->unk76 = TILE(super->x.HALF.HI, super->y.HALF.HI);
        if (super->child != NULL) {
            DeleteEntity(super->child);
            super->child = NULL;
        }
        sub_08078828(super);
        sub_0807B7D8(0x73, this->unk76, 2);
    } else {
        super->action = 3;
    }
}

void sub_0806E140(PicolyteBottleEntity* this, ScriptExecutionContext* context) {
    u32 uVar1, uVar2;

    if (super->type2) {
        context->condition = 1;
        this->unk74++;
        uVar1 = this->unk76;
        if (super->damage == 0) {
            uVar2 = uVar1 << 1;
        } else {
            uVar2 = uVar1 * 3;
        }
        this->unk76 = uVar2;
        if ((this->unk76) >= 1000) {
            this->unk76 = 999;
            context->condition = 0;
            MessageFromTarget(0x421b);
        } else {
            MessageFromTarget(0x4218);
            gMessage.rupees = this->unk76;
        }
    } else {
        context->condition = 0;
        this->unk74 = 0;
        this->unk76 = 0;
        MessageFromTarget(0x421c);
    }
    gRoomTransition.field_0x6 = this->unk76;
    gActiveScriptInfo.flags |= 1;
}

void sub_0806E1E0(PicolyteBottleEntity* this) {
    sub_0806E014(this);
    sub_0806E0DC((PicolyteBottleEntity*)this->ent1);
    sub_0806E0DC((PicolyteBottleEntity*)this->ent2);
    sub_0806E0DC((PicolyteBottleEntity*)this->ent3);
}

void sub_0806E1FC(PicolyteBottleEntity* this) {
    DoExitTransition(&gUnk_0813AD4C);
}

void sub_0806E20C(void) {
    if (gRoomTransition.field_0x6 != 0) {
        MessageFromTarget(0x421f);
        gMessage.rupees = gRoomTransition.field_0x6;
    } else {
        MessageFromTarget(0x4220);
    }
}

void sub_0806E23C(void) {
    if (gRoomTransition.field_0x6 != 0) {
        ModRupees(gRoomTransition.field_0x6);
    }
}

void sub_0806E250(PicolyteBottleEntity* this, ScriptExecutionContext* context) {
    context->condition = 0;
    if (CheckKinstoneFused(0x31) != 0) {
        context->condition = 1;
    }
    gActiveScriptInfo.flags |= 1;
}
