#include "entity.h"
#include "script.h"
#include "structures.h"
#include "functions.h"
#include "textbox.h"
#include "object.h"

extern ScreenTransitionData gUnk_0813AD4C;

void sub_0806E014(Entity* this);
void sub_0806E0DC(Entity* this);

extern void (*const gUnk_081142BC[])(Entity*);

extern void sub_08078828(Entity*);

extern Hitbox gHitbox_0;

void PicolyteBottle(Entity* this) {
    gUnk_081142BC[this->action](this);
    if (this->type == 0) {
        gPlayerState.field_0x1a[0] |= 0x80;
    }
}

void sub_0806DF00(Entity* this) {
    Entity* npc;

    if (this->type == 0) {
        this->action = 1;
        npc = CreateNPC(0x51, 1, 0);
        *(Entity**)&this->field_0x68 = npc;
        npc->parent = this;
        npc = CreateNPC(0x51, 1, 1);
        *(Entity**)&this->field_0x6c = npc;
        npc->parent = this;
        npc = CreateNPC(0x51, 1, 2);
        *(Entity**)&this->field_0x70 = npc;
        npc->parent = this;
        this->field_0x74.HWORD = 0;
        this->field_0x76.HWORD = 10;
        gScreenTransition.field_0x6 = 10;
        sub_0806E014(this);
        sub_0807DD50(this);
    } else {
        this->hitbox = &gHitbox_0;
        this->collisionLayer = 1;
        sub_0806E0DC(this);
    }
}

ASM_FUNC("asm/non_matching/picolyteBottles/sub_0806DF74.inc", void sub_0806DF74(Entity* this))

void sub_0806DFB4(Entity* this) {
    Entity* obj;

    if (this->interactType != 0) {
        this->interactType = 0;
        this->parent->actionDelay = this->type2;
        this->parent->type2 = this->field_0xf;
    } else {
        if (this->actionDelay != 0) {
            this->actionDelay = 0;
            obj = CreateObject(OBJECT_35, 2, this->field_0xf);
            if (obj != NULL) {
                obj->parent = this;
                this->child = obj;
                CopyPosition(this, obj);
            }
            sub_080788E0(this);
            sub_0807B7D8(0x74, this->field_0x76.HWORD, 2);
        }
    }
}

void nullsub_111(void) {
}

ASM_FUNC("asm/non_matching/picolyteBottles/sub_0806E014.inc", void sub_0806E014(Entity* this))

void sub_0806E0DC(Entity* this) {
    this->actionDelay = 0;
    if (this->field_0xf != 0xff) {
        this->action = 2;
        this->field_0x76.HWORD = TILE(this->x.HALF.HI, this->y.HALF.HI);
        if (this->child != NULL) {
            DeleteEntity(this->child);
            this->child = NULL;
        }
        sub_08078828(this);
        sub_0807B7D8(0x73, this->field_0x76.HWORD, 2);
    } else {
        this->action = 3;
    }
}

ASM_FUNC("asm/non_matching/picolyteBottles/sub_0806E140.inc",
         void sub_0806E140(Entity* this, ScriptExecutionContext* context))

void sub_0806E1E0(Entity* this) {
    sub_0806E014(this);
    sub_0806E0DC(*(Entity**)&this->field_0x68);
    sub_0806E0DC(*(Entity**)&this->field_0x6c);
    sub_0806E0DC(*(Entity**)&this->field_0x70);
}

void sub_0806E1FC(Entity* this) {
    DoExitTransition(&gUnk_0813AD4C);
}

void sub_0806E20C(void) {
    if (gScreenTransition.field_0x6 != 0) {
        MessageFromTarget(0x421f);
        gMessage.field_0x10 = gScreenTransition.field_0x6;
    } else {
        MessageFromTarget(0x4220);
    }
}

void sub_0806E23C(void) {
    if (gScreenTransition.field_0x6 != 0) {
        ModRupees(gScreenTransition.field_0x6);
    }
}

void sub_0806E250(Entity* this, ScriptExecutionContext* context) {
    context->condition = 0;
    if (CheckKinstoneFused(0x31) != 0) {
        context->condition = 1;
    }
    gActiveScriptInfo.flags |= 1;
}
