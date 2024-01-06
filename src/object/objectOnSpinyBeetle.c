/**
 * @file objectOnSpinyBeetle.c
 * @ingroup Objects
 *
 * @brief Object on Spiny Beetle object
 */
#include "functions.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
} ObjectOnSpinyBeetleEntity;

extern void (*const ObjectOnSpinyBeetle_Actions[])(ObjectOnSpinyBeetleEntity*);
extern void (*const ObjectOnSpinyBeetle_Action2Subactions[])(ObjectOnSpinyBeetleEntity*);
extern void (*const ObjectOnSpinyBeetle_Action3Subactions[])(ObjectOnSpinyBeetleEntity*);
extern const s8 gUnk_08123558[];

void sub_08098918(ObjectOnSpinyBeetleEntity*);
Entity* ObjectOnSpinyBeetle_GetParent(ObjectOnSpinyBeetleEntity*);
void sub_080989C0(ObjectOnSpinyBeetleEntity*);
void ObjectOnSpinyBeetle_Init(ObjectOnSpinyBeetleEntity*);
void ObjectOnSpinyBeetle_Action1(ObjectOnSpinyBeetleEntity*);
void ObjectOnSpinyBeetle_Action2(ObjectOnSpinyBeetleEntity*);
void ObjectOnSpinyBeetle_Action3(ObjectOnSpinyBeetleEntity*);
void ObjectOnSpinyBeetle_Action4(ObjectOnSpinyBeetleEntity*);
void ObjectOnSpinyBeetle_Action5(ObjectOnSpinyBeetleEntity*);
void ObjectOnSpinyBeetle_Action2Subaction0(ObjectOnSpinyBeetleEntity*);
void ObjectOnSpinyBeetle_Action2Subaction1(ObjectOnSpinyBeetleEntity*);
void ObjectOnSpinyBeetle_Action2Subaction2(ObjectOnSpinyBeetleEntity*);
void ObjectOnSpinyBeetle_Action2Subaction3(ObjectOnSpinyBeetleEntity*);
void ObjectOnSpinyBeetle_Action2Subaction4(ObjectOnSpinyBeetleEntity*);
void ObjectOnSpinyBeetle_Action2Subaction5(ObjectOnSpinyBeetleEntity*);
void ObjectOnSpinyBeetle_Action2Subaction6(ObjectOnSpinyBeetleEntity*);
void ObjectOnSpinyBeetle_Action3Subaction0(ObjectOnSpinyBeetleEntity*);
void ObjectOnSpinyBeetle_Action3Subaction1(ObjectOnSpinyBeetleEntity*);
void ObjectOnSpinyBeetle_Action3Subaction2(ObjectOnSpinyBeetleEntity*);
void ObjectOnSpinyBeetle_Action3Subaction3(ObjectOnSpinyBeetleEntity*);
void ObjectOnSpinyBeetle_Action3Subaction4(ObjectOnSpinyBeetleEntity*);
void ObjectOnSpinyBeetle_Action3Subaction5(ObjectOnSpinyBeetleEntity*);

void ObjectOnSpinyBeetle(ObjectOnSpinyBeetleEntity* this) {
    static void (*const ObjectOnSpinyBeetle_Actions[])(ObjectOnSpinyBeetleEntity*) = {
        ObjectOnSpinyBeetle_Init,    ObjectOnSpinyBeetle_Action1, ObjectOnSpinyBeetle_Action2,
        ObjectOnSpinyBeetle_Action3, ObjectOnSpinyBeetle_Action4, ObjectOnSpinyBeetle_Action5,
    };
    ObjectOnSpinyBeetle_Actions[super->action](this);
}

void ObjectOnSpinyBeetle_Init(ObjectOnSpinyBeetleEntity* this) {
    super->action = 1;
    super->flags |= ENT_COLLIDE;
    super->spritePriority.b0 = 6;
    super->spriteRendering.b3 = 2;
    super->subtimer = 0;
    super->hitType = 0x6e;
    super->collisionMask = 0x86;
    super->carryFlags = 0;
    if (super->type != 0) {
        super->gustJarFlags = 2;
    } else {
        super->gustJarFlags = 1;
    }
    SortEntityBelow(super, super->parent);
    sub_08098918(this);
}

