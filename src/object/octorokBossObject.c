/**
 * @file octorokBossObject.c
 * @ingroup Objects
 *
 * @brief Octorok Boss Object object
 */
#include "functions.h"
#include "game.h"
#include "object.h"

extern void (*const OctorokBossObject_Actions[])(Entity*);
extern const u16 gUnk_0812384C[];
extern const u16 gUnk_0812388C[];
extern const u16 gUnk_081238A0[];

bool32 sub_0809A6F8(u32, u32, u32, u32);
bool32 sub_0809A758(u32, u32);

typedef struct HelperStruct {
    u8 field_0x0; // [0,1,2,4]  is later stored in this->subtimer
    u8 tailCount;
    u8 field_0x2; // [0,1]
    u8 field_0x3; // relates to this->field_0x7a.HALF.HI
    u8 field_0x4; // [0,1,0xff]
    u8 field_0x5; // [0-4], sets this->field_0x80.HALF.HI
    u8 fallingStonesTimer;
    u8 field_0x7; // some sort of counter that is only set when hit for the first time?
    Entity* mouthObject;
    Entity* tailObjects[5];
    Entity* legObjects[4];
} HelperStruct;

enum OctorokBossObjectType {
    TYPE0,             // OctorokBoss_Action1 / TAIL_END
    TYPE_FIRE,         // this->OctorokBossObject_Action1
    TYPE_SUCKING,      // OctorokBoss_ExecuteAttackVacuum
    TYPE_SMOKE,        // OctorokBoss_ExecuteAttackSmoke
    TYPE4,             // OctorokBoss_Action1_Attack_Type2_2
    TYPE_ICE_CRYSTALS, // OctorokBoss_Hit_SubAction1
    TYPE6,             // OctorokBoss_Hit_SubAction1 // Scar thingy appearing on first defrost?
    TYPE7,
    TYPE8, // OctorokBoss_Hit_SubAction1
    TYPE9  // OctorokBoss_Hit_SubAction4
};
#define GET_HELPER(this) (*(HelperStruct**)&(this)->cutsceneBeh)

void OctorokBossObject(Entity* this) {
    OctorokBossObject_Actions[this->action](this);
}

