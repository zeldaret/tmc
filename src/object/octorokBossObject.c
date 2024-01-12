/**
 * @file octorokBossObject.c
 * @ingroup Objects
 *
 * @brief Octorok Boss Object object
 */
#include "functions.h"
#include "game.h"
#include "object.h"

typedef struct HelperStruct {
    u8 field_0x0; // [0,1,2,4]  is later stored in super->subtimer
    u8 tailCount;
    u8 field_0x2; // [0,1]
    u8 field_0x3; // relates to super->field_0x7a.HALF.HI
    u8 field_0x4; // [0,1,0xff]
    u8 field_0x5; // [0-4], sets super->field_0x80.HALF.HI
    u8 fallingStonesTimer;
    u8 field_0x7; // some sort of counter that is only set when hit for the first time?
    Entity* mouthObject;
    Entity* tailObjects[5];
    Entity* legObjects[4];
} HelperStruct;

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    /*0x74*/ u16 unk_74;
    /*0x76*/ u16 unk_76;
    /*0x78*/ union SplitWord unk_78;
    /*0x7c*/ union SplitWord unk_7c;
    /*0x80*/ u16 unk_80;
    /*0x82*/ u16 unk_82;
    /*0x84*/ HelperStruct* helper;
} OctorokBossObjectEntity;

extern void (*const OctorokBossObject_Actions[])(OctorokBossObjectEntity*);
extern const u16 gUnk_0812384C[];
extern const u16 gUnk_0812388C[];
extern const u16 gUnk_081238A0[];

bool32 sub_0809A6F8(u32, u32, u32, u32);
bool32 sub_0809A758(u32, u32);

enum OctorokBossObjectType {
    TYPE0,             // OctorokBoss_Action1 / TAIL_END
    TYPE_FIRE,         // super->OctorokBossObject_Action1
    TYPE_SUCKING,      // OctorokBoss_ExecuteAttackVacuum
    TYPE_SMOKE,        // OctorokBoss_ExecuteAttackSmoke
    TYPE4,             // OctorokBoss_Action1_Attack_Type2_2
    TYPE_ICE_CRYSTALS, // OctorokBoss_Hit_SubAction1
    TYPE6,             // OctorokBoss_Hit_SubAction1 // Scar thingy appearing on first defrost?
    TYPE7,
    TYPE8, // OctorokBoss_Hit_SubAction1
    TYPE9  // OctorokBoss_Hit_SubAction4
};

void OctorokBossObject(OctorokBossObjectEntity* this) {
    OctorokBossObject_Actions[super->action](this);
}

void OctorokBossObject_Init(OctorokBossObjectEntity* this) {
    super->action = 1;
    super->speed = 0x200;
    switch (super->type) {
        case 0:
            this->unk_78.BYTES.byte1 = 0x96;
            super->timer = 0;
            super->subtimer = 30;
        case 1:
            InitializeAnimation(super, 0);
            EnqueueSFX(SFX_124);
            break;
        case 2:
            super->direction = -(((OctorokBossObjectEntity*)super->parent)->unk_78.BYTES.byte3 + -0x80);
            if ((Random() & 1) != 0) {
                switch (Random() & 3) {
                    case 0:
                        super->direction = super->direction - 0x10;
                        break;
                    case 1:
                        super->direction = super->direction + 0x10;
                        break;
                    case 2:
                        super->direction = super->direction - 8;
                        break;
                    case 3:
                        super->direction = super->direction + 8;
                        break;
                }
            }

            super->speed = DISPLAY_WIDTH - (Random() & 0x3f);
            LinearMoveAngle(super, ((s16)super->speed >> 1) << 8, (u32)super->direction);
            LinearMoveAngle(super, ((s16)super->speed >> 1) << 8, (u32)super->direction);
            InitializeAnimation(super, 5);
            SoundReq(SFX_14C);
            break;
        case 3:
            super->direction = -(((OctorokBossObjectEntity*)super->parent)->unk_78.BYTES.byte3 + -0x80);
            LinearMoveAngle(super, 0x4800, (u32)super->direction);
            if ((Random() & 1) != 0) {
                super->direction = (Random() & 0x3f) + super->direction;
            } else {
                super->direction = super->direction - (Random() & 0x3f);
            }
            InitializeAnimation(super, 6);
            break;
        case 6:
            LinearMoveAngle(super, (0x30 - (Random() & 0x2f)) * 0x100, Random() & 0xff);
            if ((Random() & 1) != 0) {
                super->direction = (Random() & 0x3f) + super->direction;
            } else {
                super->direction = super->direction - (Random() & 0x3f);
            }
            InitializeAnimation(super, 5);
            break;
        case 4:
            this->unk_78.WORD = 0x30c;
            break;
        case 5:
            super->spritePriority.b0 = 0;
            this->unk_78.WORD = 0x18;
            this->unk_76 = 0x400;
            this->unk_74 = 0x400;
            this->unk_78.HALF_U.HI = 0;
            LinearMoveAngle(super,
                            ((-(u32)((OctorokBossObjectEntity*)super->parent)->unk_78.BYTES.byte3 << 0x18) >> 0x18) +
                                (u32)gUnk_0812388C[(u32)super->type2 * 2 + 1],
                            (u32)gUnk_0812388C[(u32)super->type2 * 2]);
            SetAffineInfo(super, this->unk_76, this->unk_74, this->unk_78.HALF_U.HI);
            InitializeAnimation(super, 7);
            break;
        case 7:
            super->timer = 0;
            InitializeAnimation(super, 8);
            CopyPosition(super->parent, super);
            break;
        case 8:
            super->type2 = ((OctorokBossObjectEntity*)super->parent)->unk_7c.BYTES.byte0;
            super->timer = 4;
            super->subtimer = 0;
            this->unk_82 = (super->x.HALF.HI - (gRoomControls.origin_x)) & 0x1f0;
            this->unk_80 = (super->y.HALF.HI - ((u32)gRoomControls.origin_y)) & 0x1f0;
            *(s32*)&this->helper = ((s32)(this->unk_82 - 0x10) >> 4) + (this->unk_80 >> 4) * 0x1f;
            sub_0809A6F8(this->unk_82, this->unk_80, *(s32*)&this->helper, super->type2);
            if ((((OctorokBossObjectEntity*)super->parent)->unk_7c.BYTES.byte0 & 1) != 0) {
                SoundReq(SFX_1A3);
            } else {
                SoundReq(SFX_WIND2);
            }
            break;
        case 9:
            this->unk_78.WORD = 0x1e0;
            break;
    }
}

