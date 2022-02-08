#include "entity.h"
#include "definitions.h"
#include "functions.h"
#include "object.h"
#include "save.h"
#include "projectile.h"

extern void sub_08049CF4(Entity*);

extern EnemyDefinition gEnemyDefinitions[];

const EnemyDefinition* GetEnemyDefinition(Entity* entity);
bool32 LoadEnemySprite(Entity* entity, const EnemyDefinition* definition);
extern const u16 gUnk_080D3E74[];

const EnemyDefinition* GetEnemyDefinition(Entity* entity) {
    const EnemyDefinition* definition = &gEnemyDefinitions[entity->id];
    if (definition->gfx == 0xffff) {
        definition = &definition->ptr.definition[entity->type];
    }
    return definition;
}

bool32 EnemyInit(Entity* this) {
    if ((this->flags & ENT_DID_INIT) == 0) {
        const EnemyDefinition* definition = GetEnemyDefinition(this);
        if (LoadEnemySprite(this, definition) == FALSE) {
            return FALSE;
        }
        this->flags |= ENT_DID_INIT;
        if (definition->spriteFlags.collision != 0) {
            COLLISION_ON(this);
        }
        this->spriteIndex = definition->spriteIndex;
        if (this->spriteSettings.draw == 0) {
            this->spriteSettings.draw = definition->spriteFlags.draw;
        }
        this->spritePriority.b1 = definition->spriteFlags.spritePriority;
        this->spriteSettings.shadow = definition->spriteFlags.shadow;
        if (this->speed == 0) {
            this->speed = definition->speed;
        }
        this->flags2 = definition->flags2;
        this->hitType = definition->damageType;
        this->hitbox = (Hitbox*)definition->ptr.hitbox;
        this->health = definition->health;
        if (this->hurtType == 0) {
            this->hurtType = 0x41;
        }
        UpdateSpriteForCollisionLayer(this);
        if ((this->field_0x6c.HALF.HI & 0x20) != 0) {
            u32 uVar4 = gUnk_080D3E74[this->id >> 3] >> ((this->id & 7) << 1) & 3;
            if (uVar4 != 0) {
                Entity* object = CreateObject(OBJECT_A9, uVar4 - 1, 0);
                if (object != NULL) {
                    object->actionDelay = this->flags;
                    object->field_0xf = this->spriteSettings.draw;
                    object->spritePriority.b0 = 3;
                    object->parent = this;
                    CopyPosition(this, object);
                    this->flags &= ~ENT_COLLIDE;
                    this->spriteSettings.draw = 0;
                    this->field_0x6c.HALF.HI |= 0x10;
                }
            }
        }
    }
    return TRUE;
}

bool32 LoadEnemySprite(Entity* entity, const EnemyDefinition* definition) {
    bool32 result;
    if (definition->gfx != 0) {
        if ((definition->gfx & 0x8000) != 0) {
            // Common gfx: Reuse sprite that is already in vram? (bitfield 0x8000)
            entity->spriteVramOffset = definition->gfx & 0x3ff;
        } else {
            if ((definition->gfx & 0x4000) != 0) {
                // Swap gfx (bitfield 0x4000)
                result = LoadSwapGFX(entity, (u8)(definition->gfx >> 4), 0);
            } else {
                // Fixed gfx
                result = LoadFixedGFX(entity, definition->gfx);
            }
            if (result == FALSE) {
                return FALSE;
            }
        }
    }
    LoadObjPalette(entity, definition->paletteIndex);
    return TRUE;
}

ASM_FUNC("asm/non_matching/enemyUtils/sub_0804A720.inc", void sub_0804A720(Entity* this))

void CreateDeathFx(Entity* param_1, u32 param_2, u32 param_3);
void sub_0804A7D4(Entity* param_1) {
    CreateDeathFx(param_1, (u32)param_1->id, 0);
}

