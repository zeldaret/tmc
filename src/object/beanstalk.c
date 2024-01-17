/**
 * @file beanstalk.c
 * @ingroup Objects
 *
 * @brief Beanstalk object
 */
#include "functions.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[4];
    /*0x6c*/ u32 unk_6c;
    /*0x70*/ u16 tilePos;
    /*0x72*/ u16 unk_72;
} BeanstalkEntity;

typedef struct {
    u8 type;
    s8 x;
    s8 y;
    u8 flipX;
} struct_08120DFC;

typedef struct {
    u8 unk_0;
    u8 unk_1;
} struct_08120E3C;

void Beanstalk_Action1(BeanstalkEntity*);
void Beanstalk_Init(BeanstalkEntity*);
void Beanstalk_Action1Type0(BeanstalkEntity*);
void Beanstalk_Action1Type1(BeanstalkEntity*);
void Beanstalk_Action1Type2(BeanstalkEntity*);
void Beanstalk_Action1Type4(BeanstalkEntity*);
void Beanstalk_Action1Type7(BeanstalkEntity*);
void Beanstalk_Action1Type8(BeanstalkEntity*);
void Beanstalk_Action1Type9(BeanstalkEntity*);
void Beanstalk_Action1Type0SubAction0(BeanstalkEntity*);
void Beanstalk_Action1Type0SubAction1(BeanstalkEntity*);
void Beanstalk_Action1Type0SubAction2(BeanstalkEntity*);
void Beanstalk_Action1Type8SubAction0(BeanstalkEntity*);
void Beanstalk_Action1Type8SubAction1(BeanstalkEntity*);

void Beanstalk(BeanstalkEntity* this) {
    static void (*const Beanstalk_Actions[])(BeanstalkEntity*) = {
        Beanstalk_Init,
        Beanstalk_Action1,
    };
    Beanstalk_Actions[super->action](this);
}

const struct_08120DFC gUnk_08120DFC[] = {
    { 4, -2, 8, 0 }, { 6, 10, 16, 1 }, { 5, -4, 33, 0 }, { 6, -7, 7, 0 }, { 4, 5, 33, 1 }, { 5, 2, 37, 1 },
};
void Beanstalk_Init(BeanstalkEntity* this) {
    static const struct_08120E3C gUnk_08120E14[] = {
        { 0, 3 }, { 1, 3 }, { 0, 3 }, { 2, 3 }, { 3, 2 }, { 6, 2 }, { 9, 4 }, { 0, 3 }, { 0, 4 }, { 12, 6 },
    };
    static const struct_08120E3C gUnk_08120E3C[] = {
        { 1, 6 }, { 2, 6 }, { 4, 3 }, { 7, 5 }, { 10, 7 },
    };

    Entity* obj;
    const struct_08120DFC* ptr;

    super->spriteRendering.b3 = 2;
    super->spriteOrientation.flipY = 1;
    SetEntityPriority(super, 4);
    if (super->type == 7) {
#ifndef EU
        if ((super->flags & ENT_DID_INIT) == 0) {
            return;
        }
#endif
        if (super->type2 == 0 && super->timer != 0) {
            if (CheckLocalFlag(super->timer) == 0) {
                return;
            }
            super->spriteOrientation.flipY = 2;
        }
        InitializeAnimation(super, gUnk_08120E3C[super->type2].unk_0);
        super->spritePriority.b0 = gUnk_08120E3C[super->type2].unk_1;
    } else {
        if (super->type != 0) {
            InitializeAnimation(super, gUnk_08120E14[super->type].unk_0);
        } else {
            LoadSwapGFX(super, 1, 2);
            InitAnimationForceUpdate(super, gUnk_08120E14[super->type].unk_0);
        }
        super->spritePriority.b0 = gUnk_08120E14[super->type].unk_1;
    }
    super->action = 1;
    super->spriteSettings.draw = 1;

    switch (super->type) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
            super->spriteVramOffset = 0x1c0;
            super->timer = 0;
            break;
        case 7:
            switch (super->type2) {
                case 0:
                    this->unk_6c = 0x10;
                    super->timer = 0;
                    do {
                        obj = CreateObject(BEANSTALK, 7, 1);
                        super->child = obj;
                        if (obj != NULL) {
                            obj->x.HALF.HI = super->x.HALF.HI;
                            (super->child)->y.HALF.HI = super->y.HALF.HI - (s16)this->unk_6c;
                            super->subtimer = 4;
                            while (--super->subtimer != 0) {
                                ptr = &gUnk_08120DFC[super->timer];
                                obj = CreateObject(BEANSTALK, 7, ptr->type - 2);
                                super->child = obj;
                                if (obj != NULL) {
                                    obj->x.HALF.HI = super->x.HALF.HI + ptr->x;
                                    (super->child)->y.HALF.HI = (super->y.HALF.HI - (s16)this->unk_6c) - ptr->y;
                                    super->child->spriteSettings.flipX = ptr->flipX;
                                }
                                super->timer++;
                            }
                            if (super->timer > 5) {
                                super->timer = 0;
                            }
                        }
                        this->unk_6c += 0x38;
                    } while (((s16)(super->y.HALF_U.HI - this->unk_6c)) >= gRoomControls.origin_y);
                    super->timer = 1;
                    break;
                case 2:
                case 3:
                    super->spriteRendering.b3 = 1;
                    // fallthrough
                case 4:
                    super->collisionLayer = 3;
            }
            break;
    }
    Beanstalk_Action1(this);
}