void OctorokBossObject_Action1(OctorokBossObjectEntity* this) {
    s32 tmp_c;
    u32 loop_var;

    s32 t1, t2;

    GetNextFrame(super);

    switch (super->type) {
        case 0:
            if (this->unk_78.BYTES.byte1 != 0) {
                this->unk_78.BYTES.byte1--;
                if (super->subtimer-- == 0) {
                    super->subtimer = 5;
                    super->child = CreateObjectWithParent(super, OCTOROK_BOSS_OBJECT, 1, super->type2);
                    if (super->child != NULL) {
                        super->child->parent = super->parent;
                        ((OctorokBossObjectEntity*)super->child)->helper = this->helper;
                    }
                    super->type2++;
                }
                CopyPosition(this->helper->tailObjects[0], super);
                return;
            }
        case 1:
            super->direction =
                CalculateDirectionFromOffsets(this->helper->tailObjects[super->timer]->x.WORD - super->x.WORD,
                                              this->helper->tailObjects[super->timer]->y.WORD - super->y.WORD);
            LinearMoveAngle(super, super->speed, super->direction);
            if (EntityInRectRadius(super, this->helper->tailObjects[super->timer], 2, 2) == 0) {
                return;
            }
            if (super->type == 0) {
                this->helper->tailObjects[super->timer]->spriteSettings.draw &= -2;
            }
            if ((u32)super->timer == this->helper->tailCount - 1) {
                super->action = 2;
                super->timer = 240;
                super->direction = gUnk_0812384C[(u8)((super->type2 & 0xf) * 2)] + ((u8)Random() & 0xf);
                super->speed = gUnk_0812384C[(super->type2 & 0xf) * 2 + 1] + ((u16)Random() & 0x1ff);
                if (super->type != 0) {
                    return;
                }
                super->parent->action = 4;
                super->parent->subAction = 0;
                return;
            }
            super->timer++;
            return;
        case 2:
            if (super->parent->type2 == 3) {
                Entity* object = ((OctorokBossObjectEntity*)super->parent)->helper->mouthObject;
                super->direction =
                    CalculateDirectionFromOffsets(object->x.WORD - super->x.WORD, object->y.WORD - super->y.WORD);
                LinearMoveAngle(super, 0x280, super->direction);
                if (sub_0806FC80(super, super->parent, 0x48) == 0) {
                    return;
                }
            }
            DeleteThisEntity();
            break;
        case 3:
        case 6:
            LinearMoveAngle(super, 0x80, super->direction);
            if (super->frame != 0) {
                DeleteThisEntity();
            }
            break;
        case 4:
            if (this->unk_78.WORD == 0) {
                if ((s16)gRoomVars.lightLevel != 0x100) {
                    ChangeLightLevel(8);
                    return;
                } else {
                }
            } else {
                if (super->parent->health == 0) {
                    super->subAction = 1;
                    this->unk_78.WORD = 0;
                    return;
                }
                if ((super->subAction == 0) && (super->parent->type2 != 0)) {
                    return;
                }
                super->subAction = 1;
                this->unk_78.WORD--;
                return;
            }
            this->helper->tailObjects[super->timer]->x = this->helper->tailObjects[super->timer]->x;
            DeleteThisEntity();
            break;
        case 5:
            if (this->unk_78.WORD == 0) {
                if (this->unk_76 == 0x100) {
                    if ((((OctorokBossObjectEntity*)super->parent)->unk_7c.BYTES.byte0 & 1) != 0) {
                        DeleteThisEntity();
                    }
                } else {
                    this->unk_76 -= 0x20;
                    this->unk_74 -= 0x20;
                }

                SetAffineInfo(super, (u32)this->unk_76, (u32)(u16)this->unk_74, (u32)(u16)this->unk_78.HALF_U.HI);
            } else {
                (this->unk_78.WORD)--;
            }
            CopyPosition(super->parent, super);
            LinearMoveAngle(super, (u32)gUnk_0812388C[(u32)super->type2 * 2 + 1],
                            ((u8) - ((OctorokBossObjectEntity*)super->parent)->unk_78.BYTES.byte3 & 0xff) +
                                (u32)gUnk_0812388C[(u32)super->type2 * 2]);
            return;
        case 7:
            if (super->timer == 0) {
                CopyPosition(super->parent, super);
                return;
            }
            DeleteThisEntity();
            break;
        case 8:
            if (super->timer-- != 0) {
                return;
            }
            super->timer = 4;
            super->subtimer++;
            t2 = t1 = (*(s32*)&this->helper) - super->subtimer * 0x1f;
            this->unk_7c.HALF_U.HI = this->unk_82;
            this->unk_78.HALF_U.HI = this->unk_82;
            this->unk_7c.HALF_U.LO = this->unk_80 - super->subtimer * 0x10;
            this->unk_78.HALF_U.LO = this->unk_7c.HALF.LO;
            tmp_c = sub_0809A6F8(this->unk_78.HALF_U.HI, this->unk_78.HALF_U.LO, t1, super->type2);
            for (loop_var = super->subtimer; loop_var != 0; loop_var--) {
                this->unk_78.HALF_U.HI -= 0x10;
                this->unk_78.HALF_U.LO += 0x10;
                t1 += 0x1e;
                tmp_c += sub_0809A6F8(this->unk_78.HALF_U.HI, this->unk_78.HALF_U.LO, t1, super->type2);
                this->unk_7c.HALF.HI += 0x10;
                this->unk_7c.HALF.LO += 0x10;
                t2 += 0x20;
                tmp_c += sub_0809A6F8(this->unk_7c.HALF_U.HI, this->unk_7c.HALF_U.LO, t2, super->type2);
            }
            t2 = t1 = (*(s32*)&this->helper) + super->subtimer * 0x1f;
            this->unk_7c.HALF.HI = this->unk_82;
            this->unk_78.HALF_U.HI = this->unk_82;
            this->unk_7c.HALF.LO = super->subtimer * 0x10 + this->unk_80;
            this->unk_78.HALF_U.LO = this->unk_7c.HALF.LO;
            tmp_c += sub_0809A6F8(this->unk_78.HALF_U.HI, this->unk_78.HALF_U.LO, t1, super->type2);
            for (loop_var = super->subtimer - 1; loop_var != 0; loop_var--) {
                this->unk_78.HALF_U.HI -= 0x10;
                this->unk_78.HALF_U.LO -= 0x10;
                t1 -= 0x20;
                tmp_c += sub_0809A6F8(this->unk_78.HALF_U.HI, this->unk_78.HALF_U.LO, t1, super->type2);
                this->unk_7c.HALF_U.HI += 0x10;
                this->unk_7c.HALF_U.LO -= 0x10;
                t2 -= 0x1e;
                tmp_c += sub_0809A6F8(this->unk_7c.HALF_U.HI, this->unk_7c.HALF_U.LO, t2, super->type2);
            }
            if (tmp_c == 0) {
                DeleteThisEntity();
            }
            break;
        case 9:
            PausePlayer();
            if ((this->unk_78.WORD_U)-- == 0) {
                gRoomControls.camera_target = &gPlayerEntity.base;
                DeleteThisEntity();
            }
            break;
    }
}

