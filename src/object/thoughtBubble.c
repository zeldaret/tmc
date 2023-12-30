/**
 * @file thoughtBubble.c
 * @ingroup Objects
 *
 * @brief Thought Bubble object
 */
#include "entity.h"
#include "sound.h"

void ThoughtBubble_Init(Entity*);
void ThoughtBubble_Update(Entity*);

static const u16 ThoughtBubble_SFX[] = {
    SFX_METAL_CLINK,
    SFX_F3,
    SFX_NONE,
    SFX_NONE,
};

void ThoughtBubble(Entity* this) {
    static void (*const ThoughtBubble_Actions[])(Entity*) = {
        ThoughtBubble_Init,
        ThoughtBubble_Update,
    };
    ThoughtBubble_Actions[this->action](this);
}

void ThoughtBubble_Init(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    if (this->timer == 0) {
        this->timer = 45;
    }
    this->spriteOrientation.flipY = 1;
    InitializeAnimation(this, this->type2);
    SoundReq(ThoughtBubble_SFX[this->type2]);
}

void ThoughtBubble_Update(Entity* this) {
    if (this->parent != NULL) {
        this->x.HALF.HI = this->parent->x.HALF.HI;
        this->y.HALF.HI = this->parent->y.HALF.HI;
        this->z.HALF.HI = this->parent->z.HALF.HI;
    }
    if (this->type2 != 2) {
        if (--this->timer == 0) {
            DeleteThisEntity();
        }
    }
    GetNextFrame(this);
}