void CreateDeathFx(Entity* param_1, u32 param_2, u32 param_3) {
    Entity* pEVar2;
    Entity* pEVar3;
    u8 bVar3;

    if ((param_1->field_0x6c.HALF.HI & 1) != 0) {
        if ((param_1->field_0x6c.HALF.HI & 2) != 0) {
            return;
        }
        pEVar2 = CreateObject(DEATH_FX, param_1->id, 0);
        if (pEVar2 == NULL) {
            return;
        }
        pEVar2->field_0x6c.HALF.LO = 1;
        PositionRelative(param_1, pEVar2, 0, 1);
        pEVar2->parent = param_1;
        param_1->field_0x6c.HALF.HI |= 2;
        if ((param_1->id == '7') && (gRoomTransition.field_0x39 != 0)) {
            DeleteThisEntity();
        }
        sub_0807CD9C();
        SoundReq(SONG_STOP_BGM);
        DeleteThisEntity();
        return;
    } else {
        int tmp = param_1->field_0x3a & 2;
        if (tmp == 0) {
            sub_08049CF4(param_1);
            gSave.unk50 += 1;
            param_1->field_0x3a |= 2;
            param_1->actionDelay = 0xff;
            SetDefaultPriority(param_1, 3);
            pEVar3 = CreateObject(DEATH_FX, param_1->id, 0);
            if (pEVar3 != NULL) {
                pEVar3->field_0x6c.HALF.LO = tmp;
                pEVar3->field_0x6c.HALF.HI = param_2;
                pEVar3->field_0x6e.HALF.LO = param_3;
                pEVar3->parent = param_1;
                pEVar3->child = param_1;
                CopyPosition(param_1, pEVar3);
            }
            if ((param_1->field_0x6c.HALF.HI & 8) != 0) {
                pEVar3->field_0x6c.HALF.LO |= 8;
                DeleteEntity(param_1);
                return;
            }
            if ((param_1->bitfield & 0x7f) == 0x13) {
                bVar3 = param_1->field_0x1c & 0xf;
                if (bVar3 != 1) {
                    if ((bVar3 == 2) && (pEVar3 != NULL)) {
                        pEVar3->field_0x6c.HALF.LO |= 2;
                    }
                } else {
                    if (pEVar3 != NULL) {
                        pEVar3->field_0x6c.HALF.LO |= 4;
                    }
                }
                pEVar3->parent = NULL;
                DeleteThisEntity();
                return;
            }
        }

        if (param_1->actionDelay == 0) {
            DeleteThisEntity();
        } else {
            if (--param_1->actionDelay == 0) {
                param_1->spriteSettings.draw = 0;
                SetDefaultPriority(param_1, 0);
            } else {
                if (param_1->actionDelay < 9) {
                    if (param_1->spriteSettings.draw != 0) {
                        param_1->spriteSettings.draw = 0;
                    } else {
                        param_1->spriteSettings.draw = 1;
                    }
                }
            }
        }
        return;
    }
}

Entity* CreateProjectileWithParent(Entity* parent, u32 projectileId, u32 projectileType) {
    Entity* projectile;

    projectile = CreateProjectile(projectileId);
    if (projectile != NULL) {
        projectile->type = projectileType;
        CopyPosition(parent, projectile);
    }
    return projectile;
}

void SetChildOffset(Entity* entity, s32 xOffset, s32 yOffset, s32 zOffset) {
    Entity* other;

    other = *(Entity**)&entity->field_0x68;
    if (other != NULL) {
        other->spriteRendering.b3 = entity->spriteRendering.b3;
        other->spriteOrientation.flipY = entity->spriteOrientation.flipY;
        other->x.HALF.HI = entity->x.HALF.HI + xOffset;
        other->y.HALF.HI = entity->y.HALF.HI + yOffset;
        other->z.HALF.HI = entity->z.HALF.HI + zOffset;
        other->collisionLayer = entity->collisionLayer;
    }
}

Entity* sub_0804A9FC(Entity* parent, u32 fxType) {
    Entity* fx;

    if ((*(Entity**)&parent->field_0x68 == NULL) && (fx = CreateFx(parent, fxType, 0), fx != NULL)) {
        *(Entity**)&parent->field_0x68 = fx;
    } else {
        fx = NULL;
    }
    return fx;
}

void sub_0804AA1C(Entity* param_1) {
    if (*(Entity**)&param_1->field_0x68 != NULL) {
        (*(Entity**)&param_1->field_0x68)->parent = NULL;
        *(Entity**)&param_1->field_0x68 = NULL;
    }
}