void OctorokBossObject_Init(Entity* this) {
    this->action = 1;
    this->speed = 0x200;
    switch (this->type) {
        case 0:
            this->field_0x78.HALF.HI = 0x96;
            this->timer = 0;
            this->subtimer = 30;
        case 1:
            InitializeAnimation(this, 0);
            EnqueueSFX(SFX_124);
            break;
        case 2:
            this->direction = -(this->parent->field_0x7a.HALF.HI + -0x80);
            if ((Random() & 1) != 0) {
                switch (Random() & 3) {
                    case 0:
                        this->direction = this->direction - 0x10;
                        break;
                    case 1:
                        this->direction = this->direction + 0x10;
                        break;
                    case 2:
                        this->direction = this->direction - 8;
                        break;
                    case 3:
                        this->direction = this->direction + 8;
                        break;
                }
            }

            this->speed = DISPLAY_WIDTH - (Random() & 0x3f);
            LinearMoveAngle(this, ((s16)this->speed >> 1) << 8, (u32)this->direction);
            LinearMoveAngle(this, ((s16)this->speed >> 1) << 8, (u32)this->direction);
            InitializeAnimation(this, 5);
            SoundReq(SFX_14C);
            break;
        case 3:
            this->direction = -(this->parent->field_0x7a.HALF.HI + -0x80);
            LinearMoveAngle(this, 0x4800, (u32)this->direction);
            if ((Random() & 1) != 0) {
                this->direction = (Random() & 0x3f) + this->direction;
            } else {
                this->direction = this->direction - (Random() & 0x3f);
            }
            InitializeAnimation(this, 6);
            break;
        case 6:
            LinearMoveAngle(this, (0x30 - (Random() & 0x2f)) * 0x100, Random() & 0xff);
            if ((Random() & 1) != 0) {
                this->direction = (Random() & 0x3f) + this->direction;
            } else {
                this->direction = this->direction - (Random() & 0x3f);
            }
            InitializeAnimation(this, 5);
            break;
        case 4:
            *(u32*)&this->field_0x78 = 0x30c;
            break;
        case 5:
            this->spritePriority.b0 = 0;
            *(u32*)&this->field_0x78 = 0x18;
            this->field_0x76.HWORD = 0x400;
            this->field_0x74.HWORD = 0x400;
            this->field_0x7a.HWORD = 0;
            LinearMoveAngle(this,
                            ((-(u32)this->parent->field_0x7a.HALF.HI << 0x18) >> 0x18) +
                                (u32)gUnk_0812388C[(u32)this->type2 * 2 + 1],
                            (u32)gUnk_0812388C[(u32)this->type2 * 2]);
            SetAffineInfo(this, this->field_0x76.HWORD, this->field_0x74.HWORD, this->field_0x7a.HWORD);
            InitializeAnimation(this, 7);
            break;
        case 7:
            this->timer = 0;
            InitializeAnimation(this, 8);
            CopyPosition(this->parent, this);
            break;
        case 8:
            this->type2 = this->parent->field_0x7c.BYTES.byte0;
            this->timer = 4;
            this->subtimer = 0;
            this->field_0x82.HWORD = (this->x.HALF.HI - (gRoomControls.origin_x)) & 0x1f0;
            this->field_0x80.HWORD = (this->y.HALF.HI - ((u32)gRoomControls.origin_y)) & 0x1f0;
            *(int*)&this->cutsceneBeh =
                ((s32)(this->field_0x82.HWORD - 0x10) >> 4) + (this->field_0x80.HWORD >> 4) * 0x1f;
            sub_0809A6F8(this->field_0x82.HWORD, this->field_0x80.HWORD, *(int*)&this->cutsceneBeh, this->type2);
            if ((this->parent->field_0x7c.BYTES.byte0 & 1) != 0) {
                SoundReq(SFX_1A3);
            } else {
                SoundReq(SFX_WIND2);
            }
            break;
        case 9:
            *(u32*)&this->field_0x78 = 0x1e0;
            break;
    }
}

