/**
 * @file japaneseSubtitle.c
 * @ingroup Objects
 *
 * @brief Japanese Subtitle object
 */
#include "entity.h"
#include "menu.h"
#include "object.h"
#include "physics.h"

extern void sub_0806FB00(Entity*, u32, u32, u32);
extern bool32 sub_0806FB38(Entity*);

void JapaneseSubtitle_Type0(Entity*);
void JapaneseSubtitle_Type1(Entity*);
void JapaneseSubtitle_Type2(Entity*);
void JapaneseSubtitle_Type3(Entity*);

const u16 gUnk_08124B10[] = { 0x40, 0x58, 0x68, 0x80, 0x94, 0xA8, 0xB0, 0x0 };

void JapaneseSubtitle(Entity* this) {
    static void (*const JapaneseSubtitle_Types[])(Entity*) = {
        JapaneseSubtitle_Type0,
        JapaneseSubtitle_Type1,
        JapaneseSubtitle_Type2,
        JapaneseSubtitle_Type3,
    };

    JapaneseSubtitle_Types[this->type]((Entity*)this);
}

void JapaneseSubtitle_Type0(Entity* this) {
    Entity* pEVar3;

    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.draw = 2;
            this->frameIndex = 9;
            this->timer = 8;
            this->subtimer = 0;
            this->spriteRendering.b3 = 1;
            this->spritePriority.b0 = 4;
            this->spriteOrientation.flipY = 1;
            sub_0806FB00(this, 0xbf, 0x48, 0x1e);
            break;
        case 1:
            if ((this->subtimer < 7) && (--this->timer == 0)) {
                this->timer = 1;
                pEVar3 = CreateObject(JAPANESE_SUBTITLE, 1, this->subtimer);
                if (pEVar3 != NULL) {
                    CopyPosition(this, pEVar3);
                    pEVar3->y.HALF.HI = 0x68;
                    SortEntityBelow(this, pEVar3);
                }
                this->subtimer++;
            }

            if (sub_0806FB38(this) || (1 < gMenu.menuType)) {
                this->x.HALF.HI = 0xbf;
                this->y.HALF.HI = 0x48;
                this->frameIndex = 10;
                this->action = 2;
                while (this->subtimer < 7) {
                    pEVar3 = CreateObject(JAPANESE_SUBTITLE, 1, this->subtimer);
                    if (pEVar3 != NULL) {
                        CopyPosition(this, pEVar3);
                        pEVar3->y.HALF.HI = 0x68;
                        SortEntityBelow(this, pEVar3);
                    }
                    this->subtimer++;
                }

                pEVar3 = CreateObject(JAPANESE_SUBTITLE, 2, 0);
                if (pEVar3 != NULL) {
                    pEVar3->x.HALF.HI = 0xc4;
                    pEVar3->y.HALF.HI = 0x2c;
                    SortEntityAbove(this, pEVar3);
                }

                pEVar3 = CreateObject(JAPANESE_SUBTITLE, 3, 0);
                if (pEVar3 != NULL) {
                    pEVar3->x.HALF.HI = 0xb4;
                    pEVar3->y.HALF.HI = 0x19;
                    SortEntityAbove(this, pEVar3);
                }
            }
    }
}

void JapaneseSubtitle_Type1(Entity* this) {
    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.draw = 2;
            this->frameIndex = this->type2 + 2;
            sub_0806FB00(this, gUnk_08124B10[this->type2], 0x68, 0x14);
            break;
        case 1:
            if (sub_0806FB38(this) || 1 < gMenu.menuType) {
                this->x.HALF.HI = gUnk_08124B10[this->type2];
                this->y.HALF.HI = 0x68;
                this->spritePriority.b0 = 7 - this->type2;
                this->action = 2;
            }
            break;
    }
}

void JapaneseSubtitle_Type2(Entity* this) {
    static const u8 gUnk_08124B30[] = { 9, 10, 11, 12, 11, 10, 9, -1 };
    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.draw = 2;
        this->spriteRendering.b3 = 1;
        this->spritePriority.b0 = 0;
        this->spriteOrientation.flipY = 1;
        this->frameIndex = 11;
        this->timer = (Random() & 0x3f) + 64;
        this->subtimer = 0;
    }

    if (--this->timer == 0) {
        this->timer = 4;
        this->frameIndex = gUnk_08124B30[this->subtimer++] + 2;
        if (gUnk_08124B30[this->subtimer] == 0xff) {
            this->timer = (Random() & 0x3f) + 64;
            this->subtimer = 0;
        }
    }
}

void JapaneseSubtitle_Type3(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.draw = 2;
        this->frameIndex = 15;
    }
}