void Beanstalk_Action1(BeanstalkEntity* this) {
    static void (*const Beanstalk_Action1Types[])(BeanstalkEntity*) = {
        Beanstalk_Action1Type0, Beanstalk_Action1Type1, Beanstalk_Action1Type2, Beanstalk_Action1Type1,
        Beanstalk_Action1Type4, Beanstalk_Action1Type4, Beanstalk_Action1Type4, Beanstalk_Action1Type7,
        Beanstalk_Action1Type8, Beanstalk_Action1Type9,
    };
    Beanstalk_Action1Types[super->type](this);
}

void Beanstalk_Action1Type0(BeanstalkEntity* this) {
    static void (*const Beanstalk_Action1Type0SubActions[])(BeanstalkEntity*) = {
        Beanstalk_Action1Type0SubAction0,
        Beanstalk_Action1Type0SubAction1,
        Beanstalk_Action1Type0SubAction2,
    };
    Beanstalk_Action1Type0SubActions[super->subAction](this);
}

void Beanstalk_Action1Type0SubAction0(BeanstalkEntity* this) {
    UpdateAnimationSingleFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        if (super->timer < 2) {
            super->timer++;
        } else {
            InitAnimationForceUpdate(super, 1);
            super->timer = 16;
            super->subAction++;
        }
    }
}

void Beanstalk_Action1Type0SubAction1(BeanstalkEntity* this) {
    if (super->timer-- == 0) {
        super->timer = 16;
        SoundReq(SFX_198);
    }
    UpdateAnimationSingleFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        Entity* entity = CreateObject(BEANSTALK, 1, 0);
        super->child = entity;
        if (entity != NULL) {
            entity->x.HALF.HI = super->x.HALF.HI;
            (super->child)->y.HALF.HI = super->y.HALF.HI;
        }
        entity = CreateObject(BEANSTALK, 2, 0);
        super->child = entity;
        if (entity != NULL) {
            entity->x.HALF.HI = super->x.HALF.HI;
            (super->child)->y.HALF.HI = super->y.HALF.HI + -0x10;
        }
        super->spriteSettings.draw = 0;
        super->subAction++;
    }
}

void Beanstalk_Action1Type0SubAction2(BeanstalkEntity* this) {
    if (super->timer-- == 0) {
        super->timer = 16;
        SoundReq(SFX_198);
    }
}

void Beanstalk_Action1Type2(BeanstalkEntity* this) {
    s32 tmp;
    const struct_08120DFC* ptr;

    GetNextFrame(super);
    if ((super->frame & 1) != 0) {
        ptr = &gUnk_08120DFC[super->timer];
        super->child = CreateObject(BEANSTALK, ptr->type, 0);
        if (super->child != NULL) {
            super->child->x.HALF.HI = super->x.HALF.HI + ptr->x;
            super->child->y.HALF.HI = super->y.HALF.HI - ptr->y;
            super->child->spriteSettings.flipX = ptr->flipX;
        }
        if (++super->timer > 5) {
            super->timer = 0;
        }
    }
    if ((super->frame & ANIM_DONE) != 0) {
        super->child = CreateObject(BEANSTALK, 3, 0);
        if (super->child != NULL) {
            super->child->x.HALF.HI = super->x.HALF.HI;
            super->child->y.HALF.HI = super->y.HALF.HI;
        }
        tmp = super->y.HALF.HI -= 0x38;
        if (tmp * 0x10000 < 0) {
            DeleteEntity(super);
        }
    }
}