void OctorokBossObject_Action1(Entity* this) {
    s32 tmp_c;
    u32 loop_var;

    s32 t1, t2;

    GetNextFrame(this);

    switch (this->type) {
        case 0:
            if (this->field_0x78.HALF.HI != 0) {
                this->field_0x78.HALF.HI--;
                if (this->subtimer-- == 0) {
                    this->subtimer = 5;
                    this->child = CreateObjectWithParent(this, OCTOROK_BOSS_OBJECT, 1, this->type2);
                    if (this->child != NULL) {
                        this->child->parent = this->parent;
                        GET_HELPER(this->child) = GET_HELPER(this);
                    }
                    this->type2++;
                }
                CopyPosition(GET_HELPER(this)->tailObjects[0], this);
                return;
            }
        case 1:
            this->direction =
                CalculateDirectionFromOffsets(GET_HELPER(this)->tailObjects[this->timer]->x.WORD - this->x.WORD,
                                              GET_HELPER(this)->tailObjects[this->timer]->y.WORD - this->y.WORD);
            LinearMoveAngle(this, this->speed, this->direction);
            if (EntityInRectRadius(this, GET_HELPER(this)->tailObjects[this->timer], 2, 2) == 0) {
                return;
            }
            if (this->type == 0) {
                GET_HELPER(this)->tailObjects[this->timer]->spriteSettings.draw &= -2;
            }
            if ((u32)this->timer == GET_HELPER(this)->tailCount - 1) {
                this->action = 2;
                this->timer = 240;
                this->direction = gUnk_0812384C[(u8)((this->type2 & 0xf) * 2)] + ((u8)Random() & 0xf);
                this->speed = gUnk_0812384C[(this->type2 & 0xf) * 2 + 1] + ((u16)Random() & 0x1ff);
                if (this->type != 0) {
                    return;
                }
                this->parent->action = 4;
                this->parent->subAction = 0;
                return;
            }
            this->timer++;
            return;
        case 2:
            if (this->parent->type2 == 3) {
                Entity* object = GET_HELPER(this->parent)->mouthObject;
                this->direction =
                    CalculateDirectionFromOffsets(object->x.WORD - this->x.WORD, object->y.WORD - this->y.WORD);
                LinearMoveAngle(this, 0x280, this->direction);
                if (sub_0806FC80(this, this->parent, 0x48) == 0) {
                    return;
                }
            }
            DeleteThisEntity();
            break;
        case 3:
        case 6:
            LinearMoveAngle(this, 0x80, this->direction);
            if (this->frame != 0) {
                DeleteThisEntity();
            }
            break;
        case 4:
            if (*(u32*)&this->field_0x78 == 0) {
                if ((s16)gRoomVars.lightLevel != 0x100) {
                    ChangeLightLevel(8);
                    return;
                } else {
                }
            } else {
                if (this->parent->health == 0) {
                    this->subAction = 1;
                    *(u32*)&this->field_0x78 = 0;
                    return;
                }
                if ((this->subAction == 0) && (this->parent->type2 != 0)) {
                    return;
                }
                this->subAction = 1;
                *(int*)&this->field_0x78 += -1;
                return;
            }
            GET_HELPER(this)->tailObjects[this->timer]->x = GET_HELPER(this)->tailObjects[this->timer]->x;
            DeleteThisEntity();
            break;
        case 5:
            if (*(int*)&this->field_0x78 == 0) {
                if (this->field_0x76.HWORD == 0x100) {
                    if ((*(u8*)&this->parent->field_0x7c & 1) != 0) {
                        DeleteThisEntity();
                    }
                } else {
                    this->field_0x76.HWORD -= 0x20;
                    this->field_0x74.HWORD -= 0x20;
                }

                SetAffineInfo(this, (u32)this->field_0x76.HWORD, (u32)(u16)this->field_0x74.HWORD,
                              (u32)(u16)this->field_0x7a.HWORD);
            } else {
                (*(int*)&this->field_0x78)--;
            }
            CopyPosition(this->parent, this);
            LinearMoveAngle(this, (u32)gUnk_0812388C[(u32)this->type2 * 2 + 1],
                            ((u8) - this->parent->field_0x7a.HALF.HI & 0xff) +
                                (u32)gUnk_0812388C[(u32)this->type2 * 2]);
            return;
        case 7:
            if (this->timer == 0) {
                CopyPosition(this->parent, this);
                return;
            }
            DeleteThisEntity();
            break;
        case 8:
            if (this->timer-- != 0) {
                return;
            }
            this->timer = 4;
            this->subtimer++;
            t2 = t1 = (*(int*)&this->cutsceneBeh) - this->subtimer * 0x1f;
            this->field_0x7c.HALF_U.HI = this->field_0x82.HWORD;
            this->field_0x7a.HWORD = this->field_0x82.HWORD;
            this->field_0x7c.HALF_U.LO = this->field_0x80.HWORD - this->subtimer * 0x10;
            this->field_0x78.HWORD = this->field_0x7c.HALF.LO;
            tmp_c = sub_0809A6F8(this->field_0x7a.HWORD, this->field_0x78.HWORD, t1, this->type2);
            for (loop_var = this->subtimer; loop_var != 0; loop_var--) {
                this->field_0x7a.HWORD -= 0x10;
                this->field_0x78.HWORD += 0x10;
                t1 += 0x1e;
                tmp_c += sub_0809A6F8(this->field_0x7a.HWORD, this->field_0x78.HWORD, t1, this->type2);
                this->field_0x7c.HALF.HI += 0x10;
                this->field_0x7c.HALF.LO += 0x10;
                t2 += 0x20;
                tmp_c += sub_0809A6F8(this->field_0x7c.HALF_U.HI, this->field_0x7c.HALF_U.LO, t2, this->type2);
            }
            t2 = t1 = (*(int*)&this->cutsceneBeh) + this->subtimer * 0x1f;
            this->field_0x7c.HALF.HI = this->field_0x82.HWORD;
            this->field_0x7a.HWORD = this->field_0x82.HWORD;
            this->field_0x7c.HALF.LO = this->subtimer * 0x10 + this->field_0x80.HWORD;
            this->field_0x78.HWORD = this->field_0x7c.HALF.LO;
            tmp_c += sub_0809A6F8(this->field_0x7a.HWORD, this->field_0x78.HWORD, t1, this->type2);
            for (loop_var = this->subtimer - 1; loop_var != 0; loop_var--) {
                this->field_0x7a.HWORD -= 0x10;
                this->field_0x78.HWORD -= 0x10;
                t1 -= 0x20;
                tmp_c += sub_0809A6F8(this->field_0x7a.HWORD, this->field_0x78.HWORD, t1, this->type2);
                this->field_0x7c.HALF_U.HI += 0x10;
                this->field_0x7c.HALF_U.LO -= 0x10;
                t2 -= 0x1e;
                tmp_c += sub_0809A6F8(this->field_0x7c.HALF_U.HI, this->field_0x7c.HALF_U.LO, t2, this->type2);
            }
            if (tmp_c == 0) {
                DeleteThisEntity();
            }
            break;
        case 9:
            sub_08078B48();
            if ((*(int*)&this->field_0x78)-- == 0) {
                gRoomControls.camera_target = &gPlayerEntity;
                DeleteThisEntity();
            }
            break;
    }
}

