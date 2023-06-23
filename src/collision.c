#include "asm.h"
#include "collision.h"
#include "common.h"
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "game.h"
#include "global.h"
#include "item.h"
#include "object.h"
#include "player.h"
#include "save.h"
#include "tiles.h"

extern u8 gCollidableCount;
extern u8 gUnk_080B3740[];

typedef enum {
    COL_FLAG_1 = 1,
    COL_FLAG_2 = 2,
    COL_FLAG_4 = 4,
    COL_FLAG_8 = 8,
} ColSettingsFlags;

typedef struct {
    /*0x00*/ u8 orgKnockbackSpeed;
    /*0x01*/ u8 orgIframes;
    /*0x02*/ u8 orgKnockbackDuration;
    /*0x03*/ u8 tgtDamage;
    /*0x04*/ u8 orgConfusedTime;
    /*0x05*/ u8 tgtKnockbackSpeed;
    /*0x06*/ s8 tgtIframes;
    /*0x07*/ u8 tgtKnockbackDuration;
    /*0x08*/ u8 orgDamage;
    /*0x09*/ u8 tgtConfusedTime;
    /*0x0a*/ u8 flags; /**< @see ColSettingsFlags */
    /*0x0b*/ u8 pad;
} ColSettings;

extern ColSettings gCollisionMtx[173 * 34];

extern void ram_CollideAll(void);
u32 sub_08081420(Entity*);
extern void SoundReqClipped(Entity*, u32);
void sub_08079D84(void);
void sub_080180BC(Entity*, Entity*);

typedef struct {
    void* last;
    void* first;
    void* node;
    u8 flags;
} LinkedList2;

extern LinkedList2 gUnk_03003C70[16];
extern LinkedList2* gUnk_02018EA0;

void ClearHitboxList(void) {
    gCollidableCount = 0;
}

void CollisionMain(void) {
    void (*doCollision)(void);
    u32 prio;

    // pick highest priority
    prio = gPriorityHandler.sys_priority;
    if (gPriorityHandler.sys_priority <= gPriorityHandler.ent_priority)
        prio = gPriorityHandler.ent_priority;

    // if any priority is set, dont do collision
    if (prio != 0)
        return;

    doCollision = &ram_CollideAll;
    // Check to see if we should disable collision this frame
    if (gPlayerState.controlMode != CONTROL_ENABLED) {
        u32 flags = gPlayerEntity.flags;
        COLLISION_OFF(&gPlayerEntity);
        doCollision();
        gPlayerEntity.flags = flags; // reset collision to before
    } else {
        doCollision();
    }
}

void RegisterPlayerHitbox(void) {
    MemClear(&gUnk_03003C70, sizeof(gUnk_03003C70));
    gUnk_02018EA0 = (LinkedList2*)&gUnk_03003C70[0].last;
    gUnk_03003C70[0].last = &gUnk_03003C70[0].last;
    gUnk_03003C70[0].first = &gUnk_03003C70[0].last;
    gUnk_03003C70[0].node = &gPlayerEntity;
}

u32 sub_0801766C(Entity* this) {
    u32 uVar1;
    LinkedList2* puVar3;
    LinkedList2* puVar2;
    LinkedList2* pLVar2;
    LinkedList2* i;
    LinkedList2* end;
    u8* pbVar4;

    if (this->spritePriority.b2 != 0) {
        return 1;
    } else {
        for (i = gUnk_03003C70, end = gUnk_03003C70 + 16; end > i; ++i) {
            if (i->node == NULL) {
                i->node = this;
                i->flags = 0;
                this->spritePriority.b2 = 1;
                pLVar2 = gUnk_02018EA0;
                if (gUnk_02018EA0->flags != 0) {
                    do {
                        pLVar2 = pLVar2->first;
                    } while (pLVar2->flags != 0);
                    i->first = pLVar2;
                    puVar3 = pLVar2->last;
                    i->last = puVar3;
                    puVar3->first = i;
                    pLVar2->last = i;
                } else {
                    i->first = gUnk_02018EA0;
                    puVar2 = gUnk_02018EA0->last;
                    i->last = puVar2;
                    puVar2->first = i;
                    gUnk_02018EA0->last = i;
                    gUnk_02018EA0 = i;
                }
                return 1;
            }
        }
        return 0;
    }
}

u32 sub_080176E4(Entity* this) {
    u32 uVar1;
    LinkedList2* j;
    LinkedList2* i;
    LinkedList2* end;
    u8* pbVar4;

    if (this->spritePriority.b2 != 0) {
        return 1;
    } else {
        for (i = gUnk_03003C70, end = gUnk_03003C70 + 16; end > i; ++i) {
            if (i->node == NULL) {
                i->node = this;
                i->flags = 1;
                this->spritePriority.b2 = 1;
                i->first = gUnk_02018EA0;
                j = gUnk_02018EA0->last;
                i->last = j;
                j->first = i;
                gUnk_02018EA0->last = i;
                gUnk_02018EA0 = i;
                return 1;
            }
        }
        return 0;
    }
}

void sub_08017744(Entity* this) {
    LinkedList2* ll = gUnk_03003C70;
    LinkedList2* end = &gUnk_03003C70[16];

    do {
        if (this == ll->node) {
            if (this->spritePriority.b2 != 0) {
                this->spritePriority.b2 = 0;
                ll->node = NULL;
                ((LinkedList2*)ll->last)->first = ll->first;
                ((LinkedList2*)ll->first)->last = ll->last;
                if (ll == gUnk_02018EA0)
                    gUnk_02018EA0 = ll->first;
                break;
            }
        }
    } while (end > ++ll);
}

bool32 IsColliding(Entity* this, Entity* that) {
    u32 this_d;
    u32 depth;

    if ((this->collisionLayer & that->collisionLayer) != 0) {
        Hitbox* bb_this = this->hitbox;
        Hitbox* bb_that = that->hitbox;
        u32 this_len = bb_this->width;
        u32 sumw = this_len + bb_that->width;
        if ((((this->x.HALF.HI - that->x.HALF.HI) + bb_this->offset_x) - bb_that->offset_x) + sumw <= (sumw)*2) {
            this_len = bb_this->height;
            sumw = this_len + bb_that->height;
            if ((((this->y.HALF.HI - that->y.HALF.HI) + bb_this->offset_y) - bb_that->offset_y) + sumw <= (sumw)*2) {
                if ((this->collisionFlags & 0x10) != 0)
                    this_d = ((Hitbox3D*)bb_this)->depth;
                else
                    this_d = 5;
                if ((that->collisionFlags & 0x10) != 0)
                    depth = this_d + ((Hitbox3D*)bb_that)->depth;
                else
                    depth = this_d + 5;
                if ((this->z.HALF.HI - that->z.HALF.HI) + depth <= depth * 2)
                    return TRUE;
            }
        }
    }
    return FALSE;
}

bool32 IsCollidingPlayer(Entity* this) {
    if (PlayerCanBeMoved())
        return IsColliding(this, &gPlayerEntity);
    return FALSE;
}

s32 CalculateDamage(Entity* org, Entity* tgt) {
    s32 damage;
    s32 health;

    if (org->kind == PLAYER) {
        damage = tgt->damage;
        switch (gSave.stats.charm) {
            case BOTTLE_CHARM_NAYRU:
                damage /= 4;
                break;
            case BOTTLE_CHARM_FARORE:
                damage /= 2;
                break;
        }
        if (damage <= 0)
            damage = 1;
        health = ModHealth(-damage);
        SoundReqClipped(org, SFX_PLY_VO6);
    } else {
        damage = tgt->damage;
        if (tgt->kind == PLAYER_ITEM) {
            switch (gSave.stats.charm) {
                case BOTTLE_CHARM_FARORE:
                    damage = 3 * damage / 2;
                    break;
                case BOTTLE_CHARM_DIN:
                    damage *= 2;
                    break;
            }
        }
        health = org->health - damage;
        if (org->kind == ENEMY) {
            if ((org->field_0x6c.HALF.HI & 1) != 0)
                SoundReqClipped(org, SFX_BOSS_HIT);
            else
                SoundReqClipped(org, SFX_HIT);
        }
    }
    if (health <= 0) {
        COLLISION_OFF(org);
        return 0;
    }
    return health;
}

void sub_08017940(Entity* org, Entity* tgt) {
    Entity* e;
    u32 r1;

    e = CreateFx(tgt, FX_REFECT3, 0);
    if (e != NULL) {
        e->spritePriority.b0 = 2;
        e->x.HALF.HI = (org->x.HALF.HI + org->hitbox->offset_x + tgt->x.HALF.HI + tgt->hitbox->offset_x) >> 1;
        e->y.HALF.HI = (org->y.HALF.HI + org->hitbox->offset_y + tgt->y.HALF.HI + tgt->hitbox->offset_y) >> 1;
        e->z.HALF.HI = (org->z.HALF.HI + tgt->z.HALF.HI) >> 1;
        e->collisionLayer = org->collisionLayer;
        UpdateSpriteForCollisionLayer(e);
    }

    r1 = 0;

    r1 = (u32)(org == &gPlayerEntity ? gPlayerEntity.knockbackDuration
                                     : (tgt == &gPlayerEntity ? tgt->knockbackDuration : 0)) >>
         3;

    // Anything requiring the evaluation of r1 could be written here.
    // The compiler is not smart enough to know that r1 has no side effects,
    // so the above code will still generate.
    r1 = !r1 ? !!r1 : !!!r1;
}

void sub_080179EC(Entity* a1, Entity* a2) {
    const u8* p = (const u8[]){ FX_27, FX_32, FX_33, FX_34 };
    u32 rand = Random();
    Entity* e = CreateFx(a2, p[rand & 3], 0);
    if (e != NULL) {
        PositionRelative(a2, e, Q_16_16(a2->hitbox->offset_x), Q_16_16(a2->hitbox->offset_y));
        e->spritePriority.b0 = 2;
        e->spriteOffsetX = (a1->x.HALF.HI + a1->hitbox->offset_x - (a2->x.HALF.HI + a2->hitbox->offset_x)) >> 1;
        e->spriteOffsetY = (a1->y.HALF.HI + a1->hitbox->offset_y - (a2->y.HALF.HI + a2->hitbox->offset_y)) >> 1;
        e->child = a2;
    }
}

Entity* sub_08017A90(Entity* a1, Entity* parent) {
    Entity* e;

    e = (Entity*)CreateObject(HIT_SWITCH, 0, 0);
    if (e != NULL) {
        e->animationState = (a1->direction >> 3) & 3;
        e->spriteOffsetX = a1->x.HALF.HI - parent->x.HALF.HI;
        e->spriteOffsetY = a1->y.HALF.HI - parent->y.HALF.HI;
        e->parent = parent;
        return e;
    }
    return NULL;
}