void Beanstalk_Action1Type4(BeanstalkEntity* this) {
    if ((super->frame & ANIM_DONE) == 0) {
        GetNextFrame(super);
    }
}

void Beanstalk_Action1Type1(BeanstalkEntity* this) {
}

void Beanstalk_Action1Type7(BeanstalkEntity* this) {
    switch (super->type2) {
        case 0:
            if (super->timer == 0) {
                return;
            }
            this->unk_6c = gRoomControls.origin_y;
            this->tilePos = TILE(super->x.HALF.HI, this->unk_6c);
            while (TRUE) {
                this->tilePos = TILE(super->x.HALF.HI, this->unk_6c);
                SetTile(SPECIAL_TILE_23, this->tilePos, LAYER_TOP);
                SetTile(SPECIAL_TILE_23, this->tilePos, LAYER_BOTTOM);
                this->unk_6c += 0x10;
                if (this->unk_6c >= gRoomControls.origin_y + gRoomControls.height)
                    break;
                if (this->unk_6c > super->y.HALF.HI) {
                    break;
                }
            }
            super->timer = 0;
            return;
            break;
        case 1:
            return;
        case 2:
        case 3:
        case 4:
            if (gPlayerState.floor_type == SURFACE_LADDER) {
                if (EntityInRectRadius(super, &gPlayerEntity.base, 0, 8)) {
                    if ((super->animIndex == (super->type2 - 1) * 3 + 1) && (super->timer == 0)) {
                        super->timer = 1;
                        InitializeAnimation(super, super->animIndex + 1);
                    }
                } else {
                    super->timer = 0;
                }
            } else {
                super->timer = 0;
            }
            GetNextFrame(super);
            if ((super->frame & ANIM_DONE) != 0) {
                InitializeAnimation(super, (super->type2 - 1) * 3 + 1);
            }
            break;
    }
}

void Beanstalk_Action1Type8(BeanstalkEntity* this) {
    static void (*const Beanstalk_Action1Type8SubActions[])(BeanstalkEntity*) = {
        Beanstalk_Action1Type8SubAction0,
        Beanstalk_Action1Type8SubAction1,
    };
    Beanstalk_Action1Type8SubActions[super->subAction](this);
}

void Beanstalk_Action1Type8SubAction0(BeanstalkEntity* this) {
    Entity* obj;

    super->spriteOrientation.flipY = 2;
    this->tilePos = COORD_TO_TILE(super);
    SetTile(SPECIAL_TILE_23, this->tilePos, LAYER_BOTTOM);
    super->subAction = 1;
    obj = CreateObjectWithParent(super, CHUCHU_BOSS_PARTICLE, 0, 0);
    if (obj != NULL) {
        obj->y.HALF.HI = super->y.HALF.HI + 0x38;
        obj->spriteIndex = super->spriteIndex;
        obj->spriteVramOffset = super->spriteVramOffset;
        obj->palette.b.b0 = super->palette.b.b0;
        obj->animIndex = 2;
        obj->timer = 128;
        obj->type = 1;
        obj->spriteRendering.b3 = 2;
        obj->spritePriority.b0 = 6;
        obj->spriteOrientation.flipY = 2;
    }
    CreateObjectWithParent(super, BEANSTALK, 9, 0);
}

void Beanstalk_Action1Type8SubAction1(BeanstalkEntity* this) {
}

void Beanstalk_Action1Type9(BeanstalkEntity* this) {
    if (super->subAction == 0) {
        super->subAction = 1;
        super->y.HALF.HI += 0x28;
        this->unk_72 = GetTileTypeRelativeToEntity(super, 0, -24);
    }
    super->spriteOrientation.flipY = gPlayerEntity.base.spriteOrientation.flipY;
    super->spriteRendering.b3 = gPlayerEntity.base.spriteRendering.b3;
    if (gPlayerState.floor_type == SURFACE_LADDER) {
        super->spritePriority.b0 = 0;
        if (GetTileTypeRelativeToEntity(super, 0, -24) != SPECIAL_TILE_20) {
            SetTile(SPECIAL_TILE_20, COORD_TO_TILE_OFFSET(super, 0, 24), LAYER_BOTTOM);
        }
    } else {
        super->spritePriority.b0 = 5;
        if (this->unk_72 != GetTileTypeRelativeToEntity(super, 0, -24)) {
            SetTile(this->unk_72, COORD_TO_TILE_OFFSET(super, 0, 24), LAYER_BOTTOM);
        }
    }
}