void OctorokBossObject_Action2(Entity* this) {
    s32 tmp;
    s32 radius;

    GetNextFrame(this);
    if (this->timer-- != 0) {
        tmp = (0x10000 / this->parent->field_0x74.HWORD);
        radius = (this->speed * tmp) >> 8;
        this->field_0x7a.HALF.HI = -this->parent->field_0x7a.HALF.HI + this->direction;

        tmp = FixedMul(gSineTable[this->field_0x7a.HALF.HI], radius);
        tmp = FixedDiv(tmp, 0x100);
        this->x.WORD = this->parent->x.WORD + ((tmp << 0x10) >> 8);
        tmp = FixedMul(gSineTable[this->field_0x7a.HALF.HI + 0x40], radius);
        tmp = FixedDiv(tmp, 0x100);
        this->y.WORD = this->parent->y.WORD - ((tmp << 0x10) >> 8);
    } else {
        DeleteThisEntity();
    }
}

bool32 sub_0809A6F8(u32 param_1, u32 param_2, u32 param_3, u32 param_4) {
    if (sub_0809A758(param_1, param_2) != 0) {
        if (gUnk_081238A0[param_3] != 0) {
            if ((param_4 & 1) != 0) {
                SetMetaTileByIndex(gUnk_081238A0[param_3], (param_1 >> 4 & 0x3f) | (param_2 >> 4 & 0x3f) << 6,
                                   LAYER_BOTTOM);
            } else {
                RestorePrevTileEntity((param_1 >> 4 & 0x3f) | (param_2 >> 4 & 0x3f) << 6, 1);
            }
        }
        return TRUE;
    } else {
        return FALSE;
    }
}

bool32 sub_0809A758(u32 param_1, u32 param_2) {
    if (param_1 >= 0x10) {
        if (param_1 <= 0x1f0 && param_2 <= 0xf0) {
            return TRUE;
        }
    }
    return FALSE;
}

void (*const OctorokBossObject_Actions[])(Entity*) = {
    OctorokBossObject_Init,
    OctorokBossObject_Action1,
    OctorokBossObject_Action2,
};

