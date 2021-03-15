#include "global.h"
#include "entity.h"
#include "functions.h"
#include "room.h"
#include "flags.h"
#include "script.h"

typedef struct {
    u8 filler[4];
    u32 unk;
} struct_0806C2A0;

extern void DoExitTransition(void*);

extern void gUnk_0813AD60;
extern void gUnk_0813AD74;

void Simon(Entity* this) {
    if (this->action == 0) {
        this->action++;
        sub_0807DD50(this);
    } else {
        sub_0807DD94(this, NULL);
    }
}

void sub_0806C224(void) {
    DoExitTransition(&gUnk_0813AD60);
    gScreenTransition.transitionType = 6;
}

void Simon_CreateChest(Entity* this) {
    CreateObjectWithParent(this, 0xf, 0x43, 0);
    SetTileType(0x73, COORD_TO_TILE(this), this->collisionLayer);
    SoundReq(0x73);
}

void sub_0806C280(void) {
    SetGlobalFlag(MAROYA_WAKEUP);
    DoExitTransition(&gUnk_0813AD74);
    gScreenTransition.transitionType = 6;
}

void sub_0806C2A0(Entity* this, ScriptExecutionContext* context) {
    switch (context->intVariable) {
        case 0:
            DoFade(0xd, 4);
            break;
        case 1:
            DoFade(0xc, 4);
            break;
    }
}
