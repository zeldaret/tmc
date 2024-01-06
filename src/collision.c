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
    prio = gPriorityHandler.event_priority;
    if (gPriorityHandler.event_priority <= gPriorityHandler.ent_priority)
        prio = gPriorityHandler.ent_priority;

    // if any priority is set, dont do collision
    if (prio != 0)
        return;

    doCollision = &ram_CollideAll;
    // Check to see if we should disable collision this frame
    if (gPlayerState.controlMode != CONTROL_ENABLED) {
        u32 flags = gPlayerEntity.base.flags;
        COLLISION_OFF(&gPlayerEntity.base);
        doCollision();
        gPlayerEntity.base.flags = flags; // reset collision to before
    } else {
        doCollision();
    }
}

void RegisterPlayerHitbox(void) {
    MemClear(&gUnk_03003C70, sizeof(gUnk_03003C70));
    gUnk_02018EA0 = (LinkedList2*)&gUnk_03003C70[0].last;
    gUnk_03003C70[0].last = &gUnk_03003C70[0].last;
    gUnk_03003C70[0].first = &gUnk_03003C70[0].last;
    gUnk_03003C70[0].node = &gPlayerEntity.base;
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
        return IsColliding(this, &gPlayerEntity.base);
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
            if (((Enemy*)org)->enemyFlags & EM_FLAG_BOSS)
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

    r1 = (u32)(org == &gPlayerEntity.base ? gPlayerEntity.base.knockbackDuration
                                          : (tgt == &gPlayerEntity.base ? tgt->knockbackDuration : 0)) >>
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
    tgt->contactFlags = org->hurtType | CONTACT_NOW;
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
            tgt->gustJarTolerance = tgt->gustJarTolerance - gPlayerState.gustJarCharge;
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
    ((GenericEntity*)org)->field_0x7a.HWORD = 600;
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
        ((GenericEntity*)tgt)->field_0x78.HALF.HI = org->hurtType;
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
    gPlayerEntity.base.health = CalculateDamage(&gPlayerEntity.base, tgt);
    tgt->iframes = -12;
    if ((gPlayerState.flags & PL_MINISH) == 0) {
        sub_08079D84();
        org->iframes = 90;
    } else {
        gPlayerEntity.base.contactFlags = tgt->hurtType | CONTACT_NOW;
        gPlayerEntity.base.iframes = 12;
        gPlayerEntity.base.knockbackDuration = 16;
        gPlayerEntity.base.knockbackDirection = DirectionTurnAround(direction);
        gPlayerEntity.base.knockbackSpeed = 640;
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
    if (org == &gPlayerEntity.base) {
        u32 prevDamage = tgt->damage;
        tgt->damage = 8;
        gPlayerEntity.base.health = CalculateDamage(&gPlayerEntity.base, tgt);
        tgt->damage = prevDamage;
        gPlayerEntity.base.knockbackDuration = 12;
        gPlayerEntity.base.iframes = 16;
        gPlayerEntity.base.knockbackSpeed = 384;
    } else if (org->kind == PLAYER_ITEM && org->id == PL_ITEM_SHIELD) {
        org->knockbackDuration = 8;
        org->iframes = -6;
        org->knockbackSpeed = 384;
        gPlayerEntity.base.iframes = 0x80;
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
        if (org == &gPlayerEntity.base) {
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
    } else if (tgt->kind == ENEMY && org == &gPlayerEntity.base) {
        CalcCollisionStaticEntity(tgt, org);
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
        if (org == &gPlayerEntity.base) {
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
                COLLISION_OFF(&gPlayerEntity.base);
                gPlayerEntity.base.spriteRendering.b3 = tgt->spriteRendering.b3;
                gPlayerEntity.base.spriteOrientation.flipY = tgt->spriteOrientation.flipY;
                gPlayerEntity.base.iframes = 0xff;
                tgt->iframes = -8;
                PutAwayItems();
                return RESULT_COLLISION;
            }
        } else {
            org->health = 0;
        }
    } else if ((tgt->kind == ENEMY) && (org == &gPlayerEntity.base)) {
        CalcCollisionStaticEntity(tgt, &gPlayerEntity.base);
    }
    return RESULT_NO_COLLISION;
}

CollisionResult sub_08018228(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if (org == &gPlayerEntity.base && PlayerCanBeMoved())
        CalcCollisionStaticEntity(tgt, org);
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
    if (org == &gPlayerEntity.base)
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
    if (tgt->confusedTime && tgt->kind == ENEMY && org == &gPlayerEntity.base) {
        CalcCollisionStaticEntity(tgt, org);
        confused = 1;
    }
    if ((org->kind == PLAYER_ITEM && org->id == PL_ITEM_SHIELD) &&
        gPlayerEntity.base.animationState ==
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
            gPlayerEntity.base.iframes = 0x80;
        }
    }
    if (tgt->kind == PLAYER_ITEM && org->id == PL_ITEM_SHIELD) {
        gPlayerEntity.base.iframes = 0x80;
    }
    return RESULT_COLLISION;
}