void OctorokBossObject_Action2(OctorokBossObjectEntity* this) {
    s32 tmp;
    s32 radius;

    GetNextFrame(super);
    if (super->timer-- != 0) {
        tmp = (0x10000 / ((OctorokBossObjectEntity*)super->parent)->unk_74);
        radius = (super->speed * tmp) >> 8;
        this->unk_78.BYTES.byte3 = -((OctorokBossObjectEntity*)super->parent)->unk_78.BYTES.byte3 + super->direction;

        tmp = FixedMul(gSineTable[this->unk_78.BYTES.byte3], radius);
        tmp = FixedDiv(tmp, 0x100);
        super->x.WORD = super->parent->x.WORD + ((tmp << 0x10) >> 8);
        tmp = FixedMul(gSineTable[this->unk_78.BYTES.byte3 + 0x40], radius);
        tmp = FixedDiv(tmp, 0x100);
        super->y.WORD = super->parent->y.WORD - ((tmp << 0x10) >> 8);
    } else {
        DeleteThisEntity();
    }
}

bool32 sub_0809A6F8(u32 param_1, u32 param_2, u32 param_3, u32 param_4) {
    if (sub_0809A758(param_1, param_2) != 0) {
        if (gUnk_081238A0[param_3] != 0) {
            if ((param_4 & 1) != 0) {
                SetTileByIndex(gUnk_081238A0[param_3], (param_1 >> 4 & 0x3f) | (param_2 >> 4 & 0x3f) << 6,
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

void (*const OctorokBossObject_Actions[])(OctorokBossObjectEntity*) = {
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