typedef CollisionResult (*CollisionHandler)(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult CollisionDefault(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult CollisionNoOp(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult CollisionGroundItem(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017B58(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017EB0(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017F3C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017F40(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_0801802C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017DD4(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_080180E8(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017BBC(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017C40(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017D6C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017D28(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08018168(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08018228(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08018250(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult CollisionMazaalShrinkRay(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_080182A8(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017B1C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017CBC(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017E88(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);

const CollisionHandler gCollisionHandlers[] = {
    CollisionDefault,
    CollisionNoOp,
    CollisionNoOp,
    CollisionGroundItem,
    sub_08017B58,
    sub_08017EB0,
    sub_08017F3C,
    sub_08017F40,
    sub_0801802C,
    sub_08017DD4,
    sub_080180E8,
    sub_08017BBC,
    sub_08017C40,
    sub_08017D6C,
    sub_08017D28,
    sub_08018168,
    sub_08018228,
    sub_08018250,
    CollisionMazaalShrinkRay,
    sub_080182A8,
    sub_08017B1C,
    sub_08017CBC,
    sub_08017E88,
};

CollisionResult CollisionNoOp(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    return RESULT_NO_COLLISION;
}

// origin: player or sword
// target: item
CollisionResult CollisionGroundItem(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    COLLISION_OFF(tgt);
    tgt->contactFlags = org->hurtType | 0x80;
    if ((tgt->type == 0x5F || tgt->type == 0x60) && sub_08081420(tgt))
        tgt->health = 0;
    return RESULT_COLLISION_WITHOUT_SET;
}

CollisionResult sub_08017B1C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if ((gPlayerState.dash_state & 0x60) != 0) {
        COLLISION_OFF(tgt);
    } else {
        org->knockbackDuration = 0x10;
        org->iframes = -20;
        org->knockbackSpeed = 640;
    }
    return RESULT_COLLISION;
}

CollisionResult sub_08017B58(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if ((tgt->gustJarState & 4) != 0) {
        if (tgt->gustJarTolerance) {
            tgt->gustJarTolerance = tgt->gustJarTolerance - gPlayerState.gustJarSpeed;
            if ((s8)tgt->gustJarTolerance <= 0) {
                tgt->gustJarTolerance = 0;
                tgt->subAction = 2;
                tgt->knockbackSpeed = 0;
            }
        }
    } else {
        tgt->subAction = 0;
        tgt->gustJarState |= 4;
    }
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return RESULT_COLLISION;
}

CollisionResult sub_08017BBC(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if ((gPlayerState.flags & (PL_BUSY | PL_MINISH | PL_BURNING | PL_IN_MINECART)) == 0) {
        Entity* e = CreateObject(LINK_FIRE, 1, 0);
        if (e != NULL) {
            e->child = org;
            gPlayerState.flags |= PL_BURNING;
            org->animationState = Direction8ToAnimationState(DirectionTurnAround(direction));
        }
    }
    tgt->damage = 4;
    org->health = CalculateDamage(org, tgt);
    org->knockbackDuration = 12;
    org->iframes = 30;
    org->knockbackSpeed = 384;
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return RESULT_COLLISION;
}

CollisionResult sub_08017C40(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if ((gPlayerState.flags & (PL_BUSY | PL_MINISH | PL_FROZEN | PL_IN_MINECART)) == 0 &&
        gPlayerState.queued_action == PLAYER_INIT) {
        if (org->action == 1 || org->action == 24) {
            tgt->damage = 4;
            org->health = CalculateDamage(org, tgt);
            gPlayerState.flags = PL_FROZEN;
            gPlayerState.queued_action = PLAYER_FROZEN;
        }
    }
    org->knockbackDuration = 12;
    org->iframes = 16;
    org->knockbackSpeed = 640;
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return RESULT_COLLISION;
}

CollisionResult sub_08017CBC(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    direction = DirectionNormalize(DirectionTurnAround(direction) - 0xc);
    if (DirectionNormalize(-direction + tgt->direction) < 0x19) {
        org->iframes = -12;
        tgt->iframes = -12;
        sub_08017940(org, tgt);
    } else {
        tgt->knockbackDuration = 12;
        tgt->iframes = 16;
        tgt->confusedTime = -16;
        tgt->knockbackSpeed = 768;
        if (org->iframes == 0)
            org->iframes = -1;
    }
    return RESULT_COLLISION;
}

CollisionResult sub_08017D28(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    gPlayerState.mobility = 1;
    org->field_0x7a.HWORD = 600;
    org->knockbackDuration = 12;
    org->iframes = 16;
    org->knockbackSpeed = 640;
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return RESULT_COLLISION;
}

CollisionResult sub_08017D6C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    u32 x;
    u32 y;
    ColSettings* p;

    if (DirectionNormalize(-DirectionNormalize((DirectionTurnAround(direction) - 5)) +
                           DirectionFromAnimationState(tgt->animationState)) >= 0xb) {
        x = org->hurtType;
        y = 0xac2;
    } else {
        tgt->contactFlags = 0xcb;
        tgt->field_0x78.HALF.HI = org->hurtType;
        x = org->hurtType;
        y = 0xae4;
    }
    p = &gCollisionMtx[x + y];
    return CollisionDefault(org, tgt, direction, p);
}

CollisionResult sub_08017DD4(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    org->contactFlags = 0;
    if (tgt->damage & 0x80)
        tgt->damage &= ~0x80;
    else
        tgt->damage = 4;
    gPlayerEntity.health = CalculateDamage(&gPlayerEntity, tgt);
    tgt->iframes = -12;
    if ((gPlayerState.flags & PL_MINISH) == 0) {
        sub_08079D84();
        org->iframes = 90;
    } else {
        gPlayerEntity.contactFlags = tgt->hurtType | 0x80;
        gPlayerEntity.iframes = 12;
        gPlayerEntity.knockbackDuration = 16;
        gPlayerEntity.knockbackDirection = DirectionTurnAround(direction);
        gPlayerEntity.knockbackSpeed = 640;
    }
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return RESULT_COLLISION;
}

CollisionResult sub_08017E88(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    org->knockbackDuration = 2;
    org->knockbackSpeed = 640;
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return RESULT_COLLISION;
}

CollisionResult sub_08017EB0(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if (tgt->damage == 0)
        return RESULT_NO_COLLISION;
    if (org == &gPlayerEntity) {
        u32 prevDamage = tgt->damage;
        tgt->damage = 8;
        gPlayerEntity.health = CalculateDamage(&gPlayerEntity, tgt);
        tgt->damage = prevDamage;
        gPlayerEntity.knockbackDuration = 12;
        gPlayerEntity.iframes = 16;
        gPlayerEntity.knockbackSpeed = 384;
    } else if (org->kind == PLAYER_ITEM && org->id == PL_ITEM_SHIELD) {
        org->knockbackDuration = 8;
        org->iframes = -6;
        org->knockbackSpeed = 384;
        gPlayerEntity.iframes = 0x80;
    }
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return RESULT_COLLISION;
}

CollisionResult sub_08017F3C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    return RESULT_COLLISION;
}

CollisionResult sub_08017F40(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if (tgt->confusedTime == 0) {
        if (org == &gPlayerEntity) {
            if (PlayerCanBeMoved() &&
#ifdef EU
                (gPlayerState.flags & (PL_MINISH | PL_BUSY)) == 0 &&
#else
                (gPlayerState.flags & PL_MINISH) == 0 &&
#endif
                !gPlayerState.swim_state) {
                gPlayerState.mobility |= 0x80;
                gPlayerState.field_0xa |= 0x80;
                gPlayerState.flags |= PL_CAPTURED;
                gPlayerState.jump_status = 0;
                if (tgt->kind == ENEMY && (tgt->id == GHINI || tgt->id == ENEMY_50)) {
                    org->z.HALF.HI = 0;
                    PositionRelative(org, tgt, 0, Q_16_16(1.0));
                } else {
                    PositionRelative(tgt, org, 0, Q_16_16(1.0));
                }
                COLLISION_OFF(org);
                org->spriteRendering.b3 = tgt->spriteRendering.b3;
                org->spriteOrientation.flipY = tgt->spriteOrientation.flipY;
                org->iframes = -1;
                tgt->iframes = -8;
                ResetActiveItems();
                return RESULT_COLLISION;
            }
        } else {
            org->health = 0;
        }
    } else if (tgt->kind == ENEMY && org == &gPlayerEntity) {
        sub_08004484(tgt, org);
    }
    return RESULT_NO_COLLISION;
}

CollisionResult sub_0801802C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    int kind;
    u32 x;

    kind = org->kind;
    if (kind == PLAYER) {
        if (PlayerCanBeMoved()) {
            if (((DirectionNormalize(DirectionTurnAround(direction) -
                                     Direction8FromAnimationState(tgt->animationState) + 5))) > 0xA) {
                x = 0x11aa;
                return CollisionDefault(org, tgt, direction, &gCollisionMtx[x + org->hurtType]);
            } else {
                sub_080180BC(org, tgt);
                return RESULT_COLLISION;
            }
        }
    } else if (kind == PLAYER_ITEM) {
        if (DirectionNormalize(
                (DirectionTurnAround(org->direction) - Direction8FromAnimationState(tgt->animationState) + 5)) <= 0xA) {
            org->health = 0;
            sub_080180BC(org, tgt);
            return RESULT_COLLISION;
        }
    } else {
        org->health = 0;
        return RESULT_NO_COLLISION;
    }

    x = 0x11aa;
    return CollisionDefault(org, tgt, direction, &gCollisionMtx[x + org->hurtType]);
}

void sub_080180BC(Entity* org, Entity* tgt) {
    if (org->iframes == 0)
        org->iframes = -30;
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    tgt->subAction = -1;
}

CollisionResult sub_080180E8(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    u32 v3;
    u32 x;

    v3 = DirectionNormalize(DirectionTurnAround(direction) - 0xc);
    if (DirectionNormalize(tgt->direction - v3) <= 0x18) {
        org->knockbackDuration = 12;
        org->iframes = -16;
        org->knockbackSpeed = 640;
        tgt->knockbackDuration = 12;
        tgt->iframes = -16;
        tgt->knockbackSpeed = 768;
        sub_08017940(org, tgt);
        return RESULT_COLLISION;
    }
    x = 0x352;
    return CollisionDefault(org, tgt, v3, &gCollisionMtx[org->hurtType + x]);
}

CollisionResult sub_08018168(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if (tgt->confusedTime == 0) {
        if (org == &gPlayerEntity) {
            if (PlayerCanBeMoved() &&
#ifdef EU
                (gPlayerState.flags & (PL_MINISH | PL_BUSY)) == 0 &&
#else
                (gPlayerState.flags & (PL_MINISH | PL_ROLLING)) == 0 &&
#endif
                gPlayerState.swim_state == 0) {
                gPlayerState.mobility |= 0x80;
                gPlayerState.field_0xa |= 0x80;
                gPlayerState.flags |= PL_DISABLE_ITEMS;
                gPlayerState.jump_status = 0;
                COLLISION_OFF(&gPlayerEntity);
                gPlayerEntity.spriteRendering.b3 = tgt->spriteRendering.b3;
                gPlayerEntity.spriteOrientation.flipY = tgt->spriteOrientation.flipY;
                gPlayerEntity.iframes = 0xff;
                tgt->iframes = -8;
                PutAwayItems();
                return RESULT_COLLISION;
            }
        } else {
            org->health = 0;
        }
    } else if ((tgt->kind == ENEMY) && (org == &gPlayerEntity)) {
        sub_08004484(tgt, &gPlayerEntity);
    }
    return RESULT_NO_COLLISION;
}

CollisionResult sub_08018228(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if (org == &gPlayerEntity && PlayerCanBeMoved())
        sub_08004484(tgt, org);
    return RESULT_NO_COLLISION;
}

CollisionResult sub_08018250(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    org->iframes = -1;
    if (org->direction == 0) {
        tgt->iframes = 16;
        sub_08017A90(org, tgt);
    } else {
        tgt->iframes = -1;
    }
    return RESULT_COLLISION;
}

CollisionResult CollisionMazaalShrinkRay(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if (org == &gPlayerEntity)
        PlayerShrinkByRay();
    else
        org->health = 0;
    return RESULT_COLLISION;
}

CollisionResult sub_080182A8(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if (tgt->confusedTime == 0) {
        if (org->iframes == 0)
            org->iframes = -1;
        if (tgt->iframes == 0)
            tgt->iframes = -1;
    } else {
        u32 x = 0x92a;
        return CollisionDefault(org, tgt, direction, &gCollisionMtx[org->hurtType + x]);
    }
    return RESULT_COLLISION;
}

CollisionResult CollisionDefault(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    u32 confused = 0;
    if (tgt->confusedTime && tgt->kind == ENEMY && org == &gPlayerEntity) {
        sub_08004484(tgt, org);
        confused = 1;
    }
    if ((org->kind == PLAYER_ITEM && org->id == PL_ITEM_SHIELD) &&
        gPlayerEntity.animationState ==
            AnimationStateFlip180(Direction8ToAnimationState(DirectionRoundUp(direction)))) {
        return RESULT_NO_COLLISION;
    }
    if (!confused) {
        u32 tmp2;
        org->knockbackSpeed = 16 * settings->orgKnockbackSpeed;
        org->iframes = settings->orgIframes;
        if (org->iframes == 0)
            org->iframes = -1;
        org->knockbackDuration = settings->orgKnockbackDuration;
        tgt->damage = settings->tgtDamage;
        tmp2 = 0xFF;
        if (settings->tgtDamage != 0)
            org->health = CalculateDamage(org, tgt);
        if (settings->orgConfusedTime > org->confusedTime)
            org->confusedTime = settings->orgConfusedTime;
        tgt->knockbackSpeed = 16 * settings->tgtKnockbackSpeed;
        tgt->iframes = settings->tgtIframes;
        if (settings->tgtIframes == 0)
            tgt->iframes = -1;
        tgt->knockbackDuration = settings->tgtKnockbackDuration;
        tmp2 &= (org->damage = settings->orgDamage);
        if (tmp2 != 0)
            tgt->health = CalculateDamage(tgt, org);
        if (settings->tgtConfusedTime > tgt->confusedTime)
            tgt->confusedTime = settings->tgtConfusedTime;
    }
    if (settings->flags & COL_FLAG_1)
        sub_08017940(org, tgt);
    if (settings->flags & COL_FLAG_2)
        org->contactFlags = 0xca;
    if (settings->flags & COL_FLAG_4) {
        Entity* parent = tgt->parent;
        if (parent != NULL) {
            parent->contactFlags = 0xcc;
            parent->iframes = tgt->iframes;
            parent->knockbackDirection = direction;
            parent->knockbackDuration = tgt->knockbackDuration;
            if (parent->confusedTime == 0)
                parent->confusedTime = tgt->confusedTime;
            parent->knockbackSpeed = tgt->knockbackSpeed;
            parent->contactedEntity = org;
        }
    }
    if (org->kind == PLAYER_ITEM) {
        if (org->id == PL_ITEM_SWORD) {
            if (settings->orgDamage) {
                sub_080179EC(org, tgt);
            }
        } else if (org->id == PL_ITEM_BOW) {
            if (org->damage || (settings->flags & COL_FLAG_8)) {
                sub_08017A90(org, tgt);
            }
        } else if (org->id == PL_ITEM_BOOMERANG) {
            if (settings->tgtConfusedTime) {
                SoundReqClipped(tgt, SFX_HIT);
            }
        } else if (org->id == PL_ITEM_SHIELD) {
            gPlayerEntity.iframes = 0x80;
        }
    }
    if (tgt->kind == PLAYER_ITEM && org->id == PL_ITEM_SHIELD) {
        gPlayerEntity.iframes = 0x80;
    }
    return RESULT_COLLISION;
}

// vvv for tileType?
const u8 gUnk_080B37A0[] = {
VVV_0, // META_TILE_TYPE_0
VVV_1, // META_TILE_TYPE_1
VVV_2, // META_TILE_TYPE_2
VVV_3, // META_TILE_TYPE_3
VVV_4, // META_TILE_TYPE_4
VVV_5, // META_TILE_TYPE_5
VVV_6, // META_TILE_TYPE_6
VVV_7, // META_TILE_TYPE_7
VVV_8, // META_TILE_TYPE_8
VVV_9, // META_TILE_TYPE_9
VVV_9, // META_TILE_TYPE_10
VVV_10, // META_TILE_TYPE_11
VVV_9, // META_TILE_TYPE_12
VVV_9, // META_TILE_TYPE_13
VVV_9, // META_TILE_TYPE_14
VVV_9, // META_TILE_TYPE_15
VVV_9, // META_TILE_TYPE_16
VVV_9, // META_TILE_TYPE_17
VVV_11, // META_TILE_TYPE_18
VVV_12, // META_TILE_TYPE_19
VVV_11, // META_TILE_TYPE_20
VVV_11, // META_TILE_TYPE_21
VVV_11, // META_TILE_TYPE_22
VVV_11, // META_TILE_TYPE_23
VVV_11, // META_TILE_TYPE_24
VVV_11, // META_TILE_TYPE_25
VVV_10, // META_TILE_TYPE_26
VVV_10, // META_TILE_TYPE_27
VVV_10, // META_TILE_TYPE_28
VVV_10, // META_TILE_TYPE_29
VVV_10, // META_TILE_TYPE_30
VVV_10, // META_TILE_TYPE_31
VVV_10, // META_TILE_TYPE_32
VVV_10, // META_TILE_TYPE_33
VVV_10, // META_TILE_TYPE_34
VVV_10, // META_TILE_TYPE_35
VVV_10, // META_TILE_TYPE_36
VVV_10, // META_TILE_TYPE_37
VVV_10, // META_TILE_TYPE_38
VVV_10, // META_TILE_TYPE_39
VVV_10, // META_TILE_TYPE_40
VVV_12, // META_TILE_TYPE_41
VVV_12, // META_TILE_TYPE_42
VVV_12, // META_TILE_TYPE_43
VVV_12, // META_TILE_TYPE_44
VVV_12, // META_TILE_TYPE_45
VVV_12, // META_TILE_TYPE_46
VVV_12, // META_TILE_TYPE_47
VVV_12, // META_TILE_TYPE_48
VVV_12, // META_TILE_TYPE_49
VVV_12, // META_TILE_TYPE_50
VVV_12, // META_TILE_TYPE_51
VVV_12, // META_TILE_TYPE_52
VVV_13, // META_TILE_TYPE_53
VVV_14, // META_TILE_TYPE_54
VVV_14, // META_TILE_TYPE_55
VVV_15, // META_TILE_TYPE_56
VVV_16, // META_TILE_TYPE_57
VVV_15, // META_TILE_TYPE_58
VVV_14, // META_TILE_TYPE_59
VVV_17, // META_TILE_TYPE_60
VVV_18, // META_TILE_TYPE_61
VVV_19, // META_TILE_TYPE_62
VVV_20, // META_TILE_TYPE_63
VVV_20, // META_TILE_TYPE_64
VVV_20, // META_TILE_TYPE_65
VVV_20, // META_TILE_TYPE_66
VVV_20, // META_TILE_TYPE_67
VVV_20, // META_TILE_TYPE_68
VVV_20, // META_TILE_TYPE_69
VVV_20, // META_TILE_TYPE_70
VVV_20, // META_TILE_TYPE_71
VVV_20, // META_TILE_TYPE_72
VVV_20, // META_TILE_TYPE_73
VVV_20, // META_TILE_TYPE_74
VVV_20, // META_TILE_TYPE_75
VVV_20, // META_TILE_TYPE_76
VVV_20, // META_TILE_TYPE_77
VVV_20, // META_TILE_TYPE_78
VVV_20, // META_TILE_TYPE_79
VVV_20, // META_TILE_TYPE_80
VVV_20, // META_TILE_TYPE_81
VVV_20, // META_TILE_TYPE_82
VVV_20, // META_TILE_TYPE_83
VVV_20, // META_TILE_TYPE_84
VVV_21, // META_TILE_TYPE_85
VVV_21, // META_TILE_TYPE_86
VVV_21, // META_TILE_TYPE_87
VVV_21, // META_TILE_TYPE_88
VVV_21, // META_TILE_TYPE_89
VVV_21, // META_TILE_TYPE_90
VVV_21, // META_TILE_TYPE_91
VVV_21, // META_TILE_TYPE_92
VVV_21, // META_TILE_TYPE_93
VVV_21, // META_TILE_TYPE_94
VVV_21, // META_TILE_TYPE_95
VVV_21, // META_TILE_TYPE_96
VVV_22, // META_TILE_TYPE_97
VVV_22, // META_TILE_TYPE_98
VVV_22, // META_TILE_TYPE_99
VVV_22, // META_TILE_TYPE_100
VVV_22, // META_TILE_TYPE_101
VVV_22, // META_TILE_TYPE_102
VVV_22, // META_TILE_TYPE_103
VVV_22, // META_TILE_TYPE_104
VVV_23, // META_TILE_TYPE_105
VVV_23, // META_TILE_TYPE_106
VVV_24, // META_TILE_TYPE_107
VVV_24, // META_TILE_TYPE_108
VVV_24, // META_TILE_TYPE_109
VVV_24, // META_TILE_TYPE_110
VVV_0, // META_TILE_TYPE_111
VVV_0, // META_TILE_TYPE_112
VVV_25, // META_TILE_TYPE_113
VVV_25, // META_TILE_TYPE_114
VVV_26, // META_TILE_TYPE_115
VVV_0, // META_TILE_TYPE_116
VVV_0, // META_TILE_TYPE_117
VVV_0, // META_TILE_TYPE_118
VVV_27, // META_TILE_TYPE_119
VVV_28, // META_TILE_TYPE_120
VVV_29, // META_TILE_TYPE_121
VVV_30, // META_TILE_TYPE_122
VVV_31, // META_TILE_TYPE_123
VVV_32, // META_TILE_TYPE_124
VVV_33, // META_TILE_TYPE_125
VVV_34, // META_TILE_TYPE_126
VVV_35, // META_TILE_TYPE_127
VVV_36, // META_TILE_TYPE_128
VVV_0, // META_TILE_TYPE_129
VVV_36, // META_TILE_TYPE_130
VVV_36, // META_TILE_TYPE_131
VVV_36, // META_TILE_TYPE_132
VVV_36, // META_TILE_TYPE_133
VVV_37, // META_TILE_TYPE_134
VVV_38, // META_TILE_TYPE_135
VVV_38, // META_TILE_TYPE_136
VVV_39, // META_TILE_TYPE_137
VVV_39, // META_TILE_TYPE_138
VVV_40, // META_TILE_TYPE_139
VVV_40, // META_TILE_TYPE_140
VVV_40, // META_TILE_TYPE_141
VVV_40, // META_TILE_TYPE_142
VVV_40, // META_TILE_TYPE_143
VVV_40, // META_TILE_TYPE_144
VVV_40, // META_TILE_TYPE_145
VVV_40, // META_TILE_TYPE_146
VVV_40, // META_TILE_TYPE_147
VVV_40, // META_TILE_TYPE_148
VVV_40, // META_TILE_TYPE_149
VVV_40, // META_TILE_TYPE_150
VVV_40, // META_TILE_TYPE_151
VVV_40, // META_TILE_TYPE_152
VVV_40, // META_TILE_TYPE_153
VVV_40, // META_TILE_TYPE_154
VVV_40, // META_TILE_TYPE_155
VVV_40, // META_TILE_TYPE_156
VVV_41, // META_TILE_TYPE_157
VVV_41, // META_TILE_TYPE_158
VVV_40, // META_TILE_TYPE_159
VVV_40, // META_TILE_TYPE_160
VVV_42, // META_TILE_TYPE_161
VVV_41, // META_TILE_TYPE_162
VVV_40, // META_TILE_TYPE_163
VVV_43, // META_TILE_TYPE_164
VVV_41, // META_TILE_TYPE_165
VVV_40, // META_TILE_TYPE_166
VVV_44, // META_TILE_TYPE_167
VVV_41, // META_TILE_TYPE_168
VVV_40, // META_TILE_TYPE_169
VVV_45, // META_TILE_TYPE_170
VVV_0, // META_TILE_TYPE_171
VVV_0, // META_TILE_TYPE_172
VVV_0, // META_TILE_TYPE_173
VVV_0, // META_TILE_TYPE_174
VVV_46, // META_TILE_TYPE_175
VVV_0, // META_TILE_TYPE_176
VVV_0, // META_TILE_TYPE_177
#ifdef EU
VVV_0, // META_TILE_TYPE_178
#else
VVV_41, // META_TILE_TYPE_178
#endif
VVV_0, // META_TILE_TYPE_179
VVV_0, // META_TILE_TYPE_180
#ifdef EU
VVV_0, // META_TILE_TYPE_181
#else
VVV_41, // META_TILE_TYPE_181
#endif
VVV_40, // META_TILE_TYPE_182
VVV_0, // META_TILE_TYPE_183
VVV_42, // META_TILE_TYPE_184
VVV_42, // META_TILE_TYPE_185
VVV_42, // META_TILE_TYPE_186
VVV_0, // META_TILE_TYPE_187
VVV_0, // META_TILE_TYPE_188
VVV_0, // META_TILE_TYPE_189
VVV_0, // META_TILE_TYPE_190
VVV_46, // META_TILE_TYPE_191
VVV_0, // META_TILE_TYPE_192
VVV_0, // META_TILE_TYPE_193
#ifdef EU
VVV_0, // META_TILE_TYPE_194
#else
VVV_41, // META_TILE_TYPE_194
#endif
VVV_0, // META_TILE_TYPE_195
VVV_0, // META_TILE_TYPE_196
#ifdef EU
VVV_0, // META_TILE_TYPE_197
#else
VVV_41, // META_TILE_TYPE_197
#endif
VVV_40, // META_TILE_TYPE_198
VVV_0, // META_TILE_TYPE_199
VVV_42, // META_TILE_TYPE_200
VVV_42, // META_TILE_TYPE_201
VVV_42, // META_TILE_TYPE_202
VVV_0, // META_TILE_TYPE_203
VVV_46, // META_TILE_TYPE_204
VVV_0, // META_TILE_TYPE_205
VVV_0, // META_TILE_TYPE_206
VVV_0, // META_TILE_TYPE_207
VVV_0, // META_TILE_TYPE_208
VVV_0, // META_TILE_TYPE_209
#ifdef EU
VVV_0, // META_TILE_TYPE_210
#else
VVV_41, // META_TILE_TYPE_210
#endif
VVV_40, // META_TILE_TYPE_211
VVV_0, // META_TILE_TYPE_212
VVV_0, // META_TILE_TYPE_213
#ifdef EU
VVV_0, // META_TILE_TYPE_214
#else
VVV_41, // META_TILE_TYPE_214
#endif
VVV_0, // META_TILE_TYPE_215
VVV_43, // META_TILE_TYPE_216
VVV_43, // META_TILE_TYPE_217
VVV_43, // META_TILE_TYPE_218
VVV_0, // META_TILE_TYPE_219
VVV_0, // META_TILE_TYPE_220
VVV_0, // META_TILE_TYPE_221
VVV_0, // META_TILE_TYPE_222
VVV_46, // META_TILE_TYPE_223
VVV_0, // META_TILE_TYPE_224
VVV_0, // META_TILE_TYPE_225
#ifdef EU
VVV_0, // META_TILE_TYPE_226
#else
VVV_41, // META_TILE_TYPE_226
#endif
VVV_0, // META_TILE_TYPE_227
VVV_0, // META_TILE_TYPE_228
#ifdef EU
VVV_0, // META_TILE_TYPE_229
#else
VVV_41, // META_TILE_TYPE_229
#endif
VVV_40, // META_TILE_TYPE_230
VVV_0, // META_TILE_TYPE_231
VVV_44, // META_TILE_TYPE_232
VVV_44, // META_TILE_TYPE_233
VVV_44, // META_TILE_TYPE_234
VVV_0, // META_TILE_TYPE_235
VVV_46, // META_TILE_TYPE_236
VVV_0, // META_TILE_TYPE_237
VVV_0, // META_TILE_TYPE_238
VVV_0, // META_TILE_TYPE_239
VVV_0, // META_TILE_TYPE_240
VVV_0, // META_TILE_TYPE_241
#ifdef EU
VVV_0, // META_TILE_TYPE_242
#else
VVV_41, // META_TILE_TYPE_242
#endif
VVV_40, // META_TILE_TYPE_243
VVV_0, // META_TILE_TYPE_244
VVV_0, // META_TILE_TYPE_245
#ifdef EU
VVV_0, // META_TILE_TYPE_246
#else
VVV_41, // META_TILE_TYPE_246
#endif
VVV_0, // META_TILE_TYPE_247
VVV_45, // META_TILE_TYPE_248
VVV_45, // META_TILE_TYPE_249
VVV_45, // META_TILE_TYPE_250
VVV_0, // META_TILE_TYPE_251
VVV_0, // META_TILE_TYPE_252
VVV_0, // META_TILE_TYPE_253
VVV_0, // META_TILE_TYPE_254
VVV_46, // META_TILE_TYPE_255
VVV_0, // META_TILE_TYPE_256
VVV_0, // META_TILE_TYPE_257
VVV_0, // META_TILE_TYPE_258
VVV_0, // META_TILE_TYPE_259
VVV_0, // META_TILE_TYPE_260
VVV_46, // META_TILE_TYPE_261
VVV_0, // META_TILE_TYPE_262
VVV_0, // META_TILE_TYPE_263
VVV_46, // META_TILE_TYPE_264
VVV_0, // META_TILE_TYPE_265
VVV_0, // META_TILE_TYPE_266
VVV_0, // META_TILE_TYPE_267
VVV_0, // META_TILE_TYPE_268
VVV_0, // META_TILE_TYPE_269
VVV_0, // META_TILE_TYPE_270
VVV_0, // META_TILE_TYPE_271
VVV_46, // META_TILE_TYPE_272
VVV_0, // META_TILE_TYPE_273
VVV_0, // META_TILE_TYPE_274
VVV_0, // META_TILE_TYPE_275
VVV_0, // META_TILE_TYPE_276
VVV_46, // META_TILE_TYPE_277
VVV_0, // META_TILE_TYPE_278
VVV_0, // META_TILE_TYPE_279
VVV_0, // META_TILE_TYPE_280
VVV_0, // META_TILE_TYPE_281
VVV_0, // META_TILE_TYPE_282
VVV_0, // META_TILE_TYPE_283
VVV_0, // META_TILE_TYPE_284
VVV_0, // META_TILE_TYPE_285
VVV_0, // META_TILE_TYPE_286
VVV_0, // META_TILE_TYPE_287
VVV_0, // META_TILE_TYPE_288
VVV_0, // META_TILE_TYPE_289
VVV_0, // META_TILE_TYPE_290
VVV_0, // META_TILE_TYPE_291
VVV_0, // META_TILE_TYPE_292
VVV_0, // META_TILE_TYPE_293
VVV_0, // META_TILE_TYPE_294
VVV_0, // META_TILE_TYPE_295
VVV_0, // META_TILE_TYPE_296
VVV_0, // META_TILE_TYPE_297
VVV_0, // META_TILE_TYPE_298
VVV_0, // META_TILE_TYPE_299
VVV_0, // META_TILE_TYPE_300
VVV_0, // META_TILE_TYPE_301
VVV_0, // META_TILE_TYPE_302
VVV_0, // META_TILE_TYPE_303
VVV_0, // META_TILE_TYPE_304
VVV_0, // META_TILE_TYPE_305
VVV_0, // META_TILE_TYPE_306
VVV_0, // META_TILE_TYPE_307
VVV_0, // META_TILE_TYPE_308
VVV_0, // META_TILE_TYPE_309
VVV_0, // META_TILE_TYPE_310
VVV_0, // META_TILE_TYPE_311
VVV_0, // META_TILE_TYPE_312
VVV_0, // META_TILE_TYPE_313
VVV_0, // META_TILE_TYPE_314
VVV_0, // META_TILE_TYPE_315
VVV_0, // META_TILE_TYPE_316
VVV_0, // META_TILE_TYPE_317
VVV_0, // META_TILE_TYPE_318
VVV_0, // META_TILE_TYPE_319
VVV_0, // META_TILE_TYPE_320
VVV_0, // META_TILE_TYPE_321
VVV_0, // META_TILE_TYPE_322
VVV_0, // META_TILE_TYPE_323
VVV_0, // META_TILE_TYPE_324
VVV_0, // META_TILE_TYPE_325
VVV_0, // META_TILE_TYPE_326
VVV_0, // META_TILE_TYPE_327
VVV_0, // META_TILE_TYPE_328
VVV_0, // META_TILE_TYPE_329
VVV_0, // META_TILE_TYPE_330
VVV_0, // META_TILE_TYPE_331
VVV_0, // META_TILE_TYPE_332
VVV_0, // META_TILE_TYPE_333
VVV_0, // META_TILE_TYPE_334
VVV_0, // META_TILE_TYPE_335
VVV_0, // META_TILE_TYPE_336
VVV_0, // META_TILE_TYPE_337
VVV_0, // META_TILE_TYPE_338
VVV_0, // META_TILE_TYPE_339
VVV_0, // META_TILE_TYPE_340
VVV_0, // META_TILE_TYPE_341
VVV_0, // META_TILE_TYPE_342
VVV_0, // META_TILE_TYPE_343
VVV_0, // META_TILE_TYPE_344
VVV_0, // META_TILE_TYPE_345
VVV_0, // META_TILE_TYPE_346
VVV_0, // META_TILE_TYPE_347
VVV_0, // META_TILE_TYPE_348
VVV_0, // META_TILE_TYPE_349
VVV_0, // META_TILE_TYPE_350
VVV_0, // META_TILE_TYPE_351
VVV_0, // META_TILE_TYPE_352
VVV_47, // META_TILE_TYPE_353
VVV_47, // META_TILE_TYPE_354
VVV_47, // META_TILE_TYPE_355
VVV_0, // META_TILE_TYPE_356
VVV_0, // META_TILE_TYPE_357
VVV_40, // META_TILE_TYPE_358
VVV_0, // META_TILE_TYPE_359
VVV_40, // META_TILE_TYPE_360
VVV_48, // META_TILE_TYPE_361
VVV_49, // META_TILE_TYPE_362
VVV_50, // META_TILE_TYPE_363
VVV_51, // META_TILE_TYPE_364
VVV_52, // META_TILE_TYPE_365
VVV_52, // META_TILE_TYPE_366
VVV_53, // META_TILE_TYPE_367
VVV_53, // META_TILE_TYPE_368
VVV_54, // META_TILE_TYPE_369
VVV_55, // META_TILE_TYPE_370
VVV_0, // META_TILE_TYPE_371
VVV_56, // META_TILE_TYPE_372
VVV_57, // META_TILE_TYPE_373
VVV_58, // META_TILE_TYPE_374
VVV_59, // META_TILE_TYPE_375
VVV_0, // META_TILE_TYPE_376
VVV_0, // META_TILE_TYPE_377
VVV_60, // META_TILE_TYPE_378
VVV_60, // META_TILE_TYPE_379
VVV_60, // META_TILE_TYPE_380
VVV_60, // META_TILE_TYPE_381
VVV_0, // META_TILE_TYPE_382
VVV_0, // META_TILE_TYPE_383
VVV_0, // META_TILE_TYPE_384
VVV_0, // META_TILE_TYPE_385
VVV_61, // META_TILE_TYPE_386
VVV_61, // META_TILE_TYPE_387
VVV_62, // META_TILE_TYPE_388
VVV_9, // META_TILE_TYPE_389
VVV_9, // META_TILE_TYPE_390
VVV_9, // META_TILE_TYPE_391
VVV_9, // META_TILE_TYPE_392
VVV_9, // META_TILE_TYPE_393
VVV_9, // META_TILE_TYPE_394
VVV_61, // META_TILE_TYPE_395
VVV_61, // META_TILE_TYPE_396
VVV_61, // META_TILE_TYPE_397
VVV_9, // META_TILE_TYPE_398
VVV_9, // META_TILE_TYPE_399
VVV_61, // META_TILE_TYPE_400
VVV_61, // META_TILE_TYPE_401
VVV_61, // META_TILE_TYPE_402
VVV_9, // META_TILE_TYPE_403
VVV_9, // META_TILE_TYPE_404
VVV_9, // META_TILE_TYPE_405
VVV_9, // META_TILE_TYPE_406
VVV_9, // META_TILE_TYPE_407
VVV_9, // META_TILE_TYPE_408
VVV_0, // META_TILE_TYPE_409
VVV_0, // META_TILE_TYPE_410
VVV_0, // META_TILE_TYPE_411
VVV_0, // META_TILE_TYPE_412
VVV_63, // META_TILE_TYPE_413
VVV_0, // META_TILE_TYPE_414
VVV_0, // META_TILE_TYPE_415
VVV_0, // META_TILE_TYPE_416
VVV_0, // META_TILE_TYPE_417
VVV_0, // META_TILE_TYPE_418
VVV_0, // META_TILE_TYPE_419
VVV_0, // META_TILE_TYPE_420
VVV_0, // META_TILE_TYPE_421
VVV_63, // META_TILE_TYPE_422
VVV_0, // META_TILE_TYPE_423
VVV_0, // META_TILE_TYPE_424
VVV_0, // META_TILE_TYPE_425
VVV_0, // META_TILE_TYPE_426
VVV_0, // META_TILE_TYPE_427
VVV_42, // META_TILE_TYPE_428
VVV_43, // META_TILE_TYPE_429
VVV_44, // META_TILE_TYPE_430
VVV_45, // META_TILE_TYPE_431
VVV_0, // META_TILE_TYPE_432
VVV_0, // META_TILE_TYPE_433
VVV_0, // META_TILE_TYPE_434
VVV_0, // META_TILE_TYPE_435
VVV_64, // META_TILE_TYPE_436
VVV_65, // META_TILE_TYPE_437
VVV_66, // META_TILE_TYPE_438
VVV_67, // META_TILE_TYPE_439
VVV_68, // META_TILE_TYPE_440
VVV_69, // META_TILE_TYPE_441
VVV_70, // META_TILE_TYPE_442
VVV_71, // META_TILE_TYPE_443
VVV_72, // META_TILE_TYPE_444
VVV_73, // META_TILE_TYPE_445
VVV_74, // META_TILE_TYPE_446
VVV_75, // META_TILE_TYPE_447
VVV_76, // META_TILE_TYPE_448
VVV_77, // META_TILE_TYPE_449
VVV_78, // META_TILE_TYPE_450
VVV_79, // META_TILE_TYPE_451
VVV_80, // META_TILE_TYPE_452
VVV_81, // META_TILE_TYPE_453
VVV_82, // META_TILE_TYPE_454
VVV_83, // META_TILE_TYPE_455
VVV_63, // META_TILE_TYPE_456
VVV_0, // META_TILE_TYPE_457
VVV_63, // META_TILE_TYPE_458
VVV_83, // META_TILE_TYPE_459
VVV_83, // META_TILE_TYPE_460
VVV_0, // META_TILE_TYPE_461
VVV_0, // META_TILE_TYPE_462
VVV_43, // META_TILE_TYPE_463
VVV_43, // META_TILE_TYPE_464
VVV_43, // META_TILE_TYPE_465
VVV_0, // META_TILE_TYPE_466
VVV_21, // META_TILE_TYPE_467
VVV_21, // META_TILE_TYPE_468
VVV_21, // META_TILE_TYPE_469
VVV_21, // META_TILE_TYPE_470
VVV_0, // META_TILE_TYPE_471
VVV_0, // META_TILE_TYPE_472
VVV_0, // META_TILE_TYPE_473
VVV_0, // META_TILE_TYPE_474
VVV_0, // META_TILE_TYPE_475
VVV_0, // META_TILE_TYPE_476
VVV_0, // META_TILE_TYPE_477
VVV_0, // META_TILE_TYPE_478
VVV_0, // META_TILE_TYPE_479
VVV_0, // META_TILE_TYPE_480
VVV_0, // META_TILE_TYPE_481
VVV_0, // META_TILE_TYPE_482
VVV_0, // META_TILE_TYPE_483
VVV_0, // META_TILE_TYPE_484
VVV_0, // META_TILE_TYPE_485
VVV_0, // META_TILE_TYPE_486
VVV_84, // META_TILE_TYPE_487
VVV_0, // META_TILE_TYPE_488
VVV_0, // META_TILE_TYPE_489
VVV_0, // META_TILE_TYPE_490
VVV_0, // META_TILE_TYPE_491
VVV_0, // META_TILE_TYPE_492
VVV_0, // META_TILE_TYPE_493
VVV_0, // META_TILE_TYPE_494
VVV_0, // META_TILE_TYPE_495
VVV_0, // META_TILE_TYPE_496
VVV_0, // META_TILE_TYPE_497
VVV_0, // META_TILE_TYPE_498
VVV_0, // META_TILE_TYPE_499
VVV_0, // META_TILE_TYPE_500
VVV_0, // META_TILE_TYPE_501
VVV_0, // META_TILE_TYPE_502
VVV_0, // META_TILE_TYPE_503
VVV_0, // META_TILE_TYPE_504
VVV_0, // META_TILE_TYPE_505
VVV_0, // META_TILE_TYPE_506
VVV_0, // META_TILE_TYPE_507
VVV_0, // META_TILE_TYPE_508
VVV_0, // META_TILE_TYPE_509
VVV_0, // META_TILE_TYPE_510
VVV_0, // META_TILE_TYPE_511
VVV_0, // META_TILE_TYPE_512
VVV_0, // META_TILE_TYPE_513
VVV_0, // META_TILE_TYPE_514
VVV_0, // META_TILE_TYPE_515
VVV_0, // META_TILE_TYPE_516
VVV_0, // META_TILE_TYPE_517
VVV_0, // META_TILE_TYPE_518
VVV_0, // META_TILE_TYPE_519
VVV_0, // META_TILE_TYPE_520
VVV_0, // META_TILE_TYPE_521
VVV_0, // META_TILE_TYPE_522
VVV_0, // META_TILE_TYPE_523
VVV_40, // META_TILE_TYPE_524
VVV_0, // META_TILE_TYPE_525
VVV_0, // META_TILE_TYPE_526
VVV_0, // META_TILE_TYPE_527
VVV_0, // META_TILE_TYPE_528
VVV_0, // META_TILE_TYPE_529
VVV_0, // META_TILE_TYPE_530
VVV_0, // META_TILE_TYPE_531
VVV_0, // META_TILE_TYPE_532
VVV_0, // META_TILE_TYPE_533
VVV_0, // META_TILE_TYPE_534
VVV_0, // META_TILE_TYPE_535
VVV_0, // META_TILE_TYPE_536
VVV_0, // META_TILE_TYPE_537
VVV_0, // META_TILE_TYPE_538
VVV_0, // META_TILE_TYPE_539
VVV_0, // META_TILE_TYPE_540
VVV_0, // META_TILE_TYPE_541
VVV_0, // META_TILE_TYPE_542
VVV_0, // META_TILE_TYPE_543
VVV_0, // META_TILE_TYPE_544
VVV_0, // META_TILE_TYPE_545
VVV_0, // META_TILE_TYPE_546
VVV_0, // META_TILE_TYPE_547
VVV_0, // META_TILE_TYPE_548
VVV_40, // META_TILE_TYPE_549
VVV_0, // META_TILE_TYPE_550
VVV_0, // META_TILE_TYPE_551
VVV_0, // META_TILE_TYPE_552
VVV_0, // META_TILE_TYPE_553
VVV_0, // META_TILE_TYPE_554
VVV_0, // META_TILE_TYPE_555
VVV_0, // META_TILE_TYPE_556
VVV_0, // META_TILE_TYPE_557
VVV_0, // META_TILE_TYPE_558
VVV_0, // META_TILE_TYPE_559
VVV_0, // META_TILE_TYPE_560
VVV_0, // META_TILE_TYPE_561
VVV_16, // META_TILE_TYPE_562
VVV_16, // META_TILE_TYPE_563
VVV_16, // META_TILE_TYPE_564
VVV_16, // META_TILE_TYPE_565
VVV_16, // META_TILE_TYPE_566
VVV_16, // META_TILE_TYPE_567
VVV_16, // META_TILE_TYPE_568
VVV_16, // META_TILE_TYPE_569
VVV_16, // META_TILE_TYPE_570
VVV_16, // META_TILE_TYPE_571
VVV_16, // META_TILE_TYPE_572
VVV_16, // META_TILE_TYPE_573
VVV_16, // META_TILE_TYPE_574
VVV_16, // META_TILE_TYPE_575
VVV_16, // META_TILE_TYPE_576
VVV_16, // META_TILE_TYPE_577
VVV_16, // META_TILE_TYPE_578
VVV_16, // META_TILE_TYPE_579
VVV_16, // META_TILE_TYPE_580
VVV_16, // META_TILE_TYPE_581
VVV_16, // META_TILE_TYPE_582
VVV_16, // META_TILE_TYPE_583
VVV_16, // META_TILE_TYPE_584
VVV_16, // META_TILE_TYPE_585
VVV_16, // META_TILE_TYPE_586
VVV_16, // META_TILE_TYPE_587
VVV_16, // META_TILE_TYPE_588
VVV_16, // META_TILE_TYPE_589
VVV_85, // META_TILE_TYPE_590
VVV_85, // META_TILE_TYPE_591
VVV_85, // META_TILE_TYPE_592
VVV_85, // META_TILE_TYPE_593
VVV_85, // META_TILE_TYPE_594
VVV_85, // META_TILE_TYPE_595
VVV_85, // META_TILE_TYPE_596
VVV_85, // META_TILE_TYPE_597
VVV_85, // META_TILE_TYPE_598
VVV_0, // META_TILE_TYPE_599
VVV_0, // META_TILE_TYPE_600
VVV_0, // META_TILE_TYPE_601
VVV_0, // META_TILE_TYPE_602
VVV_0, // META_TILE_TYPE_603
VVV_0, // META_TILE_TYPE_604
VVV_0, // META_TILE_TYPE_605
VVV_0, // META_TILE_TYPE_606
VVV_0, // META_TILE_TYPE_607
VVV_0, // META_TILE_TYPE_608
VVV_0, // META_TILE_TYPE_609
VVV_9, // META_TILE_TYPE_610
VVV_9, // META_TILE_TYPE_611
VVV_0, // META_TILE_TYPE_612
VVV_0, // META_TILE_TYPE_613
VVV_0, // META_TILE_TYPE_614
VVV_86, // META_TILE_TYPE_615
VVV_0, // META_TILE_TYPE_616
VVV_0, // META_TILE_TYPE_617
VVV_86, // META_TILE_TYPE_618
VVV_0, // META_TILE_TYPE_619
VVV_0, // META_TILE_TYPE_620
VVV_41, // META_TILE_TYPE_621
VVV_0, // META_TILE_TYPE_622
VVV_0, // META_TILE_TYPE_623
VVV_41, // META_TILE_TYPE_624
VVV_40, // META_TILE_TYPE_625
VVV_0, // META_TILE_TYPE_626
VVV_0, // META_TILE_TYPE_627
VVV_0, // META_TILE_TYPE_628
VVV_0, // META_TILE_TYPE_629
VVV_0, // META_TILE_TYPE_630
VVV_86, // META_TILE_TYPE_631
VVV_0, // META_TILE_TYPE_632
VVV_0, // META_TILE_TYPE_633
VVV_86, // META_TILE_TYPE_634
VVV_0, // META_TILE_TYPE_635
VVV_0, // META_TILE_TYPE_636
VVV_41, // META_TILE_TYPE_637
VVV_0, // META_TILE_TYPE_638
VVV_0, // META_TILE_TYPE_639
VVV_41, // META_TILE_TYPE_640
VVV_40, // META_TILE_TYPE_641
VVV_0, // META_TILE_TYPE_642
VVV_0, // META_TILE_TYPE_643
VVV_0, // META_TILE_TYPE_644
VVV_0, // META_TILE_TYPE_645
VVV_0, // META_TILE_TYPE_646
VVV_86, // META_TILE_TYPE_647
VVV_0, // META_TILE_TYPE_648
VVV_0, // META_TILE_TYPE_649
VVV_86, // META_TILE_TYPE_650
VVV_0, // META_TILE_TYPE_651
VVV_0, // META_TILE_TYPE_652
#ifdef EU
VVV_0, // META_TILE_TYPE_653
#else
VVV_41, // META_TILE_TYPE_653
#endif
VVV_0, // META_TILE_TYPE_654
VVV_0, // META_TILE_TYPE_655
#ifdef EU
VVV_0, // META_TILE_TYPE_656
#else
VVV_41, // META_TILE_TYPE_656
#endif
VVV_40, // META_TILE_TYPE_657
VVV_0, // META_TILE_TYPE_658
VVV_0, // META_TILE_TYPE_659
VVV_0, // META_TILE_TYPE_660
VVV_0, // META_TILE_TYPE_661
VVV_86, // META_TILE_TYPE_662
VVV_86, // META_TILE_TYPE_663
VVV_86, // META_TILE_TYPE_664
VVV_86, // META_TILE_TYPE_665
VVV_86, // META_TILE_TYPE_666
VVV_86, // META_TILE_TYPE_667
VVV_86, // META_TILE_TYPE_668
VVV_86, // META_TILE_TYPE_669
VVV_86, // META_TILE_TYPE_670
VVV_86, // META_TILE_TYPE_671
VVV_86, // META_TILE_TYPE_672
VVV_86, // META_TILE_TYPE_673
VVV_86, // META_TILE_TYPE_674
VVV_86, // META_TILE_TYPE_675
VVV_86, // META_TILE_TYPE_676
VVV_86, // META_TILE_TYPE_677
VVV_86, // META_TILE_TYPE_678
VVV_86, // META_TILE_TYPE_679
VVV_86, // META_TILE_TYPE_680
VVV_86, // META_TILE_TYPE_681
VVV_86, // META_TILE_TYPE_682
VVV_86, // META_TILE_TYPE_683
VVV_86, // META_TILE_TYPE_684
VVV_86, // META_TILE_TYPE_685
VVV_86, // META_TILE_TYPE_686
VVV_86, // META_TILE_TYPE_687
VVV_86, // META_TILE_TYPE_688
VVV_86, // META_TILE_TYPE_689
VVV_86, // META_TILE_TYPE_690
VVV_86, // META_TILE_TYPE_691
VVV_86, // META_TILE_TYPE_692
VVV_86, // META_TILE_TYPE_693
VVV_86, // META_TILE_TYPE_694
VVV_86, // META_TILE_TYPE_695
VVV_86, // META_TILE_TYPE_696
VVV_86, // META_TILE_TYPE_697
VVV_86, // META_TILE_TYPE_698
VVV_86, // META_TILE_TYPE_699
VVV_86, // META_TILE_TYPE_700
VVV_86, // META_TILE_TYPE_701
VVV_86, // META_TILE_TYPE_702
VVV_86, // META_TILE_TYPE_703
VVV_86, // META_TILE_TYPE_704
VVV_86, // META_TILE_TYPE_705
VVV_86, // META_TILE_TYPE_706
VVV_86, // META_TILE_TYPE_707
VVV_86, // META_TILE_TYPE_708
VVV_86, // META_TILE_TYPE_709
VVV_86, // META_TILE_TYPE_710
VVV_86, // META_TILE_TYPE_711
VVV_86, // META_TILE_TYPE_712
VVV_86, // META_TILE_TYPE_713
VVV_86, // META_TILE_TYPE_714
VVV_86, // META_TILE_TYPE_715
VVV_86, // META_TILE_TYPE_716
VVV_86, // META_TILE_TYPE_717
VVV_86, // META_TILE_TYPE_718
VVV_86, // META_TILE_TYPE_719
VVV_86, // META_TILE_TYPE_720
VVV_86, // META_TILE_TYPE_721
VVV_86, // META_TILE_TYPE_722
VVV_86, // META_TILE_TYPE_723
VVV_86, // META_TILE_TYPE_724
VVV_86, // META_TILE_TYPE_725
VVV_86, // META_TILE_TYPE_726
VVV_86, // META_TILE_TYPE_727
VVV_86, // META_TILE_TYPE_728
VVV_86, // META_TILE_TYPE_729
VVV_86, // META_TILE_TYPE_730
VVV_86, // META_TILE_TYPE_731
VVV_86, // META_TILE_TYPE_732
VVV_86, // META_TILE_TYPE_733
VVV_86, // META_TILE_TYPE_734
VVV_86, // META_TILE_TYPE_735
VVV_86, // META_TILE_TYPE_736
VVV_86, // META_TILE_TYPE_737
VVV_86, // META_TILE_TYPE_738
VVV_86, // META_TILE_TYPE_739
VVV_86, // META_TILE_TYPE_740
VVV_86, // META_TILE_TYPE_741
VVV_86, // META_TILE_TYPE_742
VVV_86, // META_TILE_TYPE_743
VVV_86, // META_TILE_TYPE_744
VVV_86, // META_TILE_TYPE_745
VVV_86, // META_TILE_TYPE_746
VVV_86, // META_TILE_TYPE_747
VVV_86, // META_TILE_TYPE_748
VVV_86, // META_TILE_TYPE_749
VVV_86, // META_TILE_TYPE_750
VVV_86, // META_TILE_TYPE_751
VVV_86, // META_TILE_TYPE_752
VVV_86, // META_TILE_TYPE_753
VVV_10, // META_TILE_TYPE_754
VVV_9, // META_TILE_TYPE_755
VVV_10, // META_TILE_TYPE_756
VVV_10, // META_TILE_TYPE_757
VVV_13, // META_TILE_TYPE_758
VVV_0, // META_TILE_TYPE_759
VVV_0, // META_TILE_TYPE_760
VVV_0, // META_TILE_TYPE_761
VVV_0, // META_TILE_TYPE_762
VVV_63, // META_TILE_TYPE_763
VVV_0, // META_TILE_TYPE_764
VVV_0, // META_TILE_TYPE_765
VVV_0, // META_TILE_TYPE_766
VVV_0, // META_TILE_TYPE_767
VVV_0, // META_TILE_TYPE_768
VVV_0, // META_TILE_TYPE_769
VVV_0, // META_TILE_TYPE_770
VVV_0, // META_TILE_TYPE_771
VVV_0, // META_TILE_TYPE_772
VVV_0, // META_TILE_TYPE_773
VVV_0, // META_TILE_TYPE_774
VVV_0, // META_TILE_TYPE_775
VVV_0, // META_TILE_TYPE_776
VVV_0, // META_TILE_TYPE_777
VVV_0, // META_TILE_TYPE_778
VVV_0, // META_TILE_TYPE_779
VVV_0, // META_TILE_TYPE_780
VVV_16, // META_TILE_TYPE_781
VVV_16, // META_TILE_TYPE_782
VVV_0, // META_TILE_TYPE_783
VVV_12, // META_TILE_TYPE_784
VVV_0, // META_TILE_TYPE_785
VVV_0, // META_TILE_TYPE_786
VVV_1, // META_TILE_TYPE_787
VVV_24, // META_TILE_TYPE_788
VVV_87, // META_TILE_TYPE_789
VVV_88, // META_TILE_TYPE_790
VVV_89, // META_TILE_TYPE_791
VVV_89, // META_TILE_TYPE_792
VVV_90, // META_TILE_TYPE_793
VVV_91, // META_TILE_TYPE_794
VVV_92, // META_TILE_TYPE_795
VVV_93, // META_TILE_TYPE_796
VVV_94, // META_TILE_TYPE_797
VVV_95, // META_TILE_TYPE_798
VVV_96, // META_TILE_TYPE_799
VVV_0, // META_TILE_TYPE_800
VVV_0, // META_TILE_TYPE_801
VVV_0, // META_TILE_TYPE_802
VVV_13, // META_TILE_TYPE_803
VVV_13, // META_TILE_TYPE_804
VVV_13, // META_TILE_TYPE_805
VVV_13, // META_TILE_TYPE_806
VVV_13, // META_TILE_TYPE_807
VVV_13, // META_TILE_TYPE_808
VVV_13, // META_TILE_TYPE_809
VVV_13, // META_TILE_TYPE_810
VVV_13, // META_TILE_TYPE_811
VVV_13, // META_TILE_TYPE_812
VVV_13, // META_TILE_TYPE_813
VVV_13, // META_TILE_TYPE_814
VVV_13, // META_TILE_TYPE_815
VVV_13, // META_TILE_TYPE_816
VVV_13, // META_TILE_TYPE_817
VVV_13, // META_TILE_TYPE_818
VVV_13, // META_TILE_TYPE_819
VVV_13, // META_TILE_TYPE_820
VVV_13, // META_TILE_TYPE_821
VVV_13, // META_TILE_TYPE_822
VVV_13, // META_TILE_TYPE_823
VVV_13, // META_TILE_TYPE_824
VVV_13, // META_TILE_TYPE_825
VVV_13, // META_TILE_TYPE_826
VVV_13, // META_TILE_TYPE_827
VVV_13, // META_TILE_TYPE_828
VVV_13, // META_TILE_TYPE_829
VVV_13, // META_TILE_TYPE_830
VVV_13, // META_TILE_TYPE_831
VVV_13, // META_TILE_TYPE_832
VVV_12, // META_TILE_TYPE_833
VVV_12, // META_TILE_TYPE_834
VVV_12, // META_TILE_TYPE_835
VVV_12, // META_TILE_TYPE_836
VVV_12, // META_TILE_TYPE_837
VVV_12, // META_TILE_TYPE_838
VVV_97, // META_TILE_TYPE_839
VVV_97, // META_TILE_TYPE_840
VVV_97, // META_TILE_TYPE_841
VVV_97, // META_TILE_TYPE_842
VVV_98, // META_TILE_TYPE_843
VVV_98, // META_TILE_TYPE_844
VVV_0, // META_TILE_TYPE_845
VVV_0, // META_TILE_TYPE_846
VVV_99, // META_TILE_TYPE_847
VVV_99, // META_TILE_TYPE_848
VVV_99, // META_TILE_TYPE_849
VVV_99, // META_TILE_TYPE_850
VVV_100, // META_TILE_TYPE_851
VVV_0, // META_TILE_TYPE_852
VVV_101, // META_TILE_TYPE_853
VVV_102, // META_TILE_TYPE_854
VVV_103, // META_TILE_TYPE_855
VVV_104, // META_TILE_TYPE_856
VVV_105, // META_TILE_TYPE_857
VVV_106, // META_TILE_TYPE_858
VVV_107, // META_TILE_TYPE_859
VVV_108, // META_TILE_TYPE_860
VVV_109, // META_TILE_TYPE_861
VVV_110, // META_TILE_TYPE_862
VVV_111, // META_TILE_TYPE_863
VVV_112, // META_TILE_TYPE_864
VVV_112, // META_TILE_TYPE_865
VVV_112, // META_TILE_TYPE_866
VVV_112, // META_TILE_TYPE_867
VVV_112, // META_TILE_TYPE_868
VVV_0, // META_TILE_TYPE_869
VVV_113, // META_TILE_TYPE_870
VVV_46, // META_TILE_TYPE_871
VVV_46, // META_TILE_TYPE_872
VVV_114, // META_TILE_TYPE_873
VVV_114, // META_TILE_TYPE_874
VVV_114, // META_TILE_TYPE_875
VVV_114, // META_TILE_TYPE_876
VVV_114, // META_TILE_TYPE_877
VVV_114, // META_TILE_TYPE_878
VVV_114, // META_TILE_TYPE_879
VVV_114, // META_TILE_TYPE_880
VVV_114, // META_TILE_TYPE_881
VVV_114, // META_TILE_TYPE_882
VVV_114, // META_TILE_TYPE_883
VVV_114, // META_TILE_TYPE_884
VVV_114, // META_TILE_TYPE_885
VVV_114, // META_TILE_TYPE_886
VVV_115, // META_TILE_TYPE_887
VVV_115, // META_TILE_TYPE_888
VVV_0, // META_TILE_TYPE_889
VVV_0, // META_TILE_TYPE_890
VVV_0, // META_TILE_TYPE_891
VVV_0, // META_TILE_TYPE_892
VVV_0, // META_TILE_TYPE_893
VVV_0, // META_TILE_TYPE_894
VVV_0, // META_TILE_TYPE_895
VVV_0, // META_TILE_TYPE_896
VVV_0, // META_TILE_TYPE_897
VVV_0, // META_TILE_TYPE_898
VVV_0, // META_TILE_TYPE_899
VVV_0, // META_TILE_TYPE_900
VVV_0, // META_TILE_TYPE_901
VVV_0, // META_TILE_TYPE_902
VVV_0, // META_TILE_TYPE_903
VVV_0, // META_TILE_TYPE_904
VVV_0, // META_TILE_TYPE_905
VVV_0, // META_TILE_TYPE_906
VVV_0, // META_TILE_TYPE_907
VVV_0, // META_TILE_TYPE_908
VVV_0, // META_TILE_TYPE_909
VVV_0, // META_TILE_TYPE_910
VVV_0, // META_TILE_TYPE_911
VVV_0, // META_TILE_TYPE_912
VVV_0, // META_TILE_TYPE_913
VVV_0, // META_TILE_TYPE_914
VVV_0, // META_TILE_TYPE_915
VVV_42, // META_TILE_TYPE_916
VVV_43, // META_TILE_TYPE_917
VVV_44, // META_TILE_TYPE_918
VVV_45, // META_TILE_TYPE_919
VVV_0, // META_TILE_TYPE_920
VVV_0, // META_TILE_TYPE_921
VVV_0, // META_TILE_TYPE_922
VVV_0, // META_TILE_TYPE_923
VVV_0, // META_TILE_TYPE_924
VVV_0, // META_TILE_TYPE_925
VVV_0, // META_TILE_TYPE_926
VVV_0, // META_TILE_TYPE_927
VVV_0, // META_TILE_TYPE_928
VVV_116, // META_TILE_TYPE_929
VVV_116, // META_TILE_TYPE_930
VVV_116, // META_TILE_TYPE_931
VVV_0, // META_TILE_TYPE_932
VVV_0, // META_TILE_TYPE_933
VVV_0, // META_TILE_TYPE_934
VVV_0, // META_TILE_TYPE_935
VVV_43, // META_TILE_TYPE_936
VVV_42, // META_TILE_TYPE_937
VVV_45, // META_TILE_TYPE_938
VVV_44, // META_TILE_TYPE_939
VVV_117, // META_TILE_TYPE_940
VVV_0, // META_TILE_TYPE_941
VVV_82, // META_TILE_TYPE_942
VVV_0, // META_TILE_TYPE_943
VVV_0, // META_TILE_TYPE_944
VVV_0, // META_TILE_TYPE_945
VVV_0, // META_TILE_TYPE_946
VVV_0, // META_TILE_TYPE_947
VVV_0, // META_TILE_TYPE_948
VVV_43, // META_TILE_TYPE_949
VVV_42, // META_TILE_TYPE_950
VVV_0, // META_TILE_TYPE_951
VVV_0, // META_TILE_TYPE_952
VVV_44, // META_TILE_TYPE_953
VVV_0, // META_TILE_TYPE_954
VVV_0, // META_TILE_TYPE_955
VVV_45, // META_TILE_TYPE_956
VVV_0, // META_TILE_TYPE_957
VVV_0, // META_TILE_TYPE_958
VVV_0, // META_TILE_TYPE_959
VVV_0, // META_TILE_TYPE_960
VVV_41, // META_TILE_TYPE_961
VVV_40, // META_TILE_TYPE_962
VVV_38, // META_TILE_TYPE_963
VVV_38, // META_TILE_TYPE_964
VVV_116, // META_TILE_TYPE_965
VVV_116, // META_TILE_TYPE_966
VVV_116, // META_TILE_TYPE_967
VVV_116, // META_TILE_TYPE_968
VVV_116, // META_TILE_TYPE_969
VVV_116, // META_TILE_TYPE_970
VVV_116, // META_TILE_TYPE_971
VVV_116, // META_TILE_TYPE_972
VVV_116, // META_TILE_TYPE_973
VVV_116, // META_TILE_TYPE_974
VVV_116, // META_TILE_TYPE_975
VVV_116, // META_TILE_TYPE_976
VVV_116, // META_TILE_TYPE_977
VVV_90, // META_TILE_TYPE_978
VVV_41, // META_TILE_TYPE_979
VVV_41, // META_TILE_TYPE_980
VVV_41, // META_TILE_TYPE_981
VVV_12, // META_TILE_TYPE_982
VVV_0, // META_TILE_TYPE_983
VVV_12, // META_TILE_TYPE_984
VVV_12, // META_TILE_TYPE_985
VVV_41, // META_TILE_TYPE_986
VVV_41, // META_TILE_TYPE_987
VVV_116, // META_TILE_TYPE_988
VVV_0, // META_TILE_TYPE_989
VVV_0, // META_TILE_TYPE_990
VVV_10, // META_TILE_TYPE_991
VVV_0, // META_TILE_TYPE_992
VVV_0, // META_TILE_TYPE_993
VVV_0, // META_TILE_TYPE_994
VVV_0, // META_TILE_TYPE_995
VVV_0, // META_TILE_TYPE_996
VVV_0, // META_TILE_TYPE_997
VVV_40, // META_TILE_TYPE_998
VVV_0, // META_TILE_TYPE_999
VVV_0, // META_TILE_TYPE_1000
VVV_0, // META_TILE_TYPE_1001
VVV_40, // META_TILE_TYPE_1002
VVV_0, // META_TILE_TYPE_1003
VVV_10, // META_TILE_TYPE_1004
VVV_10, // META_TILE_TYPE_1005
VVV_10, // META_TILE_TYPE_1006
VVV_10, // META_TILE_TYPE_1007
VVV_10, // META_TILE_TYPE_1008
VVV_10, // META_TILE_TYPE_1009
VVV_10, // META_TILE_TYPE_1010
VVV_40, // META_TILE_TYPE_1011
VVV_40, // META_TILE_TYPE_1012
VVV_84, // META_TILE_TYPE_1013
VVV_84, // META_TILE_TYPE_1014
VVV_84, // META_TILE_TYPE_1015
VVV_84, // META_TILE_TYPE_1016
VVV_0, // META_TILE_TYPE_1017
VVV_61, // META_TILE_TYPE_1018
VVV_61, // META_TILE_TYPE_1019
VVV_61, // META_TILE_TYPE_1020
VVV_61, // META_TILE_TYPE_1021
VVV_61, // META_TILE_TYPE_1022
VVV_61, // META_TILE_TYPE_1023
VVV_61, // META_TILE_TYPE_1024
VVV_61, // META_TILE_TYPE_1025
VVV_62, // META_TILE_TYPE_1026
VVV_62, // META_TILE_TYPE_1027
VVV_62, // META_TILE_TYPE_1028
VVV_62, // META_TILE_TYPE_1029
VVV_62, // META_TILE_TYPE_1030
VVV_62, // META_TILE_TYPE_1031
VVV_62, // META_TILE_TYPE_1032
VVV_62, // META_TILE_TYPE_1033
VVV_9, // META_TILE_TYPE_1034
VVV_9, // META_TILE_TYPE_1035
VVV_9, // META_TILE_TYPE_1036
VVV_9, // META_TILE_TYPE_1037
VVV_9, // META_TILE_TYPE_1038
VVV_9, // META_TILE_TYPE_1039
VVV_9, // META_TILE_TYPE_1040
VVV_9, // META_TILE_TYPE_1041
VVV_9, // META_TILE_TYPE_1042
VVV_9, // META_TILE_TYPE_1043
VVV_9, // META_TILE_TYPE_1044
VVV_9, // META_TILE_TYPE_1045
VVV_9, // META_TILE_TYPE_1046
VVV_9, // META_TILE_TYPE_1047
VVV_9, // META_TILE_TYPE_1048
VVV_9, // META_TILE_TYPE_1049
VVV_9, // META_TILE_TYPE_1050
VVV_42, // META_TILE_TYPE_1051
VVV_10, // META_TILE_TYPE_1052
VVV_10, // META_TILE_TYPE_1053
VVV_10, // META_TILE_TYPE_1054
VVV_10, // META_TILE_TYPE_1055
VVV_10, // META_TILE_TYPE_1056
VVV_10, // META_TILE_TYPE_1057
VVV_15, // META_TILE_TYPE_1058
VVV_10, // META_TILE_TYPE_1059
VVV_42, // META_TILE_TYPE_1060
VVV_13, // META_TILE_TYPE_1061
VVV_0, // META_TILE_TYPE_1062
VVV_42, // META_TILE_TYPE_1063
VVV_0, // META_TILE_TYPE_1064
VVV_0, // META_TILE_TYPE_1065
VVV_0, // META_TILE_TYPE_1066
VVV_0, // META_TILE_TYPE_1067
VVV_16, // META_TILE_TYPE_1068
VVV_16, // META_TILE_TYPE_1069
VVV_16, // META_TILE_TYPE_1070
VVV_16, // META_TILE_TYPE_1071
VVV_16, // META_TILE_TYPE_1072
VVV_16, // META_TILE_TYPE_1073
VVV_16, // META_TILE_TYPE_1074
VVV_16, // META_TILE_TYPE_1075
VVV_16, // META_TILE_TYPE_1076
VVV_9, // META_TILE_TYPE_1077
VVV_9, // META_TILE_TYPE_1078
VVV_9, // META_TILE_TYPE_1079
VVV_56, // META_TILE_TYPE_1080
VVV_10, // META_TILE_TYPE_1081
VVV_42, // META_TILE_TYPE_1082
VVV_0, // META_TILE_TYPE_1083
VVV_10, // META_TILE_TYPE_1084
VVV_79, // META_TILE_TYPE_1085
VVV_77, // META_TILE_TYPE_1086
VVV_0, // META_TILE_TYPE_1087
VVV_0, // META_TILE_TYPE_1088
VVV_0, // META_TILE_TYPE_1089
VVV_0, // META_TILE_TYPE_1090
VVV_10, // META_TILE_TYPE_1091
VVV_0, // META_TILE_TYPE_1092
VVV_0, // META_TILE_TYPE_1093
VVV_0, // META_TILE_TYPE_1094
VVV_78, // META_TILE_TYPE_1095
VVV_78, // META_TILE_TYPE_1096
VVV_12, // META_TILE_TYPE_1097
VVV_12, // META_TILE_TYPE_1098
VVV_12, // META_TILE_TYPE_1099
VVV_12, // META_TILE_TYPE_1100
VVV_61, // META_TILE_TYPE_1101
VVV_61, // META_TILE_TYPE_1102
VVV_61, // META_TILE_TYPE_1103
VVV_40, // META_TILE_TYPE_1104
VVV_12, // META_TILE_TYPE_1105
VVV_40, // META_TILE_TYPE_1106
VVV_10, // META_TILE_TYPE_1107
VVV_10, // META_TILE_TYPE_1108
VVV_10, // META_TILE_TYPE_1109
VVV_0, // META_TILE_TYPE_1110
VVV_0, // META_TILE_TYPE_1111
VVV_39, // META_TILE_TYPE_1112
VVV_39, // META_TILE_TYPE_1113
VVV_39, // META_TILE_TYPE_1114
VVV_39, // META_TILE_TYPE_1115
VVV_39, // META_TILE_TYPE_1116
VVV_39, // META_TILE_TYPE_1117
VVV_38, // META_TILE_TYPE_1118
VVV_38, // META_TILE_TYPE_1119
VVV_52, // META_TILE_TYPE_1120
VVV_52, // META_TILE_TYPE_1121
VVV_12, // META_TILE_TYPE_1122
VVV_55, // META_TILE_TYPE_1123
VVV_0, // META_TILE_TYPE_1124
VVV_0, // META_TILE_TYPE_1125
VVV_0, // META_TILE_TYPE_1126
VVV_0, // META_TILE_TYPE_1127
VVV_0, // META_TILE_TYPE_1128
VVV_54, // META_TILE_TYPE_1129
VVV_0, // META_TILE_TYPE_1130
VVV_0, // META_TILE_TYPE_1131
VVV_0, // META_TILE_TYPE_1132
VVV_0, // META_TILE_TYPE_1133
VVV_40, // META_TILE_TYPE_1134
VVV_53, // META_TILE_TYPE_1135
VVV_53, // META_TILE_TYPE_1136
VVV_40, // META_TILE_TYPE_1137
VVV_55, // META_TILE_TYPE_1138
VVV_12, // META_TILE_TYPE_1139
VVV_0, // META_TILE_TYPE_1140
VVV_12, // META_TILE_TYPE_1141
VVV_12, // META_TILE_TYPE_1142
VVV_12, // META_TILE_TYPE_1143
VVV_12, // META_TILE_TYPE_1144
VVV_12, // META_TILE_TYPE_1145
VVV_54, // META_TILE_TYPE_1146
VVV_13, // META_TILE_TYPE_1147
VVV_40, // META_TILE_TYPE_1148
VVV_0, // META_TILE_TYPE_1149
VVV_0, // META_TILE_TYPE_1150
VVV_0, // META_TILE_TYPE_1151
VVV_52, // META_TILE_TYPE_1152
VVV_52, // META_TILE_TYPE_1153
VVV_52, // META_TILE_TYPE_1154
VVV_10, // META_TILE_TYPE_1155
VVV_10, // META_TILE_TYPE_1156
VVV_0, // META_TILE_TYPE_1157
VVV_0, // META_TILE_TYPE_1158
VVV_0, // META_TILE_TYPE_1159
VVV_0, // META_TILE_TYPE_1160
VVV_40, // META_TILE_TYPE_1161
VVV_15, // META_TILE_TYPE_1162
VVV_15, // META_TILE_TYPE_1163
VVV_51, // META_TILE_TYPE_1164
VVV_16, // META_TILE_TYPE_1165
VVV_10, // META_TILE_TYPE_1166
VVV_10, // META_TILE_TYPE_1167
VVV_16, // META_TILE_TYPE_1168
VVV_16, // META_TILE_TYPE_1169
VVV_10, // META_TILE_TYPE_1170
VVV_10, // META_TILE_TYPE_1171
VVV_10, // META_TILE_TYPE_1172
VVV_10, // META_TILE_TYPE_1173
VVV_0, // META_TILE_TYPE_1174
VVV_0, // META_TILE_TYPE_1175
VVV_15, // META_TILE_TYPE_1176
VVV_9, // META_TILE_TYPE_1177
VVV_14, // META_TILE_TYPE_1178
VVV_15, // META_TILE_TYPE_1179
VVV_14, // META_TILE_TYPE_1180
VVV_15, // META_TILE_TYPE_1181
VVV_15, // META_TILE_TYPE_1182
VVV_15, // META_TILE_TYPE_1183
VVV_0, // META_TILE_TYPE_1184
VVV_0, // META_TILE_TYPE_1185
VVV_0, // META_TILE_TYPE_1186
VVV_0, // META_TILE_TYPE_1187
VVV_0, // META_TILE_TYPE_1188
VVV_0, // META_TILE_TYPE_1189
VVV_0, // META_TILE_TYPE_1190
VVV_0, // META_TILE_TYPE_1191
VVV_0, // META_TILE_TYPE_1192
VVV_0, // META_TILE_TYPE_1193
VVV_116, // META_TILE_TYPE_1194
VVV_116, // META_TILE_TYPE_1195
VVV_116, // META_TILE_TYPE_1196
VVV_116, // META_TILE_TYPE_1197
VVV_116, // META_TILE_TYPE_1198
VVV_116, // META_TILE_TYPE_1199
VVV_116, // META_TILE_TYPE_1200
VVV_116, // META_TILE_TYPE_1201
VVV_116, // META_TILE_TYPE_1202
VVV_116, // META_TILE_TYPE_1203
VVV_116, // META_TILE_TYPE_1204
VVV_116, // META_TILE_TYPE_1205
VVV_116, // META_TILE_TYPE_1206
VVV_15, // META_TILE_TYPE_1207
VVV_40, // META_TILE_TYPE_1208
VVV_15, // META_TILE_TYPE_1209
VVV_40, // META_TILE_TYPE_1210
VVV_40, // META_TILE_TYPE_1211
VVV_15, // META_TILE_TYPE_1212
VVV_12, // META_TILE_TYPE_1213
VVV_12, // META_TILE_TYPE_1214
VVV_12, // META_TILE_TYPE_1215
VVV_12, // META_TILE_TYPE_1216
VVV_12, // META_TILE_TYPE_1217
VVV_25, // META_TILE_TYPE_1218
VVV_40, // META_TILE_TYPE_1219
VVV_40, // META_TILE_TYPE_1220
VVV_40, // META_TILE_TYPE_1221
VVV_0, // META_TILE_TYPE_1222
VVV_16, // META_TILE_TYPE_1223
VVV_16, // META_TILE_TYPE_1224
VVV_116, // META_TILE_TYPE_1225
VVV_0, // META_TILE_TYPE_1226
VVV_0, // META_TILE_TYPE_1227
VVV_12, // META_TILE_TYPE_1228
VVV_45, // META_TILE_TYPE_1229
VVV_0, // META_TILE_TYPE_1230
VVV_40, // META_TILE_TYPE_1231
VVV_40, // META_TILE_TYPE_1232
VVV_43, // META_TILE_TYPE_1233
VVV_25, // META_TILE_TYPE_1234
VVV_0, // META_TILE_TYPE_1235
VVV_10, // META_TILE_TYPE_1236
VVV_0, // META_TILE_TYPE_1237
VVV_40, // META_TILE_TYPE_1238
VVV_0, // META_TILE_TYPE_1239
VVV_43, // META_TILE_TYPE_1240
VVV_43, // META_TILE_TYPE_1241
VVV_43, // META_TILE_TYPE_1242
VVV_0, // META_TILE_TYPE_1243
VVV_42, // META_TILE_TYPE_1244
VVV_42, // META_TILE_TYPE_1245
VVV_42, // META_TILE_TYPE_1246
VVV_42, // META_TILE_TYPE_1247
VVV_0, // META_TILE_TYPE_1248
VVV_116, // META_TILE_TYPE_1249
VVV_116, // META_TILE_TYPE_1250
VVV_116, // META_TILE_TYPE_1251
VVV_116, // META_TILE_TYPE_1252
VVV_116, // META_TILE_TYPE_1253
VVV_116, // META_TILE_TYPE_1254
VVV_116, // META_TILE_TYPE_1255
VVV_116, // META_TILE_TYPE_1256
VVV_116, // META_TILE_TYPE_1257
VVV_116, // META_TILE_TYPE_1258
VVV_116, // META_TILE_TYPE_1259
VVV_44, // META_TILE_TYPE_1260
VVV_42, // META_TILE_TYPE_1261
VVV_42, // META_TILE_TYPE_1262
VVV_0, // META_TILE_TYPE_1263
VVV_38, // META_TILE_TYPE_1264
VVV_38, // META_TILE_TYPE_1265
VVV_0, // META_TILE_TYPE_1266
VVV_0, // META_TILE_TYPE_1267
VVV_0, // META_TILE_TYPE_1268
VVV_0, // META_TILE_TYPE_1269
VVV_0, // META_TILE_TYPE_1270
VVV_0, // META_TILE_TYPE_1271
VVV_0, // META_TILE_TYPE_1272
VVV_0, // META_TILE_TYPE_1273
VVV_0, // META_TILE_TYPE_1274
VVV_63, // META_TILE_TYPE_1275
VVV_83, // META_TILE_TYPE_1276
VVV_0, // META_TILE_TYPE_1277
VVV_0, // META_TILE_TYPE_1278
VVV_0, // META_TILE_TYPE_1279
VVV_0, // META_TILE_TYPE_1280
VVV_38, // META_TILE_TYPE_1281
VVV_38, // META_TILE_TYPE_1282
VVV_40, // META_TILE_TYPE_1283
VVV_12, // META_TILE_TYPE_1284
VVV_12, // META_TILE_TYPE_1285
VVV_12, // META_TILE_TYPE_1286
VVV_12, // META_TILE_TYPE_1287
VVV_12, // META_TILE_TYPE_1288
VVV_12, // META_TILE_TYPE_1289
VVV_12, // META_TILE_TYPE_1290
VVV_12, // META_TILE_TYPE_1291
VVV_12, // META_TILE_TYPE_1292
VVV_12, // META_TILE_TYPE_1293
VVV_12, // META_TILE_TYPE_1294
VVV_41, // META_TILE_TYPE_1295
VVV_41, // META_TILE_TYPE_1296
VVV_38, // META_TILE_TYPE_1297
VVV_38, // META_TILE_TYPE_1298
VVV_12, // META_TILE_TYPE_1299
VVV_12, // META_TILE_TYPE_1300
VVV_41, // META_TILE_TYPE_1301
VVV_41, // META_TILE_TYPE_1302
VVV_12, // META_TILE_TYPE_1303
VVV_12, // META_TILE_TYPE_1304
VVV_116, // META_TILE_TYPE_1305
VVV_116, // META_TILE_TYPE_1306
VVV_116, // META_TILE_TYPE_1307
VVV_116, // META_TILE_TYPE_1308
VVV_116, // META_TILE_TYPE_1309
VVV_0, // META_TILE_TYPE_1310
VVV_0, // META_TILE_TYPE_1311
VVV_40, // META_TILE_TYPE_1312
VVV_0, // META_TILE_TYPE_1313
VVV_0, // META_TILE_TYPE_1314
VVV_43, // META_TILE_TYPE_1315
VVV_42, // META_TILE_TYPE_1316
VVV_0, // META_TILE_TYPE_1317
VVV_0, // META_TILE_TYPE_1318
VVV_44, // META_TILE_TYPE_1319
VVV_13, // META_TILE_TYPE_1320
VVV_40, // META_TILE_TYPE_1321
VVV_40, // META_TILE_TYPE_1322
VVV_42, // META_TILE_TYPE_1323
VVV_44, // META_TILE_TYPE_1324
VVV_45, // META_TILE_TYPE_1325
VVV_44, // META_TILE_TYPE_1326
VVV_45, // META_TILE_TYPE_1327
VVV_44, // META_TILE_TYPE_1328
VVV_45, // META_TILE_TYPE_1329
VVV_42, // META_TILE_TYPE_1330
VVV_42, // META_TILE_TYPE_1331
VVV_42, // META_TILE_TYPE_1332
VVV_43, // META_TILE_TYPE_1333
VVV_43, // META_TILE_TYPE_1334
VVV_43, // META_TILE_TYPE_1335
VVV_100, // META_TILE_TYPE_1336
VVV_101, // META_TILE_TYPE_1337
VVV_104, // META_TILE_TYPE_1338
VVV_106, // META_TILE_TYPE_1339
VVV_102, // META_TILE_TYPE_1340
VVV_107, // META_TILE_TYPE_1341
VVV_105, // META_TILE_TYPE_1342
VVV_103, // META_TILE_TYPE_1343
VVV_0, // META_TILE_TYPE_1344
VVV_14, // META_TILE_TYPE_1345
VVV_14, // META_TILE_TYPE_1346
VVV_41, // META_TILE_TYPE_1347
VVV_40, // META_TILE_TYPE_1348
#ifdef EU
VVV_0, // META_TILE_TYPE_1349
VVV_0, // META_TILE_TYPE_1350
#else
VVV_41, // META_TILE_TYPE_1349
VVV_41, // META_TILE_TYPE_1350
#endif
VVV_40, // META_TILE_TYPE_1351
#ifdef EU
VVV_0, // META_TILE_TYPE_1352
#else
VVV_41, // META_TILE_TYPE_1352
#endif
VVV_40, // META_TILE_TYPE_1353
#ifdef EU
VVV_0, // META_TILE_TYPE_1354
#else
VVV_41, // META_TILE_TYPE_1354
#endif
VVV_17, // META_TILE_TYPE_1355
VVV_15, // META_TILE_TYPE_1356
VVV_0, // META_TILE_TYPE_1357
VVV_116, // META_TILE_TYPE_1358
VVV_43, // META_TILE_TYPE_1359
VVV_63, // META_TILE_TYPE_1360
VVV_35, // META_TILE_TYPE_1361
VVV_35, // META_TILE_TYPE_1362
VVV_35, // META_TILE_TYPE_1363
VVV_35, // META_TILE_TYPE_1364
VVV_116, // META_TILE_TYPE_1365
VVV_116, // META_TILE_TYPE_1366
VVV_0, // META_TILE_TYPE_1367
VVV_42, // META_TILE_TYPE_1368
VVV_42, // META_TILE_TYPE_1369
VVV_0, // META_TILE_TYPE_1370
VVV_0, // META_TILE_TYPE_1371
VVV_0, // META_TILE_TYPE_1372
VVV_10, // META_TILE_TYPE_1373
VVV_40, // META_TILE_TYPE_1374
VVV_40, // META_TILE_TYPE_1375
VVV_40, // META_TILE_TYPE_1376
VVV_40, // META_TILE_TYPE_1377
VVV_40, // META_TILE_TYPE_1378
VVV_40, // META_TILE_TYPE_1379
VVV_40, // META_TILE_TYPE_1380
VVV_40, // META_TILE_TYPE_1381
VVV_40, // META_TILE_TYPE_1382
VVV_40, // META_TILE_TYPE_1383
VVV_40, // META_TILE_TYPE_1384
VVV_40, // META_TILE_TYPE_1385
VVV_0, // META_TILE_TYPE_1386
VVV_0, // META_TILE_TYPE_1387
VVV_44, // META_TILE_TYPE_1388
VVV_43, // META_TILE_TYPE_1389
VVV_40, // META_TILE_TYPE_1390
VVV_40, // META_TILE_TYPE_1391
VVV_40, // META_TILE_TYPE_1392
VVV_116, // META_TILE_TYPE_1393
VVV_0, // META_TILE_TYPE_1394
VVV_0, // META_TILE_TYPE_1395

};