const u16 gUnk_0812384C[] = {
    0,  4096, 16,  6144, 240, 7168, 32,  6144, 224, 5120, 48,  4096, 192, 4096, 208, 7168,
    64, 4096, 192, 6144, 80,  7168, 176, 6144, 96,  5120, 160, 4096, 112, 4096, 144, 7168,
};
const u16 gUnk_0812388C[] = {
    0, 0, 32, 8192, 96, 8192, 160, 8704, 208, 8192,
};
const u16 gUnk_081238A0[] = {
    0,    292,  293,  292,  293,  292,  293,  292,  293,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    292,  293,  292,  293,  292,  293,  293,  293,  0,    347,  1220, 1201, 1202, 1201, 1202, 1201,
    1202, 1236, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    1220, 1202, 1201, 1201,
    1202, 1201, 1202, 1236, 348,  363,  1205, 1252, 1253, 1229, 1229, 1229, 1229, 1264, 1202, 1201, 1202, 1201, 1202,
    1201, 1202, 1201, 1202, 1201, 1202, 1201, 1202, 1265, 1229, 1229, 1252, 1253, 1229, 1229, 1206, 364,  347,  1221,
    1268, 1269, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1268, 1269, 1229, 1229,
    1229, 1229, 1229, 1229, 1268, 1269, 1229, 1229, 1222, 348,  363,  1205, 1229, 1229, 1229, 1229, 1229, 1229, 1229,
    1229, 1229, 1229, 1252, 1253, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1252, 1253, 1229, 1229, 1229, 1229,
    1229, 1206, 364,  347,  1221, 1229, 1229, 1229, 1229, 1229, 1252, 1253, 1229, 1229, 1229, 1268, 1269, 1229, 1252,
    1253, 1229, 1229, 1229, 1229, 1229, 1268, 1269, 1229, 1229, 1229, 1229, 1229, 1222, 348,  363,  1205, 1229, 1229,
    1229, 1229, 1229, 1268, 1269, 1229, 1229, 1229, 1229, 1229, 1229, 1268, 1269, 1229, 1229, 1229, 1229, 1229, 1229,
    1229, 1229, 1229, 1229, 1229, 1229, 1206, 364,  347,  1221, 1229, 1252, 1253, 1229, 1229, 1229, 1229, 1229, 1229,
    1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1252, 1253, 1229, 1222,
    348,  363,  1205, 1229, 1268, 1269, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229,
    1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1268, 1269, 1229, 1206, 364,  347,  1221, 1229, 1229, 1229, 1229,
    1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1252, 1253, 1229, 1229, 1229, 1229, 1229, 1229,
    1229, 1229, 1229, 1229, 1222, 348,  363,  1205, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229,
    1229, 1229, 1229, 1229, 1268, 1269, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1206, 364,  347,
    1221, 1252, 1253, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1252, 1253, 1229, 1229, 1229, 1229, 1229, 1229,
    1229, 1229, 1252, 1253, 1229, 1252, 1253, 1229, 1229, 1222, 348,  363,  1205, 1268, 1269, 1229, 1229, 1229, 1252,
    1253, 1229, 1229, 1229, 1268, 1269, 1229, 1252, 1253, 1229, 1229, 1229, 1229, 1229, 1268, 1269, 1229, 1268, 1269,
    1229, 1229, 1206, 364,  347,  1221, 1229, 1229, 1229, 1229, 1229, 1268, 1269, 1229, 1229, 1229, 1229, 1229, 1229,
    1268, 1269, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1229, 1222, 348,  363,  1237, 1203,
    1204, 1203, 1204, 1203, 1204, 1203, 1204, 1203, 1204, 1203, 1204, 1203, 1204, 1203, 1204, 1203, 1204, 1203, 1204,
    1203, 1204, 1203, 1203, 1204, 1203, 1204, 1238, 364,  0,    308,  309,  308,  309,  308,  309,  308,  309,  308,
    309,  308,  309,  308,  309,  308,  309,  308,  309,  308,  309,  308,  309,  308,  309,  308,  309,  308,  309,
    308,  0,
};