void ObjectOnSpinyBeetle_Action1(ObjectOnSpinyBeetleEntity* this) {
    Entity* parent = ObjectOnSpinyBeetle_GetParent(this);
    if (parent != NULL) {
        if (4 < parent->action) {
            sub_080989C0(this);
            return;
        }
        if ((super->contactFlags & CONTACT_NOW) != 0) {
            switch (super->contactFlags & 0x3f) {
                case 0x13:
                    super->action = 3;
                    super->subAction = 0;
                    break;
                case 0xf:
                case 0x1d:
                    super->action = 4;
                    super->zVelocity = Q_16_16(2.625);
                    super->spriteOffsetY = 0;
                    super->spriteSettings.shadow = 1;
                    super->spritePriority.b1 = 3;
                    super->flags &= ~ENT_COLLIDE;
                    (super->parent)->child = NULL;
                    ObjectOnSpinyBeetle_Action4(this);
                    break;
                case 4:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 0xb:
                case 0xc:
                case 0xd:
                case 0x10:
                case 0x11:
                case 0x12:
                case 0x18:
                case 0x19:
                case 0x1a:
                    if (super->type == 0 || (gPlayerState.skills & SKILL_ROCK_BREAKER) != 0) {
                        sub_080989C0(this);
                    }
                    break;
                case 0x14:
                case 0x16:
                case 0x20:
                    if (super->type == 0) {
                        sub_080989C0(this);
                    }
            }
        } else {
            sub_08098918(this);
            RegisterCarryEntity(super);
        }
    } else {
        sub_080989C0(this);
    }
}

void ObjectOnSpinyBeetle_Action2(ObjectOnSpinyBeetleEntity* this) {
    static void (*const ObjectOnSpinyBeetle_Action2Subactions[])(ObjectOnSpinyBeetleEntity*) = {
        ObjectOnSpinyBeetle_Action2Subaction0, ObjectOnSpinyBeetle_Action2Subaction1,
        ObjectOnSpinyBeetle_Action2Subaction2, ObjectOnSpinyBeetle_Action2Subaction3,
        ObjectOnSpinyBeetle_Action2Subaction4, ObjectOnSpinyBeetle_Action2Subaction5,
        ObjectOnSpinyBeetle_Action2Subaction6,
    };
    ObjectOnSpinyBeetle_Action2Subactions[super->subAction](this);
}

void ObjectOnSpinyBeetle_Action2Subaction0(ObjectOnSpinyBeetleEntity* this) {
    super->flags |= ENT_COLLIDE;
    super->collisionFlags = 7;
    super->hitType = 1;
    super->collisionMask = gPlayerEntity.base.collisionMask;
    super->spriteOffsetY = 0;
    (super->parent)->child = NULL;
    super->subAction++;
}

void ObjectOnSpinyBeetle_Action2Subaction1(ObjectOnSpinyBeetleEntity* this) {
}

void ObjectOnSpinyBeetle_Action2Subaction2(ObjectOnSpinyBeetleEntity* this) {
    super->spritePriority.b1 = 3;
}

void ObjectOnSpinyBeetle_Action2Subaction3(ObjectOnSpinyBeetleEntity* this) {
    switch (GetTileHazardType(super)) {
        case 2:
            CreateFx(super, FX_WATER_SPLASH, 0);
            break;
        case 1:
            CreateFx(super, FX_FALL_DOWN, 0);
            break;
        case 3:
            CreateFx(super, FX_LAVA_SPLASH, 0);
            break;
        default:
            sub_080989C0(this);
            return;
    }
    DeleteThisEntity();
}

void ObjectOnSpinyBeetle_Action2Subaction4(ObjectOnSpinyBeetleEntity* this) {
    DeleteThisEntity();
}

void ObjectOnSpinyBeetle_Action2Subaction5(ObjectOnSpinyBeetleEntity* this) {
    if (gPlayerState.heldObject == 0) {
        ObjectOnSpinyBeetle_Action2Subaction6(this);
    }
}

void ObjectOnSpinyBeetle_Action2Subaction6(ObjectOnSpinyBeetleEntity* this) {
    super->action = 1;
    super->subAction = 0;
}