// actTile for tileType?
const u8 gMapTileTypeToActTile[] = {
    ACT_TILE_0,  // TILE_TYPE_0
    ACT_TILE_1,  // TILE_TYPE_1
    ACT_TILE_2,  // TILE_TYPE_2
    ACT_TILE_3,  // TILE_TYPE_3
    ACT_TILE_4,  // TILE_TYPE_4
    ACT_TILE_5,  // TILE_TYPE_5
    ACT_TILE_6,  // TILE_TYPE_6
    ACT_TILE_7,  // TILE_TYPE_7
    ACT_TILE_8,  // TILE_TYPE_8
    ACT_TILE_9,  // TILE_TYPE_9
    ACT_TILE_9,  // TILE_TYPE_10
    ACT_TILE_10, // TILE_TYPE_11
    ACT_TILE_9,  // TILE_TYPE_12
    ACT_TILE_9,  // TILE_TYPE_13
    ACT_TILE_9,  // TILE_TYPE_14
    ACT_TILE_9,  // TILE_TYPE_15
    ACT_TILE_9,  // TILE_TYPE_16
    ACT_TILE_9,  // TILE_TYPE_17
    ACT_TILE_11, // TILE_TYPE_18
    ACT_TILE_12, // TILE_TYPE_19
    ACT_TILE_11, // TILE_TYPE_20
    ACT_TILE_11, // TILE_TYPE_21
    ACT_TILE_11, // TILE_TYPE_22
    ACT_TILE_11, // TILE_TYPE_23
    ACT_TILE_11, // TILE_TYPE_24
    ACT_TILE_11, // TILE_TYPE_25
    ACT_TILE_10, // TILE_TYPE_26
    ACT_TILE_10, // TILE_TYPE_27
    ACT_TILE_10, // TILE_TYPE_28
    ACT_TILE_10, // TILE_TYPE_29
    ACT_TILE_10, // TILE_TYPE_30
    ACT_TILE_10, // TILE_TYPE_31
    ACT_TILE_10, // TILE_TYPE_32
    ACT_TILE_10, // TILE_TYPE_33
    ACT_TILE_10, // TILE_TYPE_34
    ACT_TILE_10, // TILE_TYPE_35
    ACT_TILE_10, // TILE_TYPE_36
    ACT_TILE_10, // TILE_TYPE_37
    ACT_TILE_10, // TILE_TYPE_38
    ACT_TILE_10, // TILE_TYPE_39
    ACT_TILE_10, // TILE_TYPE_40
    ACT_TILE_12, // TILE_TYPE_41
    ACT_TILE_12, // TILE_TYPE_42
    ACT_TILE_12, // TILE_TYPE_43
    ACT_TILE_12, // TILE_TYPE_44
    ACT_TILE_12, // TILE_TYPE_45
    ACT_TILE_12, // TILE_TYPE_46
    ACT_TILE_12, // TILE_TYPE_47
    ACT_TILE_12, // TILE_TYPE_48
    ACT_TILE_12, // TILE_TYPE_49
    ACT_TILE_12, // TILE_TYPE_50
    ACT_TILE_12, // TILE_TYPE_51
    ACT_TILE_12, // TILE_TYPE_52
    ACT_TILE_13, // TILE_TYPE_53
    ACT_TILE_14, // TILE_TYPE_54
    ACT_TILE_14, // TILE_TYPE_55
    ACT_TILE_15, // TILE_TYPE_56
    ACT_TILE_16, // TILE_TYPE_57
    ACT_TILE_15, // TILE_TYPE_58
    ACT_TILE_14, // TILE_TYPE_59
    ACT_TILE_17, // TILE_TYPE_60
    ACT_TILE_18, // TILE_TYPE_61
    ACT_TILE_19, // TILE_TYPE_62
    ACT_TILE_20, // TILE_TYPE_63
    ACT_TILE_20, // TILE_TYPE_64
    ACT_TILE_20, // TILE_TYPE_65
    ACT_TILE_20, // TILE_TYPE_66
    ACT_TILE_20, // TILE_TYPE_67
    ACT_TILE_20, // TILE_TYPE_68
    ACT_TILE_20, // TILE_TYPE_69
    ACT_TILE_20, // TILE_TYPE_70
    ACT_TILE_20, // TILE_TYPE_71
    ACT_TILE_20, // TILE_TYPE_72
    ACT_TILE_20, // TILE_TYPE_73
    ACT_TILE_20, // TILE_TYPE_74
    ACT_TILE_20, // TILE_TYPE_75
    ACT_TILE_20, // TILE_TYPE_76
    ACT_TILE_20, // TILE_TYPE_77
    ACT_TILE_20, // TILE_TYPE_78
    ACT_TILE_20, // TILE_TYPE_79
    ACT_TILE_20, // TILE_TYPE_80
    ACT_TILE_20, // TILE_TYPE_81
    ACT_TILE_20, // TILE_TYPE_82
    ACT_TILE_20, // TILE_TYPE_83
    ACT_TILE_20, // TILE_TYPE_84
    ACT_TILE_21, // TILE_TYPE_85
    ACT_TILE_21, // TILE_TYPE_86
    ACT_TILE_21, // TILE_TYPE_87
    ACT_TILE_21, // TILE_TYPE_88
    ACT_TILE_21, // TILE_TYPE_89
    ACT_TILE_21, // TILE_TYPE_90
    ACT_TILE_21, // TILE_TYPE_91
    ACT_TILE_21, // TILE_TYPE_92
    ACT_TILE_21, // TILE_TYPE_93
    ACT_TILE_21, // TILE_TYPE_94
    ACT_TILE_21, // TILE_TYPE_95
    ACT_TILE_21, // TILE_TYPE_96
    ACT_TILE_22, // TILE_TYPE_97
    ACT_TILE_22, // TILE_TYPE_98
    ACT_TILE_22, // TILE_TYPE_99
    ACT_TILE_22, // TILE_TYPE_100
    ACT_TILE_22, // TILE_TYPE_101
    ACT_TILE_22, // TILE_TYPE_102
    ACT_TILE_22, // TILE_TYPE_103
    ACT_TILE_22, // TILE_TYPE_104
    ACT_TILE_23, // TILE_TYPE_105
    ACT_TILE_23, // TILE_TYPE_106
    ACT_TILE_24, // TILE_TYPE_107
    ACT_TILE_24, // TILE_TYPE_108
    ACT_TILE_24, // TILE_TYPE_109
    ACT_TILE_24, // TILE_TYPE_110
    ACT_TILE_0,  // TILE_TYPE_111
    ACT_TILE_0,  // TILE_TYPE_112
    ACT_TILE_25, // TILE_TYPE_113
    ACT_TILE_25, // TILE_TYPE_114
    ACT_TILE_26, // TILE_TYPE_115
    ACT_TILE_0,  // TILE_TYPE_116
    ACT_TILE_0,  // TILE_TYPE_117
    ACT_TILE_0,  // TILE_TYPE_118
    ACT_TILE_27, // TILE_TYPE_119
    ACT_TILE_28, // TILE_TYPE_120
    ACT_TILE_29, // TILE_TYPE_121
    ACT_TILE_30, // TILE_TYPE_122
    ACT_TILE_31, // TILE_TYPE_123
    ACT_TILE_32, // TILE_TYPE_124
    ACT_TILE_33, // TILE_TYPE_125
    ACT_TILE_34, // TILE_TYPE_126
    ACT_TILE_35, // TILE_TYPE_127
    ACT_TILE_36, // TILE_TYPE_128
    ACT_TILE_0,  // TILE_TYPE_129
    ACT_TILE_36, // TILE_TYPE_130
    ACT_TILE_36, // TILE_TYPE_131
    ACT_TILE_36, // TILE_TYPE_132
    ACT_TILE_36, // TILE_TYPE_133
    ACT_TILE_37, // TILE_TYPE_134
    ACT_TILE_38, // TILE_TYPE_135
    ACT_TILE_38, // TILE_TYPE_136
    ACT_TILE_39, // TILE_TYPE_137
    ACT_TILE_39, // TILE_TYPE_138
    ACT_TILE_40, // TILE_TYPE_139
    ACT_TILE_40, // TILE_TYPE_140
    ACT_TILE_40, // TILE_TYPE_141
    ACT_TILE_40, // TILE_TYPE_142
    ACT_TILE_40, // TILE_TYPE_143
    ACT_TILE_40, // TILE_TYPE_144
    ACT_TILE_40, // TILE_TYPE_145
    ACT_TILE_40, // TILE_TYPE_146
    ACT_TILE_40, // TILE_TYPE_147
    ACT_TILE_40, // TILE_TYPE_148
    ACT_TILE_40, // TILE_TYPE_149
    ACT_TILE_40, // TILE_TYPE_150
    ACT_TILE_40, // TILE_TYPE_151
    ACT_TILE_40, // TILE_TYPE_152
    ACT_TILE_40, // TILE_TYPE_153
    ACT_TILE_40, // TILE_TYPE_154
    ACT_TILE_40, // TILE_TYPE_155
    ACT_TILE_40, // TILE_TYPE_156
    ACT_TILE_41, // TILE_TYPE_157
    ACT_TILE_41, // TILE_TYPE_158
    ACT_TILE_40, // TILE_TYPE_159
    ACT_TILE_40, // TILE_TYPE_160
    ACT_TILE_42, // TILE_TYPE_161
    ACT_TILE_41, // TILE_TYPE_162
    ACT_TILE_40, // TILE_TYPE_163
    ACT_TILE_43, // TILE_TYPE_164
    ACT_TILE_41, // TILE_TYPE_165
    ACT_TILE_40, // TILE_TYPE_166
    ACT_TILE_44, // TILE_TYPE_167
    ACT_TILE_41, // TILE_TYPE_168
    ACT_TILE_40, // TILE_TYPE_169
    ACT_TILE_45, // TILE_TYPE_170
    ACT_TILE_0,  // TILE_TYPE_171
    ACT_TILE_0,  // TILE_TYPE_172
    ACT_TILE_0,  // TILE_TYPE_173
    ACT_TILE_0,  // TILE_TYPE_174
    ACT_TILE_46, // TILE_TYPE_175
    ACT_TILE_0,  // TILE_TYPE_176
    ACT_TILE_0,  // TILE_TYPE_177
#ifdef EU
    ACT_TILE_0, // TILE_TYPE_178
#else
    ACT_TILE_41, // TILE_TYPE_178
#endif
    ACT_TILE_0, // TILE_TYPE_179
    ACT_TILE_0, // TILE_TYPE_180
#ifdef EU
    ACT_TILE_0, // TILE_TYPE_181
#else
    ACT_TILE_41, // TILE_TYPE_181
#endif
    ACT_TILE_40, // TILE_TYPE_182
    ACT_TILE_0,  // TILE_TYPE_183
    ACT_TILE_42, // TILE_TYPE_184
    ACT_TILE_42, // TILE_TYPE_185
    ACT_TILE_42, // TILE_TYPE_186
    ACT_TILE_0,  // TILE_TYPE_187
    ACT_TILE_0,  // TILE_TYPE_188
    ACT_TILE_0,  // TILE_TYPE_189
    ACT_TILE_0,  // TILE_TYPE_190
    ACT_TILE_46, // TILE_TYPE_191
    ACT_TILE_0,  // TILE_TYPE_192
    ACT_TILE_0,  // TILE_TYPE_193
#ifdef EU
    ACT_TILE_0, // TILE_TYPE_194
#else
    ACT_TILE_41, // TILE_TYPE_194
#endif
    ACT_TILE_0, // TILE_TYPE_195
    ACT_TILE_0, // TILE_TYPE_196
#ifdef EU
    ACT_TILE_0, // TILE_TYPE_197
#else
    ACT_TILE_41, // TILE_TYPE_197
#endif
    ACT_TILE_40, // TILE_TYPE_198
    ACT_TILE_0,  // TILE_TYPE_199
    ACT_TILE_42, // TILE_TYPE_200
    ACT_TILE_42, // TILE_TYPE_201
    ACT_TILE_42, // TILE_TYPE_202
    ACT_TILE_0,  // TILE_TYPE_203
    ACT_TILE_46, // TILE_TYPE_204
    ACT_TILE_0,  // TILE_TYPE_205
    ACT_TILE_0,  // TILE_TYPE_206
    ACT_TILE_0,  // TILE_TYPE_207
    ACT_TILE_0,  // TILE_TYPE_208
    ACT_TILE_0,  // TILE_TYPE_209
#ifdef EU
    ACT_TILE_0, // TILE_TYPE_210
#else
    ACT_TILE_41, // TILE_TYPE_210
#endif
    ACT_TILE_40, // TILE_TYPE_211
    ACT_TILE_0,  // TILE_TYPE_212
    ACT_TILE_0,  // TILE_TYPE_213
#ifdef EU
    ACT_TILE_0, // TILE_TYPE_214
#else
    ACT_TILE_41, // TILE_TYPE_214
#endif
    ACT_TILE_0,  // TILE_TYPE_215
    ACT_TILE_43, // TILE_TYPE_216
    ACT_TILE_43, // TILE_TYPE_217
    ACT_TILE_43, // TILE_TYPE_218
    ACT_TILE_0,  // TILE_TYPE_219
    ACT_TILE_0,  // TILE_TYPE_220
    ACT_TILE_0,  // TILE_TYPE_221
    ACT_TILE_0,  // TILE_TYPE_222
    ACT_TILE_46, // TILE_TYPE_223
    ACT_TILE_0,  // TILE_TYPE_224
    ACT_TILE_0,  // TILE_TYPE_225
#ifdef EU
    ACT_TILE_0, // TILE_TYPE_226
#else
    ACT_TILE_41, // TILE_TYPE_226
#endif
    ACT_TILE_0, // TILE_TYPE_227
    ACT_TILE_0, // TILE_TYPE_228
#ifdef EU
    ACT_TILE_0, // TILE_TYPE_229
#else
    ACT_TILE_41, // TILE_TYPE_229
#endif
    ACT_TILE_40, // TILE_TYPE_230
    ACT_TILE_0,  // TILE_TYPE_231
    ACT_TILE_44, // TILE_TYPE_232
    ACT_TILE_44, // TILE_TYPE_233
    ACT_TILE_44, // TILE_TYPE_234
    ACT_TILE_0,  // TILE_TYPE_235
    ACT_TILE_46, // TILE_TYPE_236
    ACT_TILE_0,  // TILE_TYPE_237
    ACT_TILE_0,  // TILE_TYPE_238
    ACT_TILE_0,  // TILE_TYPE_239
    ACT_TILE_0,  // TILE_TYPE_240
    ACT_TILE_0,  // TILE_TYPE_241
#ifdef EU
    ACT_TILE_0, // TILE_TYPE_242
#else
    ACT_TILE_41, // TILE_TYPE_242
#endif
    ACT_TILE_40, // TILE_TYPE_243
    ACT_TILE_0,  // TILE_TYPE_244
    ACT_TILE_0,  // TILE_TYPE_245
#ifdef EU
    ACT_TILE_0, // TILE_TYPE_246
#else
    ACT_TILE_41, // TILE_TYPE_246
#endif
    ACT_TILE_0,  // TILE_TYPE_247
    ACT_TILE_45, // TILE_TYPE_248
    ACT_TILE_45, // TILE_TYPE_249
    ACT_TILE_45, // TILE_TYPE_250
    ACT_TILE_0,  // TILE_TYPE_251
    ACT_TILE_0,  // TILE_TYPE_252
    ACT_TILE_0,  // TILE_TYPE_253
    ACT_TILE_0,  // TILE_TYPE_254
    ACT_TILE_46, // TILE_TYPE_255
    ACT_TILE_0,  // TILE_TYPE_256
    ACT_TILE_0,  // TILE_TYPE_257
    ACT_TILE_0,  // TILE_TYPE_258
    ACT_TILE_0,  // TILE_TYPE_259
    ACT_TILE_0,  // TILE_TYPE_260
    ACT_TILE_46, // TILE_TYPE_261
    ACT_TILE_0,  // TILE_TYPE_262
    ACT_TILE_0,  // TILE_TYPE_263
    ACT_TILE_46, // TILE_TYPE_264
    ACT_TILE_0,  // TILE_TYPE_265
    ACT_TILE_0,  // TILE_TYPE_266
    ACT_TILE_0,  // TILE_TYPE_267
    ACT_TILE_0,  // TILE_TYPE_268
    ACT_TILE_0,  // TILE_TYPE_269
    ACT_TILE_0,  // TILE_TYPE_270
    ACT_TILE_0,  // TILE_TYPE_271
    ACT_TILE_46, // TILE_TYPE_272
    ACT_TILE_0,  // TILE_TYPE_273
    ACT_TILE_0,  // TILE_TYPE_274
    ACT_TILE_0,  // TILE_TYPE_275
    ACT_TILE_0,  // TILE_TYPE_276
    ACT_TILE_46, // TILE_TYPE_277
    ACT_TILE_0,  // TILE_TYPE_278
    ACT_TILE_0,  // TILE_TYPE_279
    ACT_TILE_0,  // TILE_TYPE_280
    ACT_TILE_0,  // TILE_TYPE_281
    ACT_TILE_0,  // TILE_TYPE_282
    ACT_TILE_0,  // TILE_TYPE_283
    ACT_TILE_0,  // TILE_TYPE_284
    ACT_TILE_0,  // TILE_TYPE_285
    ACT_TILE_0,  // TILE_TYPE_286
    ACT_TILE_0,  // TILE_TYPE_287
    ACT_TILE_0,  // TILE_TYPE_288
    ACT_TILE_0,  // TILE_TYPE_289
    ACT_TILE_0,  // TILE_TYPE_290
    ACT_TILE_0,  // TILE_TYPE_291
    ACT_TILE_0,  // TILE_TYPE_292
    ACT_TILE_0,  // TILE_TYPE_293
    ACT_TILE_0,  // TILE_TYPE_294
    ACT_TILE_0,  // TILE_TYPE_295
    ACT_TILE_0,  // TILE_TYPE_296
    ACT_TILE_0,  // TILE_TYPE_297
    ACT_TILE_0,  // TILE_TYPE_298
    ACT_TILE_0,  // TILE_TYPE_299
    ACT_TILE_0,  // TILE_TYPE_300
    ACT_TILE_0,  // TILE_TYPE_301
    ACT_TILE_0,  // TILE_TYPE_302
    ACT_TILE_0,  // TILE_TYPE_303
    ACT_TILE_0,  // TILE_TYPE_304
    ACT_TILE_0,  // TILE_TYPE_305
    ACT_TILE_0,  // TILE_TYPE_306
    ACT_TILE_0,  // TILE_TYPE_307
    ACT_TILE_0,  // TILE_TYPE_308
    ACT_TILE_0,  // TILE_TYPE_309
    ACT_TILE_0,  // TILE_TYPE_310
    ACT_TILE_0,  // TILE_TYPE_311
    ACT_TILE_0,  // TILE_TYPE_312
    ACT_TILE_0,  // TILE_TYPE_313
    ACT_TILE_0,  // TILE_TYPE_314
    ACT_TILE_0,  // TILE_TYPE_315
    ACT_TILE_0,  // TILE_TYPE_316
    ACT_TILE_0,  // TILE_TYPE_317
    ACT_TILE_0,  // TILE_TYPE_318
    ACT_TILE_0,  // TILE_TYPE_319
    ACT_TILE_0,  // TILE_TYPE_320
    ACT_TILE_0,  // TILE_TYPE_321
    ACT_TILE_0,  // TILE_TYPE_322
    ACT_TILE_0,  // TILE_TYPE_323
    ACT_TILE_0,  // TILE_TYPE_324
    ACT_TILE_0,  // TILE_TYPE_325
    ACT_TILE_0,  // TILE_TYPE_326
    ACT_TILE_0,  // TILE_TYPE_327
    ACT_TILE_0,  // TILE_TYPE_328
    ACT_TILE_0,  // TILE_TYPE_329
    ACT_TILE_0,  // TILE_TYPE_330
    ACT_TILE_0,  // TILE_TYPE_331
    ACT_TILE_0,  // TILE_TYPE_332
    ACT_TILE_0,  // TILE_TYPE_333
    ACT_TILE_0,  // TILE_TYPE_334
    ACT_TILE_0,  // TILE_TYPE_335
    ACT_TILE_0,  // TILE_TYPE_336
    ACT_TILE_0,  // TILE_TYPE_337
    ACT_TILE_0,  // TILE_TYPE_338
    ACT_TILE_0,  // TILE_TYPE_339
    ACT_TILE_0,  // TILE_TYPE_340
    ACT_TILE_0,  // TILE_TYPE_341
    ACT_TILE_0,  // TILE_TYPE_342
    ACT_TILE_0,  // TILE_TYPE_343
    ACT_TILE_0,  // TILE_TYPE_344
    ACT_TILE_0,  // TILE_TYPE_345
    ACT_TILE_0,  // TILE_TYPE_346
    ACT_TILE_0,  // TILE_TYPE_347
    ACT_TILE_0,  // TILE_TYPE_348
    ACT_TILE_0,  // TILE_TYPE_349
    ACT_TILE_0,  // TILE_TYPE_350
    ACT_TILE_0,  // TILE_TYPE_351
    ACT_TILE_0,  // TILE_TYPE_352
    ACT_TILE_47, // TILE_TYPE_353
    ACT_TILE_47, // TILE_TYPE_354
    ACT_TILE_47, // TILE_TYPE_355
    ACT_TILE_0,  // TILE_TYPE_356
    ACT_TILE_0,  // TILE_TYPE_357
    ACT_TILE_40, // TILE_TYPE_358
    ACT_TILE_0,  // TILE_TYPE_359
    ACT_TILE_40, // TILE_TYPE_360
    ACT_TILE_48, // TILE_TYPE_361
    ACT_TILE_49, // TILE_TYPE_362
    ACT_TILE_50, // TILE_TYPE_363
    ACT_TILE_51, // TILE_TYPE_364
    ACT_TILE_52, // TILE_TYPE_365
    ACT_TILE_52, // TILE_TYPE_366
    ACT_TILE_53, // TILE_TYPE_367
    ACT_TILE_53, // TILE_TYPE_368
    ACT_TILE_54, // TILE_TYPE_369
    ACT_TILE_55, // TILE_TYPE_370
    ACT_TILE_0,  // TILE_TYPE_371
    ACT_TILE_56, // TILE_TYPE_372
    ACT_TILE_57, // TILE_TYPE_373
    ACT_TILE_58, // TILE_TYPE_374
    ACT_TILE_59, // TILE_TYPE_375
    ACT_TILE_0,  // TILE_TYPE_376
    ACT_TILE_0,  // TILE_TYPE_377
    ACT_TILE_60, // TILE_TYPE_378
    ACT_TILE_60, // TILE_TYPE_379
    ACT_TILE_60, // TILE_TYPE_380
    ACT_TILE_60, // TILE_TYPE_381
    ACT_TILE_0,  // TILE_TYPE_382
    ACT_TILE_0,  // TILE_TYPE_383
    ACT_TILE_0,  // TILE_TYPE_384
    ACT_TILE_0,  // TILE_TYPE_385
    ACT_TILE_61, // TILE_TYPE_386
    ACT_TILE_61, // TILE_TYPE_387
    ACT_TILE_62, // TILE_TYPE_388
    ACT_TILE_9,  // TILE_TYPE_389
    ACT_TILE_9,  // TILE_TYPE_390
    ACT_TILE_9,  // TILE_TYPE_391
    ACT_TILE_9,  // TILE_TYPE_392
    ACT_TILE_9,  // TILE_TYPE_393
    ACT_TILE_9,  // TILE_TYPE_394
    ACT_TILE_61, // TILE_TYPE_395
    ACT_TILE_61, // TILE_TYPE_396
    ACT_TILE_61, // TILE_TYPE_397
    ACT_TILE_9,  // TILE_TYPE_398
    ACT_TILE_9,  // TILE_TYPE_399
    ACT_TILE_61, // TILE_TYPE_400
    ACT_TILE_61, // TILE_TYPE_401
    ACT_TILE_61, // TILE_TYPE_402
    ACT_TILE_9,  // TILE_TYPE_403
    ACT_TILE_9,  // TILE_TYPE_404
    ACT_TILE_9,  // TILE_TYPE_405
    ACT_TILE_9,  // TILE_TYPE_406
    ACT_TILE_9,  // TILE_TYPE_407
    ACT_TILE_9,  // TILE_TYPE_408
    ACT_TILE_0,  // TILE_TYPE_409
    ACT_TILE_0,  // TILE_TYPE_410
    ACT_TILE_0,  // TILE_TYPE_411
    ACT_TILE_0,  // TILE_TYPE_412
    ACT_TILE_63, // TILE_TYPE_413
    ACT_TILE_0,  // TILE_TYPE_414
    ACT_TILE_0,  // TILE_TYPE_415
    ACT_TILE_0,  // TILE_TYPE_416
    ACT_TILE_0,  // TILE_TYPE_417
    ACT_TILE_0,  // TILE_TYPE_418
    ACT_TILE_0,  // TILE_TYPE_419
    ACT_TILE_0,  // TILE_TYPE_420
    ACT_TILE_0,  // TILE_TYPE_421
    ACT_TILE_63, // TILE_TYPE_422
    ACT_TILE_0,  // TILE_TYPE_423
    ACT_TILE_0,  // TILE_TYPE_424
    ACT_TILE_0,  // TILE_TYPE_425
    ACT_TILE_0,  // TILE_TYPE_426
    ACT_TILE_0,  // TILE_TYPE_427
    ACT_TILE_42, // TILE_TYPE_428
    ACT_TILE_43, // TILE_TYPE_429
    ACT_TILE_44, // TILE_TYPE_430
    ACT_TILE_45, // TILE_TYPE_431
    ACT_TILE_0,  // TILE_TYPE_432
    ACT_TILE_0,  // TILE_TYPE_433
    ACT_TILE_0,  // TILE_TYPE_434
    ACT_TILE_0,  // TILE_TYPE_435
    ACT_TILE_64, // TILE_TYPE_436
    ACT_TILE_65, // TILE_TYPE_437
    ACT_TILE_66, // TILE_TYPE_438
    ACT_TILE_67, // TILE_TYPE_439
    ACT_TILE_68, // TILE_TYPE_440
    ACT_TILE_69, // TILE_TYPE_441
    ACT_TILE_70, // TILE_TYPE_442
    ACT_TILE_71, // TILE_TYPE_443
    ACT_TILE_72, // TILE_TYPE_444
    ACT_TILE_73, // TILE_TYPE_445
    ACT_TILE_74, // TILE_TYPE_446
    ACT_TILE_75, // TILE_TYPE_447
    ACT_TILE_76, // TILE_TYPE_448
    ACT_TILE_77, // TILE_TYPE_449
    ACT_TILE_78, // TILE_TYPE_450
    ACT_TILE_79, // TILE_TYPE_451
    ACT_TILE_80, // TILE_TYPE_452
    ACT_TILE_81, // TILE_TYPE_453
    ACT_TILE_82, // TILE_TYPE_454
    ACT_TILE_83, // TILE_TYPE_455
    ACT_TILE_63, // TILE_TYPE_456
    ACT_TILE_0,  // TILE_TYPE_457
    ACT_TILE_63, // TILE_TYPE_458
    ACT_TILE_83, // TILE_TYPE_459
    ACT_TILE_83, // TILE_TYPE_460
    ACT_TILE_0,  // TILE_TYPE_461
    ACT_TILE_0,  // TILE_TYPE_462
    ACT_TILE_43, // TILE_TYPE_463
    ACT_TILE_43, // TILE_TYPE_464
    ACT_TILE_43, // TILE_TYPE_465
    ACT_TILE_0,  // TILE_TYPE_466
    ACT_TILE_21, // TILE_TYPE_467
    ACT_TILE_21, // TILE_TYPE_468
    ACT_TILE_21, // TILE_TYPE_469
    ACT_TILE_21, // TILE_TYPE_470
    ACT_TILE_0,  // TILE_TYPE_471
    ACT_TILE_0,  // TILE_TYPE_472
    ACT_TILE_0,  // TILE_TYPE_473
    ACT_TILE_0,  // TILE_TYPE_474
    ACT_TILE_0,  // TILE_TYPE_475
    ACT_TILE_0,  // TILE_TYPE_476
    ACT_TILE_0,  // TILE_TYPE_477
    ACT_TILE_0,  // TILE_TYPE_478
    ACT_TILE_0,  // TILE_TYPE_479
    ACT_TILE_0,  // TILE_TYPE_480
    ACT_TILE_0,  // TILE_TYPE_481
    ACT_TILE_0,  // TILE_TYPE_482
    ACT_TILE_0,  // TILE_TYPE_483
    ACT_TILE_0,  // TILE_TYPE_484
    ACT_TILE_0,  // TILE_TYPE_485
    ACT_TILE_0,  // TILE_TYPE_486
    ACT_TILE_84, // TILE_TYPE_487
    ACT_TILE_0,  // TILE_TYPE_488
    ACT_TILE_0,  // TILE_TYPE_489
    ACT_TILE_0,  // TILE_TYPE_490
    ACT_TILE_0,  // TILE_TYPE_491
    ACT_TILE_0,  // TILE_TYPE_492
    ACT_TILE_0,  // TILE_TYPE_493
    ACT_TILE_0,  // TILE_TYPE_494
    ACT_TILE_0,  // TILE_TYPE_495
    ACT_TILE_0,  // TILE_TYPE_496
    ACT_TILE_0,  // TILE_TYPE_497
    ACT_TILE_0,  // TILE_TYPE_498
    ACT_TILE_0,  // TILE_TYPE_499
    ACT_TILE_0,  // TILE_TYPE_500
    ACT_TILE_0,  // TILE_TYPE_501
    ACT_TILE_0,  // TILE_TYPE_502
    ACT_TILE_0,  // TILE_TYPE_503
    ACT_TILE_0,  // TILE_TYPE_504
    ACT_TILE_0,  // TILE_TYPE_505
    ACT_TILE_0,  // TILE_TYPE_506
    ACT_TILE_0,  // TILE_TYPE_507
    ACT_TILE_0,  // TILE_TYPE_508
    ACT_TILE_0,  // TILE_TYPE_509
    ACT_TILE_0,  // TILE_TYPE_510
    ACT_TILE_0,  // TILE_TYPE_511
    ACT_TILE_0,  // TILE_TYPE_512
    ACT_TILE_0,  // TILE_TYPE_513
    ACT_TILE_0,  // TILE_TYPE_514
    ACT_TILE_0,  // TILE_TYPE_515
    ACT_TILE_0,  // TILE_TYPE_516
    ACT_TILE_0,  // TILE_TYPE_517
    ACT_TILE_0,  // TILE_TYPE_518
    ACT_TILE_0,  // TILE_TYPE_519
    ACT_TILE_0,  // TILE_TYPE_520
    ACT_TILE_0,  // TILE_TYPE_521
    ACT_TILE_0,  // TILE_TYPE_522
    ACT_TILE_0,  // TILE_TYPE_523
    ACT_TILE_40, // TILE_TYPE_524
    ACT_TILE_0,  // TILE_TYPE_525
    ACT_TILE_0,  // TILE_TYPE_526
    ACT_TILE_0,  // TILE_TYPE_527
    ACT_TILE_0,  // TILE_TYPE_528
    ACT_TILE_0,  // TILE_TYPE_529
    ACT_TILE_0,  // TILE_TYPE_530
    ACT_TILE_0,  // TILE_TYPE_531
    ACT_TILE_0,  // TILE_TYPE_532
    ACT_TILE_0,  // TILE_TYPE_533
    ACT_TILE_0,  // TILE_TYPE_534
    ACT_TILE_0,  // TILE_TYPE_535
    ACT_TILE_0,  // TILE_TYPE_536
    ACT_TILE_0,  // TILE_TYPE_537
    ACT_TILE_0,  // TILE_TYPE_538
    ACT_TILE_0,  // TILE_TYPE_539
    ACT_TILE_0,  // TILE_TYPE_540
    ACT_TILE_0,  // TILE_TYPE_541
    ACT_TILE_0,  // TILE_TYPE_542
    ACT_TILE_0,  // TILE_TYPE_543
    ACT_TILE_0,  // TILE_TYPE_544
    ACT_TILE_0,  // TILE_TYPE_545
    ACT_TILE_0,  // TILE_TYPE_546
    ACT_TILE_0,  // TILE_TYPE_547
    ACT_TILE_0,  // TILE_TYPE_548
    ACT_TILE_40, // TILE_TYPE_549
    ACT_TILE_0,  // TILE_TYPE_550
    ACT_TILE_0,  // TILE_TYPE_551
    ACT_TILE_0,  // TILE_TYPE_552
    ACT_TILE_0,  // TILE_TYPE_553
    ACT_TILE_0,  // TILE_TYPE_554
    ACT_TILE_0,  // TILE_TYPE_555
    ACT_TILE_0,  // TILE_TYPE_556
    ACT_TILE_0,  // TILE_TYPE_557
    ACT_TILE_0,  // TILE_TYPE_558
    ACT_TILE_0,  // TILE_TYPE_559
    ACT_TILE_0,  // TILE_TYPE_560
    ACT_TILE_0,  // TILE_TYPE_561
    ACT_TILE_16, // TILE_TYPE_562
    ACT_TILE_16, // TILE_TYPE_563
    ACT_TILE_16, // TILE_TYPE_564
    ACT_TILE_16, // TILE_TYPE_565
    ACT_TILE_16, // TILE_TYPE_566
    ACT_TILE_16, // TILE_TYPE_567
    ACT_TILE_16, // TILE_TYPE_568
    ACT_TILE_16, // TILE_TYPE_569
    ACT_TILE_16, // TILE_TYPE_570
    ACT_TILE_16, // TILE_TYPE_571
    ACT_TILE_16, // TILE_TYPE_572
    ACT_TILE_16, // TILE_TYPE_573
    ACT_TILE_16, // TILE_TYPE_574
    ACT_TILE_16, // TILE_TYPE_575
    ACT_TILE_16, // TILE_TYPE_576
    ACT_TILE_16, // TILE_TYPE_577
    ACT_TILE_16, // TILE_TYPE_578
    ACT_TILE_16, // TILE_TYPE_579
    ACT_TILE_16, // TILE_TYPE_580
    ACT_TILE_16, // TILE_TYPE_581
    ACT_TILE_16, // TILE_TYPE_582
    ACT_TILE_16, // TILE_TYPE_583
    ACT_TILE_16, // TILE_TYPE_584
    ACT_TILE_16, // TILE_TYPE_585
    ACT_TILE_16, // TILE_TYPE_586
    ACT_TILE_16, // TILE_TYPE_587
    ACT_TILE_16, // TILE_TYPE_588
    ACT_TILE_16, // TILE_TYPE_589
    ACT_TILE_85, // TILE_TYPE_590
    ACT_TILE_85, // TILE_TYPE_591
    ACT_TILE_85, // TILE_TYPE_592
    ACT_TILE_85, // TILE_TYPE_593
    ACT_TILE_85, // TILE_TYPE_594
    ACT_TILE_85, // TILE_TYPE_595
    ACT_TILE_85, // TILE_TYPE_596
    ACT_TILE_85, // TILE_TYPE_597
    ACT_TILE_85, // TILE_TYPE_598
    ACT_TILE_0,  // TILE_TYPE_599
    ACT_TILE_0,  // TILE_TYPE_600
    ACT_TILE_0,  // TILE_TYPE_601
    ACT_TILE_0,  // TILE_TYPE_602
    ACT_TILE_0,  // TILE_TYPE_603
    ACT_TILE_0,  // TILE_TYPE_604
    ACT_TILE_0,  // TILE_TYPE_605
    ACT_TILE_0,  // TILE_TYPE_606
    ACT_TILE_0,  // TILE_TYPE_607
    ACT_TILE_0,  // TILE_TYPE_608
    ACT_TILE_0,  // TILE_TYPE_609
    ACT_TILE_9,  // TILE_TYPE_610
    ACT_TILE_9,  // TILE_TYPE_611
    ACT_TILE_0,  // TILE_TYPE_612
    ACT_TILE_0,  // TILE_TYPE_613
    ACT_TILE_0,  // TILE_TYPE_614
    ACT_TILE_86, // TILE_TYPE_615
    ACT_TILE_0,  // TILE_TYPE_616
    ACT_TILE_0,  // TILE_TYPE_617
    ACT_TILE_86, // TILE_TYPE_618
    ACT_TILE_0,  // TILE_TYPE_619
    ACT_TILE_0,  // TILE_TYPE_620
    ACT_TILE_41, // TILE_TYPE_621
    ACT_TILE_0,  // TILE_TYPE_622
    ACT_TILE_0,  // TILE_TYPE_623
    ACT_TILE_41, // TILE_TYPE_624
    ACT_TILE_40, // TILE_TYPE_625
    ACT_TILE_0,  // TILE_TYPE_626
    ACT_TILE_0,  // TILE_TYPE_627
    ACT_TILE_0,  // TILE_TYPE_628
    ACT_TILE_0,  // TILE_TYPE_629
    ACT_TILE_0,  // TILE_TYPE_630
    ACT_TILE_86, // TILE_TYPE_631
    ACT_TILE_0,  // TILE_TYPE_632
    ACT_TILE_0,  // TILE_TYPE_633
    ACT_TILE_86, // TILE_TYPE_634
    ACT_TILE_0,  // TILE_TYPE_635
    ACT_TILE_0,  // TILE_TYPE_636
    ACT_TILE_41, // TILE_TYPE_637
    ACT_TILE_0,  // TILE_TYPE_638
    ACT_TILE_0,  // TILE_TYPE_639
    ACT_TILE_41, // TILE_TYPE_640
    ACT_TILE_40, // TILE_TYPE_641
    ACT_TILE_0,  // TILE_TYPE_642
    ACT_TILE_0,  // TILE_TYPE_643
    ACT_TILE_0,  // TILE_TYPE_644
    ACT_TILE_0,  // TILE_TYPE_645
    ACT_TILE_0,  // TILE_TYPE_646
    ACT_TILE_86, // TILE_TYPE_647
    ACT_TILE_0,  // TILE_TYPE_648
    ACT_TILE_0,  // TILE_TYPE_649
    ACT_TILE_86, // TILE_TYPE_650
    ACT_TILE_0,  // TILE_TYPE_651
    ACT_TILE_0,  // TILE_TYPE_652
#ifdef EU
    ACT_TILE_0, // TILE_TYPE_653
#else
    ACT_TILE_41, // TILE_TYPE_653
#endif
    ACT_TILE_0, // TILE_TYPE_654
    ACT_TILE_0, // TILE_TYPE_655
#ifdef EU
    ACT_TILE_0, // TILE_TYPE_656
#else
    ACT_TILE_41, // TILE_TYPE_656
#endif
    ACT_TILE_40,  // TILE_TYPE_657
    ACT_TILE_0,   // TILE_TYPE_658
    ACT_TILE_0,   // TILE_TYPE_659
    ACT_TILE_0,   // TILE_TYPE_660
    ACT_TILE_0,   // TILE_TYPE_661
    ACT_TILE_86,  // TILE_TYPE_662
    ACT_TILE_86,  // TILE_TYPE_663
    ACT_TILE_86,  // TILE_TYPE_664
    ACT_TILE_86,  // TILE_TYPE_665
    ACT_TILE_86,  // TILE_TYPE_666
    ACT_TILE_86,  // TILE_TYPE_667
    ACT_TILE_86,  // TILE_TYPE_668
    ACT_TILE_86,  // TILE_TYPE_669
    ACT_TILE_86,  // TILE_TYPE_670
    ACT_TILE_86,  // TILE_TYPE_671
    ACT_TILE_86,  // TILE_TYPE_672
    ACT_TILE_86,  // TILE_TYPE_673
    ACT_TILE_86,  // TILE_TYPE_674
    ACT_TILE_86,  // TILE_TYPE_675
    ACT_TILE_86,  // TILE_TYPE_676
    ACT_TILE_86,  // TILE_TYPE_677
    ACT_TILE_86,  // TILE_TYPE_678
    ACT_TILE_86,  // TILE_TYPE_679
    ACT_TILE_86,  // TILE_TYPE_680
    ACT_TILE_86,  // TILE_TYPE_681
    ACT_TILE_86,  // TILE_TYPE_682
    ACT_TILE_86,  // TILE_TYPE_683
    ACT_TILE_86,  // TILE_TYPE_684
    ACT_TILE_86,  // TILE_TYPE_685
    ACT_TILE_86,  // TILE_TYPE_686
    ACT_TILE_86,  // TILE_TYPE_687
    ACT_TILE_86,  // TILE_TYPE_688
    ACT_TILE_86,  // TILE_TYPE_689
    ACT_TILE_86,  // TILE_TYPE_690
    ACT_TILE_86,  // TILE_TYPE_691
    ACT_TILE_86,  // TILE_TYPE_692
    ACT_TILE_86,  // TILE_TYPE_693
    ACT_TILE_86,  // TILE_TYPE_694
    ACT_TILE_86,  // TILE_TYPE_695
    ACT_TILE_86,  // TILE_TYPE_696
    ACT_TILE_86,  // TILE_TYPE_697
    ACT_TILE_86,  // TILE_TYPE_698
    ACT_TILE_86,  // TILE_TYPE_699
    ACT_TILE_86,  // TILE_TYPE_700
    ACT_TILE_86,  // TILE_TYPE_701
    ACT_TILE_86,  // TILE_TYPE_702
    ACT_TILE_86,  // TILE_TYPE_703
    ACT_TILE_86,  // TILE_TYPE_704
    ACT_TILE_86,  // TILE_TYPE_705
    ACT_TILE_86,  // TILE_TYPE_706
    ACT_TILE_86,  // TILE_TYPE_707
    ACT_TILE_86,  // TILE_TYPE_708
    ACT_TILE_86,  // TILE_TYPE_709
    ACT_TILE_86,  // TILE_TYPE_710
    ACT_TILE_86,  // TILE_TYPE_711
    ACT_TILE_86,  // TILE_TYPE_712
    ACT_TILE_86,  // TILE_TYPE_713
    ACT_TILE_86,  // TILE_TYPE_714
    ACT_TILE_86,  // TILE_TYPE_715
    ACT_TILE_86,  // TILE_TYPE_716
    ACT_TILE_86,  // TILE_TYPE_717
    ACT_TILE_86,  // TILE_TYPE_718
    ACT_TILE_86,  // TILE_TYPE_719
    ACT_TILE_86,  // TILE_TYPE_720
    ACT_TILE_86,  // TILE_TYPE_721
    ACT_TILE_86,  // TILE_TYPE_722
    ACT_TILE_86,  // TILE_TYPE_723
    ACT_TILE_86,  // TILE_TYPE_724
    ACT_TILE_86,  // TILE_TYPE_725
    ACT_TILE_86,  // TILE_TYPE_726
    ACT_TILE_86,  // TILE_TYPE_727
    ACT_TILE_86,  // TILE_TYPE_728
    ACT_TILE_86,  // TILE_TYPE_729
    ACT_TILE_86,  // TILE_TYPE_730
    ACT_TILE_86,  // TILE_TYPE_731
    ACT_TILE_86,  // TILE_TYPE_732
    ACT_TILE_86,  // TILE_TYPE_733
    ACT_TILE_86,  // TILE_TYPE_734
    ACT_TILE_86,  // TILE_TYPE_735
    ACT_TILE_86,  // TILE_TYPE_736
    ACT_TILE_86,  // TILE_TYPE_737
    ACT_TILE_86,  // TILE_TYPE_738
    ACT_TILE_86,  // TILE_TYPE_739
    ACT_TILE_86,  // TILE_TYPE_740
    ACT_TILE_86,  // TILE_TYPE_741
    ACT_TILE_86,  // TILE_TYPE_742
    ACT_TILE_86,  // TILE_TYPE_743
    ACT_TILE_86,  // TILE_TYPE_744
    ACT_TILE_86,  // TILE_TYPE_745
    ACT_TILE_86,  // TILE_TYPE_746
    ACT_TILE_86,  // TILE_TYPE_747
    ACT_TILE_86,  // TILE_TYPE_748
    ACT_TILE_86,  // TILE_TYPE_749
    ACT_TILE_86,  // TILE_TYPE_750
    ACT_TILE_86,  // TILE_TYPE_751
    ACT_TILE_86,  // TILE_TYPE_752
    ACT_TILE_86,  // TILE_TYPE_753
    ACT_TILE_10,  // TILE_TYPE_754
    ACT_TILE_9,   // TILE_TYPE_755
    ACT_TILE_10,  // TILE_TYPE_756
    ACT_TILE_10,  // TILE_TYPE_757
    ACT_TILE_13,  // TILE_TYPE_758
    ACT_TILE_0,   // TILE_TYPE_759
    ACT_TILE_0,   // TILE_TYPE_760
    ACT_TILE_0,   // TILE_TYPE_761
    ACT_TILE_0,   // TILE_TYPE_762
    ACT_TILE_63,  // TILE_TYPE_763
    ACT_TILE_0,   // TILE_TYPE_764
    ACT_TILE_0,   // TILE_TYPE_765
    ACT_TILE_0,   // TILE_TYPE_766
    ACT_TILE_0,   // TILE_TYPE_767
    ACT_TILE_0,   // TILE_TYPE_768
    ACT_TILE_0,   // TILE_TYPE_769
    ACT_TILE_0,   // TILE_TYPE_770
    ACT_TILE_0,   // TILE_TYPE_771
    ACT_TILE_0,   // TILE_TYPE_772
    ACT_TILE_0,   // TILE_TYPE_773
    ACT_TILE_0,   // TILE_TYPE_774
    ACT_TILE_0,   // TILE_TYPE_775
    ACT_TILE_0,   // TILE_TYPE_776
    ACT_TILE_0,   // TILE_TYPE_777
    ACT_TILE_0,   // TILE_TYPE_778
    ACT_TILE_0,   // TILE_TYPE_779
    ACT_TILE_0,   // TILE_TYPE_780
    ACT_TILE_16,  // TILE_TYPE_781
    ACT_TILE_16,  // TILE_TYPE_782
    ACT_TILE_0,   // TILE_TYPE_783
    ACT_TILE_12,  // TILE_TYPE_784
    ACT_TILE_0,   // TILE_TYPE_785
    ACT_TILE_0,   // TILE_TYPE_786
    ACT_TILE_1,   // TILE_TYPE_787
    ACT_TILE_24,  // TILE_TYPE_788
    ACT_TILE_87,  // TILE_TYPE_789
    ACT_TILE_88,  // TILE_TYPE_790
    ACT_TILE_89,  // TILE_TYPE_791
    ACT_TILE_89,  // TILE_TYPE_792
    ACT_TILE_90,  // TILE_TYPE_793
    ACT_TILE_91,  // TILE_TYPE_794
    ACT_TILE_92,  // TILE_TYPE_795
    ACT_TILE_93,  // TILE_TYPE_796
    ACT_TILE_94,  // TILE_TYPE_797
    ACT_TILE_95,  // TILE_TYPE_798
    ACT_TILE_96,  // TILE_TYPE_799
    ACT_TILE_0,   // TILE_TYPE_800
    ACT_TILE_0,   // TILE_TYPE_801
    ACT_TILE_0,   // TILE_TYPE_802
    ACT_TILE_13,  // TILE_TYPE_803
    ACT_TILE_13,  // TILE_TYPE_804
    ACT_TILE_13,  // TILE_TYPE_805
    ACT_TILE_13,  // TILE_TYPE_806
    ACT_TILE_13,  // TILE_TYPE_807
    ACT_TILE_13,  // TILE_TYPE_808
    ACT_TILE_13,  // TILE_TYPE_809
    ACT_TILE_13,  // TILE_TYPE_810
    ACT_TILE_13,  // TILE_TYPE_811
    ACT_TILE_13,  // TILE_TYPE_812
    ACT_TILE_13,  // TILE_TYPE_813
    ACT_TILE_13,  // TILE_TYPE_814
    ACT_TILE_13,  // TILE_TYPE_815
    ACT_TILE_13,  // TILE_TYPE_816
    ACT_TILE_13,  // TILE_TYPE_817
    ACT_TILE_13,  // TILE_TYPE_818
    ACT_TILE_13,  // TILE_TYPE_819
    ACT_TILE_13,  // TILE_TYPE_820
    ACT_TILE_13,  // TILE_TYPE_821
    ACT_TILE_13,  // TILE_TYPE_822
    ACT_TILE_13,  // TILE_TYPE_823
    ACT_TILE_13,  // TILE_TYPE_824
    ACT_TILE_13,  // TILE_TYPE_825
    ACT_TILE_13,  // TILE_TYPE_826
    ACT_TILE_13,  // TILE_TYPE_827
    ACT_TILE_13,  // TILE_TYPE_828
    ACT_TILE_13,  // TILE_TYPE_829
    ACT_TILE_13,  // TILE_TYPE_830
    ACT_TILE_13,  // TILE_TYPE_831
    ACT_TILE_13,  // TILE_TYPE_832
    ACT_TILE_12,  // TILE_TYPE_833
    ACT_TILE_12,  // TILE_TYPE_834
    ACT_TILE_12,  // TILE_TYPE_835
    ACT_TILE_12,  // TILE_TYPE_836
    ACT_TILE_12,  // TILE_TYPE_837
    ACT_TILE_12,  // TILE_TYPE_838
    ACT_TILE_97,  // TILE_TYPE_839
    ACT_TILE_97,  // TILE_TYPE_840
    ACT_TILE_97,  // TILE_TYPE_841
    ACT_TILE_97,  // TILE_TYPE_842
    ACT_TILE_98,  // TILE_TYPE_843
    ACT_TILE_98,  // TILE_TYPE_844
    ACT_TILE_0,   // TILE_TYPE_845
    ACT_TILE_0,   // TILE_TYPE_846
    ACT_TILE_99,  // TILE_TYPE_847
    ACT_TILE_99,  // TILE_TYPE_848
    ACT_TILE_99,  // TILE_TYPE_849
    ACT_TILE_99,  // TILE_TYPE_850
    ACT_TILE_100, // TILE_TYPE_851
    ACT_TILE_0,   // TILE_TYPE_852
    ACT_TILE_101, // TILE_TYPE_853
    ACT_TILE_102, // TILE_TYPE_854
    ACT_TILE_103, // TILE_TYPE_855
    ACT_TILE_104, // TILE_TYPE_856
    ACT_TILE_105, // TILE_TYPE_857
    ACT_TILE_106, // TILE_TYPE_858
    ACT_TILE_107, // TILE_TYPE_859
    ACT_TILE_108, // TILE_TYPE_860
    ACT_TILE_109, // TILE_TYPE_861
    ACT_TILE_110, // TILE_TYPE_862
    ACT_TILE_111, // TILE_TYPE_863
    ACT_TILE_112, // TILE_TYPE_864
    ACT_TILE_112, // TILE_TYPE_865
    ACT_TILE_112, // TILE_TYPE_866
    ACT_TILE_112, // TILE_TYPE_867
    ACT_TILE_112, // TILE_TYPE_868
    ACT_TILE_0,   // TILE_TYPE_869
    ACT_TILE_113, // TILE_TYPE_870
    ACT_TILE_46,  // TILE_TYPE_871
    ACT_TILE_46,  // TILE_TYPE_872
    ACT_TILE_114, // TILE_TYPE_873
    ACT_TILE_114, // TILE_TYPE_874
    ACT_TILE_114, // TILE_TYPE_875
    ACT_TILE_114, // TILE_TYPE_876
    ACT_TILE_114, // TILE_TYPE_877
    ACT_TILE_114, // TILE_TYPE_878
    ACT_TILE_114, // TILE_TYPE_879
    ACT_TILE_114, // TILE_TYPE_880
    ACT_TILE_114, // TILE_TYPE_881
    ACT_TILE_114, // TILE_TYPE_882
    ACT_TILE_114, // TILE_TYPE_883
    ACT_TILE_114, // TILE_TYPE_884
    ACT_TILE_114, // TILE_TYPE_885
    ACT_TILE_114, // TILE_TYPE_886
    ACT_TILE_115, // TILE_TYPE_887
    ACT_TILE_115, // TILE_TYPE_888
    ACT_TILE_0,   // TILE_TYPE_889
    ACT_TILE_0,   // TILE_TYPE_890
    ACT_TILE_0,   // TILE_TYPE_891
    ACT_TILE_0,   // TILE_TYPE_892
    ACT_TILE_0,   // TILE_TYPE_893
    ACT_TILE_0,   // TILE_TYPE_894
    ACT_TILE_0,   // TILE_TYPE_895
    ACT_TILE_0,   // TILE_TYPE_896
    ACT_TILE_0,   // TILE_TYPE_897
    ACT_TILE_0,   // TILE_TYPE_898
    ACT_TILE_0,   // TILE_TYPE_899
    ACT_TILE_0,   // TILE_TYPE_900
    ACT_TILE_0,   // TILE_TYPE_901
    ACT_TILE_0,   // TILE_TYPE_902
    ACT_TILE_0,   // TILE_TYPE_903
    ACT_TILE_0,   // TILE_TYPE_904
    ACT_TILE_0,   // TILE_TYPE_905
    ACT_TILE_0,   // TILE_TYPE_906
    ACT_TILE_0,   // TILE_TYPE_907
    ACT_TILE_0,   // TILE_TYPE_908
    ACT_TILE_0,   // TILE_TYPE_909
    ACT_TILE_0,   // TILE_TYPE_910
    ACT_TILE_0,   // TILE_TYPE_911
    ACT_TILE_0,   // TILE_TYPE_912
    ACT_TILE_0,   // TILE_TYPE_913
    ACT_TILE_0,   // TILE_TYPE_914
    ACT_TILE_0,   // TILE_TYPE_915
    ACT_TILE_42,  // TILE_TYPE_916
    ACT_TILE_43,  // TILE_TYPE_917
    ACT_TILE_44,  // TILE_TYPE_918
    ACT_TILE_45,  // TILE_TYPE_919
    ACT_TILE_0,   // TILE_TYPE_920
    ACT_TILE_0,   // TILE_TYPE_921
    ACT_TILE_0,   // TILE_TYPE_922
    ACT_TILE_0,   // TILE_TYPE_923
    ACT_TILE_0,   // TILE_TYPE_924
    ACT_TILE_0,   // TILE_TYPE_925
    ACT_TILE_0,   // TILE_TYPE_926
    ACT_TILE_0,   // TILE_TYPE_927
    ACT_TILE_0,   // TILE_TYPE_928
    ACT_TILE_116, // TILE_TYPE_929
    ACT_TILE_116, // TILE_TYPE_930
    ACT_TILE_116, // TILE_TYPE_931
    ACT_TILE_0,   // TILE_TYPE_932
    ACT_TILE_0,   // TILE_TYPE_933
    ACT_TILE_0,   // TILE_TYPE_934
    ACT_TILE_0,   // TILE_TYPE_935
    ACT_TILE_43,  // TILE_TYPE_936
    ACT_TILE_42,  // TILE_TYPE_937
    ACT_TILE_45,  // TILE_TYPE_938
    ACT_TILE_44,  // TILE_TYPE_939
    ACT_TILE_117, // TILE_TYPE_940
    ACT_TILE_0,   // TILE_TYPE_941
    ACT_TILE_82,  // TILE_TYPE_942
    ACT_TILE_0,   // TILE_TYPE_943
    ACT_TILE_0,   // TILE_TYPE_944
    ACT_TILE_0,   // TILE_TYPE_945
    ACT_TILE_0,   // TILE_TYPE_946
    ACT_TILE_0,   // TILE_TYPE_947
    ACT_TILE_0,   // TILE_TYPE_948
    ACT_TILE_43,  // TILE_TYPE_949
    ACT_TILE_42,  // TILE_TYPE_950
    ACT_TILE_0,   // TILE_TYPE_951
    ACT_TILE_0,   // TILE_TYPE_952
    ACT_TILE_44,  // TILE_TYPE_953
    ACT_TILE_0,   // TILE_TYPE_954
    ACT_TILE_0,   // TILE_TYPE_955
    ACT_TILE_45,  // TILE_TYPE_956
    ACT_TILE_0,   // TILE_TYPE_957
    ACT_TILE_0,   // TILE_TYPE_958
    ACT_TILE_0,   // TILE_TYPE_959
    ACT_TILE_0,   // TILE_TYPE_960
    ACT_TILE_41,  // TILE_TYPE_961
    ACT_TILE_40,  // TILE_TYPE_962
    ACT_TILE_38,  // TILE_TYPE_963
    ACT_TILE_38,  // TILE_TYPE_964
    ACT_TILE_116, // TILE_TYPE_965
    ACT_TILE_116, // TILE_TYPE_966
    ACT_TILE_116, // TILE_TYPE_967
    ACT_TILE_116, // TILE_TYPE_968
    ACT_TILE_116, // TILE_TYPE_969
    ACT_TILE_116, // TILE_TYPE_970
    ACT_TILE_116, // TILE_TYPE_971
    ACT_TILE_116, // TILE_TYPE_972
    ACT_TILE_116, // TILE_TYPE_973
    ACT_TILE_116, // TILE_TYPE_974
    ACT_TILE_116, // TILE_TYPE_975
    ACT_TILE_116, // TILE_TYPE_976
    ACT_TILE_116, // TILE_TYPE_977
    ACT_TILE_90,  // TILE_TYPE_978
    ACT_TILE_41,  // TILE_TYPE_979
    ACT_TILE_41,  // TILE_TYPE_980
    ACT_TILE_41,  // TILE_TYPE_981
    ACT_TILE_12,  // TILE_TYPE_982
    ACT_TILE_0,   // TILE_TYPE_983
    ACT_TILE_12,  // TILE_TYPE_984
    ACT_TILE_12,  // TILE_TYPE_985
    ACT_TILE_41,  // TILE_TYPE_986
    ACT_TILE_41,  // TILE_TYPE_987
    ACT_TILE_116, // TILE_TYPE_988
    ACT_TILE_0,   // TILE_TYPE_989
    ACT_TILE_0,   // TILE_TYPE_990
    ACT_TILE_10,  // TILE_TYPE_991
    ACT_TILE_0,   // TILE_TYPE_992
    ACT_TILE_0,   // TILE_TYPE_993
    ACT_TILE_0,   // TILE_TYPE_994
    ACT_TILE_0,   // TILE_TYPE_995
    ACT_TILE_0,   // TILE_TYPE_996
    ACT_TILE_0,   // TILE_TYPE_997
    ACT_TILE_40,  // TILE_TYPE_998
    ACT_TILE_0,   // TILE_TYPE_999
    ACT_TILE_0,   // TILE_TYPE_1000
    ACT_TILE_0,   // TILE_TYPE_1001
    ACT_TILE_40,  // TILE_TYPE_1002
    ACT_TILE_0,   // TILE_TYPE_1003
    ACT_TILE_10,  // TILE_TYPE_1004
    ACT_TILE_10,  // TILE_TYPE_1005
    ACT_TILE_10,  // TILE_TYPE_1006
    ACT_TILE_10,  // TILE_TYPE_1007
    ACT_TILE_10,  // TILE_TYPE_1008
    ACT_TILE_10,  // TILE_TYPE_1009
    ACT_TILE_10,  // TILE_TYPE_1010
    ACT_TILE_40,  // TILE_TYPE_1011
    ACT_TILE_40,  // TILE_TYPE_1012
    ACT_TILE_84,  // TILE_TYPE_1013
    ACT_TILE_84,  // TILE_TYPE_1014
    ACT_TILE_84,  // TILE_TYPE_1015
    ACT_TILE_84,  // TILE_TYPE_1016
    ACT_TILE_0,   // TILE_TYPE_1017
    ACT_TILE_61,  // TILE_TYPE_1018
    ACT_TILE_61,  // TILE_TYPE_1019
    ACT_TILE_61,  // TILE_TYPE_1020
    ACT_TILE_61,  // TILE_TYPE_1021
    ACT_TILE_61,  // TILE_TYPE_1022
    ACT_TILE_61,  // TILE_TYPE_1023
    ACT_TILE_61,  // TILE_TYPE_1024
    ACT_TILE_61,  // TILE_TYPE_1025
    ACT_TILE_62,  // TILE_TYPE_1026
    ACT_TILE_62,  // TILE_TYPE_1027
    ACT_TILE_62,  // TILE_TYPE_1028
    ACT_TILE_62,  // TILE_TYPE_1029
    ACT_TILE_62,  // TILE_TYPE_1030
    ACT_TILE_62,  // TILE_TYPE_1031
    ACT_TILE_62,  // TILE_TYPE_1032
    ACT_TILE_62,  // TILE_TYPE_1033
    ACT_TILE_9,   // TILE_TYPE_1034
    ACT_TILE_9,   // TILE_TYPE_1035
    ACT_TILE_9,   // TILE_TYPE_1036
    ACT_TILE_9,   // TILE_TYPE_1037
    ACT_TILE_9,   // TILE_TYPE_1038
    ACT_TILE_9,   // TILE_TYPE_1039
    ACT_TILE_9,   // TILE_TYPE_1040
    ACT_TILE_9,   // TILE_TYPE_1041
    ACT_TILE_9,   // TILE_TYPE_1042
    ACT_TILE_9,   // TILE_TYPE_1043
    ACT_TILE_9,   // TILE_TYPE_1044
    ACT_TILE_9,   // TILE_TYPE_1045
    ACT_TILE_9,   // TILE_TYPE_1046
    ACT_TILE_9,   // TILE_TYPE_1047
    ACT_TILE_9,   // TILE_TYPE_1048
    ACT_TILE_9,   // TILE_TYPE_1049
    ACT_TILE_9,   // TILE_TYPE_1050
    ACT_TILE_42,  // TILE_TYPE_1051
    ACT_TILE_10,  // TILE_TYPE_1052
    ACT_TILE_10,  // TILE_TYPE_1053
    ACT_TILE_10,  // TILE_TYPE_1054
    ACT_TILE_10,  // TILE_TYPE_1055
    ACT_TILE_10,  // TILE_TYPE_1056
    ACT_TILE_10,  // TILE_TYPE_1057
    ACT_TILE_15,  // TILE_TYPE_1058
    ACT_TILE_10,  // TILE_TYPE_1059
    ACT_TILE_42,  // TILE_TYPE_1060
    ACT_TILE_13,  // TILE_TYPE_1061
    ACT_TILE_0,   // TILE_TYPE_1062
    ACT_TILE_42,  // TILE_TYPE_1063
    ACT_TILE_0,   // TILE_TYPE_1064
    ACT_TILE_0,   // TILE_TYPE_1065
    ACT_TILE_0,   // TILE_TYPE_1066
    ACT_TILE_0,   // TILE_TYPE_1067
    ACT_TILE_16,  // TILE_TYPE_1068
    ACT_TILE_16,  // TILE_TYPE_1069
    ACT_TILE_16,  // TILE_TYPE_1070
    ACT_TILE_16,  // TILE_TYPE_1071
    ACT_TILE_16,  // TILE_TYPE_1072
    ACT_TILE_16,  // TILE_TYPE_1073
    ACT_TILE_16,  // TILE_TYPE_1074
    ACT_TILE_16,  // TILE_TYPE_1075
    ACT_TILE_16,  // TILE_TYPE_1076
    ACT_TILE_9,   // TILE_TYPE_1077
    ACT_TILE_9,   // TILE_TYPE_1078
    ACT_TILE_9,   // TILE_TYPE_1079
    ACT_TILE_56,  // TILE_TYPE_1080
    ACT_TILE_10,  // TILE_TYPE_1081
    ACT_TILE_42,  // TILE_TYPE_1082
    ACT_TILE_0,   // TILE_TYPE_1083
    ACT_TILE_10,  // TILE_TYPE_1084
    ACT_TILE_79,  // TILE_TYPE_1085
    ACT_TILE_77,  // TILE_TYPE_1086
    ACT_TILE_0,   // TILE_TYPE_1087
    ACT_TILE_0,   // TILE_TYPE_1088
    ACT_TILE_0,   // TILE_TYPE_1089
    ACT_TILE_0,   // TILE_TYPE_1090
    ACT_TILE_10,  // TILE_TYPE_1091
    ACT_TILE_0,   // TILE_TYPE_1092
    ACT_TILE_0,   // TILE_TYPE_1093
    ACT_TILE_0,   // TILE_TYPE_1094
    ACT_TILE_78,  // TILE_TYPE_1095
    ACT_TILE_78,  // TILE_TYPE_1096
    ACT_TILE_12,  // TILE_TYPE_1097
    ACT_TILE_12,  // TILE_TYPE_1098
    ACT_TILE_12,  // TILE_TYPE_1099
    ACT_TILE_12,  // TILE_TYPE_1100
    ACT_TILE_61,  // TILE_TYPE_1101
    ACT_TILE_61,  // TILE_TYPE_1102
    ACT_TILE_61,  // TILE_TYPE_1103
    ACT_TILE_40,  // TILE_TYPE_1104
    ACT_TILE_12,  // TILE_TYPE_1105
    ACT_TILE_40,  // TILE_TYPE_1106
    ACT_TILE_10,  // TILE_TYPE_1107
    ACT_TILE_10,  // TILE_TYPE_1108
    ACT_TILE_10,  // TILE_TYPE_1109
    ACT_TILE_0,   // TILE_TYPE_1110
    ACT_TILE_0,   // TILE_TYPE_1111
    ACT_TILE_39,  // TILE_TYPE_1112
    ACT_TILE_39,  // TILE_TYPE_1113
    ACT_TILE_39,  // TILE_TYPE_1114
    ACT_TILE_39,  // TILE_TYPE_1115
    ACT_TILE_39,  // TILE_TYPE_1116
    ACT_TILE_39,  // TILE_TYPE_1117
    ACT_TILE_38,  // TILE_TYPE_1118
    ACT_TILE_38,  // TILE_TYPE_1119
    ACT_TILE_52,  // TILE_TYPE_1120
    ACT_TILE_52,  // TILE_TYPE_1121
    ACT_TILE_12,  // TILE_TYPE_1122
    ACT_TILE_55,  // TILE_TYPE_1123
    ACT_TILE_0,   // TILE_TYPE_1124
    ACT_TILE_0,   // TILE_TYPE_1125
    ACT_TILE_0,   // TILE_TYPE_1126
    ACT_TILE_0,   // TILE_TYPE_1127
    ACT_TILE_0,   // TILE_TYPE_1128
    ACT_TILE_54,  // TILE_TYPE_1129
    ACT_TILE_0,   // TILE_TYPE_1130
    ACT_TILE_0,   // TILE_TYPE_1131
    ACT_TILE_0,   // TILE_TYPE_1132
    ACT_TILE_0,   // TILE_TYPE_1133
    ACT_TILE_40,  // TILE_TYPE_1134
    ACT_TILE_53,  // TILE_TYPE_1135
    ACT_TILE_53,  // TILE_TYPE_1136
    ACT_TILE_40,  // TILE_TYPE_1137
    ACT_TILE_55,  // TILE_TYPE_1138
    ACT_TILE_12,  // TILE_TYPE_1139
    ACT_TILE_0,   // TILE_TYPE_1140
    ACT_TILE_12,  // TILE_TYPE_1141
    ACT_TILE_12,  // TILE_TYPE_1142
    ACT_TILE_12,  // TILE_TYPE_1143
    ACT_TILE_12,  // TILE_TYPE_1144
    ACT_TILE_12,  // TILE_TYPE_1145
    ACT_TILE_54,  // TILE_TYPE_1146
    ACT_TILE_13,  // TILE_TYPE_1147
    ACT_TILE_40,  // TILE_TYPE_1148
    ACT_TILE_0,   // TILE_TYPE_1149
    ACT_TILE_0,   // TILE_TYPE_1150
    ACT_TILE_0,   // TILE_TYPE_1151
    ACT_TILE_52,  // TILE_TYPE_1152
    ACT_TILE_52,  // TILE_TYPE_1153
    ACT_TILE_52,  // TILE_TYPE_1154
    ACT_TILE_10,  // TILE_TYPE_1155
    ACT_TILE_10,  // TILE_TYPE_1156
    ACT_TILE_0,   // TILE_TYPE_1157
    ACT_TILE_0,   // TILE_TYPE_1158
    ACT_TILE_0,   // TILE_TYPE_1159
    ACT_TILE_0,   // TILE_TYPE_1160
    ACT_TILE_40,  // TILE_TYPE_1161
    ACT_TILE_15,  // TILE_TYPE_1162
    ACT_TILE_15,  // TILE_TYPE_1163
    ACT_TILE_51,  // TILE_TYPE_1164
    ACT_TILE_16,  // TILE_TYPE_1165
    ACT_TILE_10,  // TILE_TYPE_1166
    ACT_TILE_10,  // TILE_TYPE_1167
    ACT_TILE_16,  // TILE_TYPE_1168
    ACT_TILE_16,  // TILE_TYPE_1169
    ACT_TILE_10,  // TILE_TYPE_1170
    ACT_TILE_10,  // TILE_TYPE_1171
    ACT_TILE_10,  // TILE_TYPE_1172
    ACT_TILE_10,  // TILE_TYPE_1173
    ACT_TILE_0,   // TILE_TYPE_1174
    ACT_TILE_0,   // TILE_TYPE_1175
    ACT_TILE_15,  // TILE_TYPE_1176
    ACT_TILE_9,   // TILE_TYPE_1177
    ACT_TILE_14,  // TILE_TYPE_1178
    ACT_TILE_15,  // TILE_TYPE_1179
    ACT_TILE_14,  // TILE_TYPE_1180
    ACT_TILE_15,  // TILE_TYPE_1181
    ACT_TILE_15,  // TILE_TYPE_1182
    ACT_TILE_15,  // TILE_TYPE_1183
    ACT_TILE_0,   // TILE_TYPE_1184
    ACT_TILE_0,   // TILE_TYPE_1185
    ACT_TILE_0,   // TILE_TYPE_1186
    ACT_TILE_0,   // TILE_TYPE_1187
    ACT_TILE_0,   // TILE_TYPE_1188
    ACT_TILE_0,   // TILE_TYPE_1189
    ACT_TILE_0,   // TILE_TYPE_1190
    ACT_TILE_0,   // TILE_TYPE_1191
    ACT_TILE_0,   // TILE_TYPE_1192
    ACT_TILE_0,   // TILE_TYPE_1193
    ACT_TILE_116, // TILE_TYPE_1194
    ACT_TILE_116, // TILE_TYPE_1195
    ACT_TILE_116, // TILE_TYPE_1196
    ACT_TILE_116, // TILE_TYPE_1197
    ACT_TILE_116, // TILE_TYPE_1198
    ACT_TILE_116, // TILE_TYPE_1199
    ACT_TILE_116, // TILE_TYPE_1200
    ACT_TILE_116, // TILE_TYPE_1201
    ACT_TILE_116, // TILE_TYPE_1202
    ACT_TILE_116, // TILE_TYPE_1203
    ACT_TILE_116, // TILE_TYPE_1204
    ACT_TILE_116, // TILE_TYPE_1205
    ACT_TILE_116, // TILE_TYPE_1206
    ACT_TILE_15,  // TILE_TYPE_1207
    ACT_TILE_40,  // TILE_TYPE_1208
    ACT_TILE_15,  // TILE_TYPE_1209
    ACT_TILE_40,  // TILE_TYPE_1210
    ACT_TILE_40,  // TILE_TYPE_1211
    ACT_TILE_15,  // TILE_TYPE_1212
    ACT_TILE_12,  // TILE_TYPE_1213
    ACT_TILE_12,  // TILE_TYPE_1214
    ACT_TILE_12,  // TILE_TYPE_1215
    ACT_TILE_12,  // TILE_TYPE_1216
    ACT_TILE_12,  // TILE_TYPE_1217
    ACT_TILE_25,  // TILE_TYPE_1218
    ACT_TILE_40,  // TILE_TYPE_1219
    ACT_TILE_40,  // TILE_TYPE_1220
    ACT_TILE_40,  // TILE_TYPE_1221
    ACT_TILE_0,   // TILE_TYPE_1222
    ACT_TILE_16,  // TILE_TYPE_1223
    ACT_TILE_16,  // TILE_TYPE_1224
    ACT_TILE_116, // TILE_TYPE_1225
    ACT_TILE_0,   // TILE_TYPE_1226
    ACT_TILE_0,   // TILE_TYPE_1227
    ACT_TILE_12,  // TILE_TYPE_1228
    ACT_TILE_45,  // TILE_TYPE_1229
    ACT_TILE_0,   // TILE_TYPE_1230
    ACT_TILE_40,  // TILE_TYPE_1231
    ACT_TILE_40,  // TILE_TYPE_1232
    ACT_TILE_43,  // TILE_TYPE_1233
    ACT_TILE_25,  // TILE_TYPE_1234
    ACT_TILE_0,   // TILE_TYPE_1235
    ACT_TILE_10,  // TILE_TYPE_1236
    ACT_TILE_0,   // TILE_TYPE_1237
    ACT_TILE_40,  // TILE_TYPE_1238
    ACT_TILE_0,   // TILE_TYPE_1239
    ACT_TILE_43,  // TILE_TYPE_1240
    ACT_TILE_43,  // TILE_TYPE_1241
    ACT_TILE_43,  // TILE_TYPE_1242
    ACT_TILE_0,   // TILE_TYPE_1243
    ACT_TILE_42,  // TILE_TYPE_1244
    ACT_TILE_42,  // TILE_TYPE_1245
    ACT_TILE_42,  // TILE_TYPE_1246
    ACT_TILE_42,  // TILE_TYPE_1247
    ACT_TILE_0,   // TILE_TYPE_1248
    ACT_TILE_116, // TILE_TYPE_1249
    ACT_TILE_116, // TILE_TYPE_1250
    ACT_TILE_116, // TILE_TYPE_1251
    ACT_TILE_116, // TILE_TYPE_1252
    ACT_TILE_116, // TILE_TYPE_1253
    ACT_TILE_116, // TILE_TYPE_1254
    ACT_TILE_116, // TILE_TYPE_1255
    ACT_TILE_116, // TILE_TYPE_1256
    ACT_TILE_116, // TILE_TYPE_1257
    ACT_TILE_116, // TILE_TYPE_1258
    ACT_TILE_116, // TILE_TYPE_1259
    ACT_TILE_44,  // TILE_TYPE_1260
    ACT_TILE_42,  // TILE_TYPE_1261
    ACT_TILE_42,  // TILE_TYPE_1262
    ACT_TILE_0,   // TILE_TYPE_1263
    ACT_TILE_38,  // TILE_TYPE_1264
    ACT_TILE_38,  // TILE_TYPE_1265
    ACT_TILE_0,   // TILE_TYPE_1266
    ACT_TILE_0,   // TILE_TYPE_1267
    ACT_TILE_0,   // TILE_TYPE_1268
    ACT_TILE_0,   // TILE_TYPE_1269
    ACT_TILE_0,   // TILE_TYPE_1270
    ACT_TILE_0,   // TILE_TYPE_1271
    ACT_TILE_0,   // TILE_TYPE_1272
    ACT_TILE_0,   // TILE_TYPE_1273
    ACT_TILE_0,   // TILE_TYPE_1274
    ACT_TILE_63,  // TILE_TYPE_1275
    ACT_TILE_83,  // TILE_TYPE_1276
    ACT_TILE_0,   // TILE_TYPE_1277
    ACT_TILE_0,   // TILE_TYPE_1278
    ACT_TILE_0,   // TILE_TYPE_1279
    ACT_TILE_0,   // TILE_TYPE_1280
    ACT_TILE_38,  // TILE_TYPE_1281
    ACT_TILE_38,  // TILE_TYPE_1282
    ACT_TILE_40,  // TILE_TYPE_1283
    ACT_TILE_12,  // TILE_TYPE_1284
    ACT_TILE_12,  // TILE_TYPE_1285
    ACT_TILE_12,  // TILE_TYPE_1286
    ACT_TILE_12,  // TILE_TYPE_1287
    ACT_TILE_12,  // TILE_TYPE_1288
    ACT_TILE_12,  // TILE_TYPE_1289
    ACT_TILE_12,  // TILE_TYPE_1290
    ACT_TILE_12,  // TILE_TYPE_1291
    ACT_TILE_12,  // TILE_TYPE_1292
    ACT_TILE_12,  // TILE_TYPE_1293
    ACT_TILE_12,  // TILE_TYPE_1294
    ACT_TILE_41,  // TILE_TYPE_1295
    ACT_TILE_41,  // TILE_TYPE_1296
    ACT_TILE_38,  // TILE_TYPE_1297
    ACT_TILE_38,  // TILE_TYPE_1298
    ACT_TILE_12,  // TILE_TYPE_1299
    ACT_TILE_12,  // TILE_TYPE_1300
    ACT_TILE_41,  // TILE_TYPE_1301
    ACT_TILE_41,  // TILE_TYPE_1302
    ACT_TILE_12,  // TILE_TYPE_1303
    ACT_TILE_12,  // TILE_TYPE_1304
    ACT_TILE_116, // TILE_TYPE_1305
    ACT_TILE_116, // TILE_TYPE_1306
    ACT_TILE_116, // TILE_TYPE_1307
    ACT_TILE_116, // TILE_TYPE_1308
    ACT_TILE_116, // TILE_TYPE_1309
    ACT_TILE_0,   // TILE_TYPE_1310
    ACT_TILE_0,   // TILE_TYPE_1311
    ACT_TILE_40,  // TILE_TYPE_1312
    ACT_TILE_0,   // TILE_TYPE_1313
    ACT_TILE_0,   // TILE_TYPE_1314
    ACT_TILE_43,  // TILE_TYPE_1315
    ACT_TILE_42,  // TILE_TYPE_1316
    ACT_TILE_0,   // TILE_TYPE_1317
    ACT_TILE_0,   // TILE_TYPE_1318
    ACT_TILE_44,  // TILE_TYPE_1319
    ACT_TILE_13,  // TILE_TYPE_1320
    ACT_TILE_40,  // TILE_TYPE_1321
    ACT_TILE_40,  // TILE_TYPE_1322
    ACT_TILE_42,  // TILE_TYPE_1323
    ACT_TILE_44,  // TILE_TYPE_1324
    ACT_TILE_45,  // TILE_TYPE_1325
    ACT_TILE_44,  // TILE_TYPE_1326
    ACT_TILE_45,  // TILE_TYPE_1327
    ACT_TILE_44,  // TILE_TYPE_1328
    ACT_TILE_45,  // TILE_TYPE_1329
    ACT_TILE_42,  // TILE_TYPE_1330
    ACT_TILE_42,  // TILE_TYPE_1331
    ACT_TILE_42,  // TILE_TYPE_1332
    ACT_TILE_43,  // TILE_TYPE_1333
    ACT_TILE_43,  // TILE_TYPE_1334
    ACT_TILE_43,  // TILE_TYPE_1335
    ACT_TILE_100, // TILE_TYPE_1336
    ACT_TILE_101, // TILE_TYPE_1337
    ACT_TILE_104, // TILE_TYPE_1338
    ACT_TILE_106, // TILE_TYPE_1339
    ACT_TILE_102, // TILE_TYPE_1340
    ACT_TILE_107, // TILE_TYPE_1341
    ACT_TILE_105, // TILE_TYPE_1342
    ACT_TILE_103, // TILE_TYPE_1343
    ACT_TILE_0,   // TILE_TYPE_1344
    ACT_TILE_14,  // TILE_TYPE_1345
    ACT_TILE_14,  // TILE_TYPE_1346
    ACT_TILE_41,  // TILE_TYPE_1347
    ACT_TILE_40,  // TILE_TYPE_1348
#ifdef EU
    ACT_TILE_0, // TILE_TYPE_1349
    ACT_TILE_0, // TILE_TYPE_1350
#else
    ACT_TILE_41, // TILE_TYPE_1349
    ACT_TILE_41, // TILE_TYPE_1350
#endif
    ACT_TILE_40, // TILE_TYPE_1351
#ifdef EU
    ACT_TILE_0, // TILE_TYPE_1352
#else
    ACT_TILE_41, // TILE_TYPE_1352
#endif
    ACT_TILE_40, // TILE_TYPE_1353
#ifdef EU
    ACT_TILE_0, // TILE_TYPE_1354
#else
    ACT_TILE_41, // TILE_TYPE_1354
#endif
    ACT_TILE_17,  // TILE_TYPE_1355
    ACT_TILE_15,  // TILE_TYPE_1356
    ACT_TILE_0,   // TILE_TYPE_1357
    ACT_TILE_116, // TILE_TYPE_1358
    ACT_TILE_43,  // TILE_TYPE_1359
    ACT_TILE_63,  // TILE_TYPE_1360
    ACT_TILE_35,  // TILE_TYPE_1361
    ACT_TILE_35,  // TILE_TYPE_1362
    ACT_TILE_35,  // TILE_TYPE_1363
    ACT_TILE_35,  // TILE_TYPE_1364
    ACT_TILE_116, // TILE_TYPE_1365
    ACT_TILE_116, // TILE_TYPE_1366
    ACT_TILE_0,   // TILE_TYPE_1367
    ACT_TILE_42,  // TILE_TYPE_1368
    ACT_TILE_42,  // TILE_TYPE_1369
    ACT_TILE_0,   // TILE_TYPE_1370
    ACT_TILE_0,   // TILE_TYPE_1371
    ACT_TILE_0,   // TILE_TYPE_1372
    ACT_TILE_10,  // TILE_TYPE_1373
    ACT_TILE_40,  // TILE_TYPE_1374
    ACT_TILE_40,  // TILE_TYPE_1375
    ACT_TILE_40,  // TILE_TYPE_1376
    ACT_TILE_40,  // TILE_TYPE_1377
    ACT_TILE_40,  // TILE_TYPE_1378
    ACT_TILE_40,  // TILE_TYPE_1379
    ACT_TILE_40,  // TILE_TYPE_1380
    ACT_TILE_40,  // TILE_TYPE_1381
    ACT_TILE_40,  // TILE_TYPE_1382
    ACT_TILE_40,  // TILE_TYPE_1383
    ACT_TILE_40,  // TILE_TYPE_1384
    ACT_TILE_40,  // TILE_TYPE_1385
    ACT_TILE_0,   // TILE_TYPE_1386
    ACT_TILE_0,   // TILE_TYPE_1387
    ACT_TILE_44,  // TILE_TYPE_1388
    ACT_TILE_43,  // TILE_TYPE_1389
    ACT_TILE_40,  // TILE_TYPE_1390
    ACT_TILE_40,  // TILE_TYPE_1391
    ACT_TILE_40,  // TILE_TYPE_1392
    ACT_TILE_116, // TILE_TYPE_1393
    ACT_TILE_0,   // TILE_TYPE_1394
    ACT_TILE_0,   // TILE_TYPE_1395

};