void ObjectOnSpinyBeetle_Action3(ObjectOnSpinyBeetleEntity* this) {
    static void (*const ObjectOnSpinyBeetle_Action3Subactions[])(ObjectOnSpinyBeetleEntity*) = {
        ObjectOnSpinyBeetle_Action3Subaction0, ObjectOnSpinyBeetle_Action3Subaction1,
        ObjectOnSpinyBeetle_Action3Subaction2, ObjectOnSpinyBeetle_Action3Subaction3,
        ObjectOnSpinyBeetle_Action3Subaction4, ObjectOnSpinyBeetle_Action3Subaction5,
    };

    ObjectOnSpinyBeetle_Action3Subactions[super->subAction](this);
    if ((super->subAction < 2) && (ObjectOnSpinyBeetle_GetParent(this) == NULL)) {
        sub_080989C0(this);
    }
}

void ObjectOnSpinyBeetle_Action3Subaction0(ObjectOnSpinyBeetleEntity* this) {
    super->subAction = 1;
    super->gustJarTolerance = 0x30;
    super->timer = 0;
}

void ObjectOnSpinyBeetle_Action3Subaction1(ObjectOnSpinyBeetleEntity* this) {
    if ((gPlayerState.gustJarState & 0xf) != 1 || (super->contactFlags & 0x7f) != 0x13) {
        super->spriteOffsetX = 0;
        super->action = 1;
    } else {
        sub_0806F4E8(super);
    }
}

void ObjectOnSpinyBeetle_Action3Subaction2(ObjectOnSpinyBeetleEntity* this) {
    if (super->timer == 0) {
        super->timer = 1;
        super->spriteOffsetX = 0;
        super->spriteOffsetY = -2;
        (super->parent)->child = NULL;
    }
    if ((gPlayerState.gustJarState & 0xf) != 1 || (super->contactFlags & 0x7f) != 0x13) {
        sub_080989C0(this);
    } else {
        if ((sub_0806F3E4(super) != 0) && (super->type == 0)) {
            DeleteThisEntity();
        }
    }
}

void ObjectOnSpinyBeetle_Action3Subaction3(ObjectOnSpinyBeetleEntity* this) {
    if (gPlayerState.gustJarState == 0) {
        sub_080989C0(this);
    } else {
        (this->base).flags &= ~ENT_COLLIDE;
    }
}

void ObjectOnSpinyBeetle_Action3Subaction4(ObjectOnSpinyBeetleEntity* this) {
}

void ObjectOnSpinyBeetle_Action3Subaction5(ObjectOnSpinyBeetleEntity* this) {
    sub_080989C0(this);
}

void ObjectOnSpinyBeetle_Action4(ObjectOnSpinyBeetleEntity* this) {
    if (super->zVelocity < 0) {
        super->spriteSettings.flipY = 1;
    }
    if (GravityUpdate(super, Q_8_8(32.0)) == 0) {
        sub_080989C0(this);
    }
}

void ObjectOnSpinyBeetle_Action5(ObjectOnSpinyBeetleEntity* this) {
    sub_080989C0(this);
}

void sub_08098918(ObjectOnSpinyBeetleEntity* this) {
    static const s8 gUnk_08123558[] = { 1, 2, 2, 2, 0, -3, -3, -4, -3, -4, -3, -3, -3, 0, 0, 0 };
    u16 tmp;
    Entity* parent = ObjectOnSpinyBeetle_GetParent(this);
    if (parent == NULL) {
        sub_080989C0(this);
    } else {
        CopyPosition(parent, super);
        tmp = parent->flags & 0x80;
        if ((parent->flags & ENT_COLLIDE) != 0) {
            if (super->subtimer == 0) {
                super->subtimer++;
                super->spritePriority.b0 = 3;
                SortEntityBelow(super, super->parent);
            }
            super->z.HALF.HI = gUnk_08123558[parent->frame & 0xf] - 8;
            super->spriteOffsetY = 0;
        } else {
            if (super->subtimer != 0) {
                super->subtimer = tmp;
                super->spritePriority.b0 = 6;
                SortEntityBelow(super, super->parent);
            }
            super->z.HALF.HI = tmp;
            super->spriteOffsetY = 3;
        }
    }
}

void sub_080989C0(ObjectOnSpinyBeetleEntity* this) {
    if (ObjectOnSpinyBeetle_GetParent(this) != NULL) {
        (super->parent)->child = NULL;
    }
    CreateFx(super, super->type + FX_BUSH, 0);
    DeleteThisEntity();
}

Entity* ObjectOnSpinyBeetle_GetParent(ObjectOnSpinyBeetleEntity* this) {
    Entity* parent = super->parent;
    if ((parent != NULL) && (parent->next == NULL)) {
        parent = NULL;
    }
    return parent;
}
