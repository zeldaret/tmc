#include "enemyUtils.h"
#include "enemy.h"
#include "definitions.h"
#include "entity.h"
#include "functions.h"
#include "object.h"
#include "object/deathFx.h"
#include "projectile.h"
#include "save.h"

extern void EnemyDisableRespawn(Entity*);
extern void ReplaceMonitoredEntity(Entity*, Entity*);

extern EnemyDefinition gEnemyDefinitions[];

const EnemyDefinition* GetEnemyDefinition(Entity* entity);
bool32 LoadEnemySprite(Entity* entity, const EnemyDefinition* definition);

const struct_080D3D94 gUnk_080D3D94[] = {
    { 8, 8 },   { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 },
    { 64, 64 }, { 64, 64 }, { 64, 64 }, { 4, 4 },   { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 16, 16 },
    { 64, 64 }, { 64, 64 }, { 12, 12 }, { 16, 16 }, { 8, 8 },   { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 },
    { 10, 10 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 15, 9 },
    { 12, 12 }, { 16, 16 }, { 24, 24 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 },
    { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 60, 60 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 },
    { 24, 24 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 },
    { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 },
    { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 },
    { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 8, 8 },   { 8, 8 },   { 8, 8 },   { 16, 16 }, { 16, 16 },
    { 16, 16 }, { 8, 8 },   { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 },
    { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 },
    { 64, 64 }, { 64, 64 }, { 64, 64 }, { 64, 64 },
};

const u16 gUnk_080D3E74[] = { 2373, 1105, 2324, 21568, 4177, 16656, 1365, 21760, 8209, 0, 20480, 5, 0, 0 };

void EnemyCopyParams(Entity* src, Entity* dest) {
    Enemy* em_src = (Enemy*)src;
    Enemy* em_dest = (Enemy*)dest;

    em_dest->enemyFlags = (em_src->enemyFlags & EM_FLAG_MONITORED) | EM_FLAG_HAS_HOME;
    em_dest->idx = em_src->idx;
    em_dest->homeX = em_src->homeX;
    em_dest->homeY = em_src->homeY;
    em_dest->rangeX = em_src->rangeX;
    em_dest->rangeY = em_src->rangeY;

    CopyPositionAndSpriteOffset(&em_src->base, &em_dest->base);

    if (em_src->enemyFlags & EM_FLAG_MONITORED) {
        ReplaceMonitoredEntity(&em_src->base, &em_dest->base);
    }
}

const EnemyDefinition* GetEnemyDefinition(Entity* entity) {
    const EnemyDefinition* definition = &gEnemyDefinitions[entity->id];
    if (definition->gfx == 0xffff) {
        definition = &definition->ptr.definition[entity->type];
    }
    return definition;
}

bool32 EnemyInit(Enemy* this) {
    if ((super->flags & ENT_DID_INIT) == 0) {
        const EnemyDefinition* definition = GetEnemyDefinition(super);
        if (LoadEnemySprite(super, definition) == FALSE) {
            return FALSE;
        }
        super->flags |= ENT_DID_INIT;
        if (definition->spriteFlags.collision != 0) {
            COLLISION_ON(super);
        }
        super->spriteIndex = definition->spriteIndex;
        if (super->spriteSettings.draw == 0) {
            super->spriteSettings.draw = definition->spriteFlags.draw;
        }
        super->spritePriority.b1 = definition->spriteFlags.spritePriority;
        super->spriteSettings.shadow = definition->spriteFlags.shadow;
        if (super->speed == 0) {
            super->speed = definition->speed;
        }
        super->collisionMask = definition->collisionMask;
        super->hitType = definition->damageType;
        super->hitbox = (Hitbox*)definition->ptr.hitbox;
        super->health = definition->health;
        if (super->hurtType == 0) {
            super->hurtType = 0x41;
        }
        UpdateSpriteForCollisionLayer(super);
        if (this->enemyFlags & EM_FLAG_CAPTAIN) {
            u32 uVar4 = gUnk_080D3E74[super->id >> 3] >> ((super->id & 7) << 1) & 3;
            if (uVar4 != 0) {
                Entity* spawn_pt = CreateObject(MULLDOZER_SPAWN_POINT, uVar4 - 1, 0);
                if (spawn_pt != NULL) {
                    spawn_pt->timer = super->flags;
                    spawn_pt->subtimer = super->spriteSettings.draw;
                    spawn_pt->spritePriority.b0 = 3;
                    spawn_pt->parent = super;
                    CopyPosition(super, spawn_pt);
                    COLLISION_OFF(super);
                    super->spriteSettings.draw = 0;
                    this->enemyFlags |= EM_FLAG_SUPPORT;
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

void sub_0804A720(Entity* parent) {
    int iVar2;
    const struct_080D3D94* pbVar3;
    GenericEntityData* ptr;
    Enemy* this = (Enemy*)parent;

    if (this->enemyFlags & EM_FLAG_HAS_HOME) {
        return;
    }

    pbVar3 = &gUnk_080D3D94[super->id];
    ptr = (GenericEntityData*)&this->child;
    if (ptr->field_0x7c.BYTES.byte2 == 0) {
        this->rangeX = pbVar3->unk_0;
    } else {
        this->rangeX = ptr->field_0x7c.BYTES.byte2;
    }

    if (ptr->field_0x7c.BYTES.byte3 == 0) {
        this->rangeY = pbVar3->unk_1;
    } else {
        this->rangeY = ptr->field_0x7c.BYTES.byte3;
    }

    if (ptr->cutsceneBeh.HWORD != 0) {
        this->homeX = ptr->cutsceneBeh.HWORD + gRoomControls.origin_x;
    } else {
        iVar2 = this->rangeX * 4;
        if (super->x.HALF.HI >= iVar2) {
            this->homeX = super->x.HALF_U.HI - 4 * this->rangeX;
        } else {
            this->homeX = 0;
        }
    }

    if (ptr->field_0x86.HWORD != 0) {
        this->homeY = ptr->field_0x86.HWORD + gRoomControls.origin_y;
    } else {
        iVar2 = this->rangeY * 4;
        if (super->y.HALF.HI >= iVar2) {
            this->homeY = super->y.HALF.HI - iVar2;
        } else {
            this->homeY = 0;
        }
    }
    this->enemyFlags |= EM_FLAG_HAS_HOME;
}

void EnemyCreateDeathFX(Enemy* parent, u32 parentId, u32 fixedItem);
void GenericDeath(Entity* this) {
    EnemyCreateDeathFX((Enemy*)this, this->id, 0);
}

void EnemyCreateDeathFX(Enemy* parent, u32 parentId, u32 fixedItem) {
    DeathFxObject* deathFx;
    DeathFxObject* deathFx2;
    u8 bVar3;

    if (parent->enemyFlags & EM_FLAG_BOSS) {
        if (parent->enemyFlags & EM_FLAG_BOSS_KILLED) {
            return;
        }
        deathFx = (DeathFxObject*)CreateObject(DEATH_FX, parent->base.id, 0);
        if (deathFx == NULL) {
            return;
        }
        deathFx->unk6c = 1;
        PositionRelative(&(parent->base), &(deathFx->base), 0, 1);
        deathFx->base.parent = &(parent->base);
        parent->enemyFlags |= EM_FLAG_BOSS_KILLED;
        if ((parent->base.id == 0x37) && (gRoomTransition.field_0x39 != 0)) {
            DeleteThisEntity();
        }
        sub_0807CD9C();
        SoundReq(SONG_STOP_BGM);
        DeleteThisEntity();
        return;
    } else {
        int tmp = parent->base.gustJarState & 2;
        if (tmp == 0) {
            EnemyDisableRespawn(&(parent->base));
            gSave.enemies_killed++;
            parent->base.gustJarState |= 2;
            parent->base.timer = 255;
            SetEntityPriority(&(parent->base), 3);
            deathFx2 = (DeathFxObject*)CreateObject(DEATH_FX, parent->base.id, 0);
            if (deathFx2 != NULL) {
                deathFx2->unk6c = tmp;
                deathFx2->parentId = parentId;
                deathFx2->item = fixedItem;
                deathFx2->base.parent = &(parent->base);
                deathFx2->base.child = &(parent->base);
                CopyPosition(&(parent->base), &(deathFx2->base));
            }
            if (parent->enemyFlags & EM_FLAG_NO_DEATH_FX) {
                deathFx2->unk6c |= 8;
                DeleteEntity(&(parent->base));
                return;
            }
            if ((parent->base.contactFlags & 0x7f) == 0x13) {
                bVar3 = parent->base.gustJarFlags & 0xf;
                if (bVar3 != 1) {
                    if ((bVar3 == 2) && (deathFx2 != NULL)) {
                        deathFx2->unk6c |= 2;
                    }
                } else {
                    if (deathFx2 != NULL) {
                        deathFx2->unk6c |= 4;
                    }
                }
                deathFx2->base.parent = NULL;
                DeleteThisEntity();
                return;
            }
        }

        if (parent->base.timer == 0) {
            DeleteThisEntity();
        } else {
            if (--parent->base.timer == 0) {
                parent->base.spriteSettings.draw = 0;
                SetEntityPriority(&(parent->base), 0);
            } else {
                if (parent->base.timer < 9) {
                    if (parent->base.spriteSettings.draw) {
                        parent->base.spriteSettings.draw = 0;
                    } else {
                        parent->base.spriteSettings.draw = 1;
                    }
                }
            }
        }
    }
}

Entity* EnemyCreateProjectile(Entity* parent, u32 projectileId, u32 projectileType) {
    Entity* projectile;

    projectile = CreateProjectile(projectileId);
    if (projectile != NULL) {
        projectile->type = projectileType;
        CopyPosition(parent, projectile);
    }
    return projectile;
}

void EnemySetFXOffset(Entity* entity, s32 xOffset, s32 yOffset, s32 zOffset) {
    Entity* other;
    Enemy* this = (Enemy*)entity;

    other = this->child;
    if (other != NULL) {
        other->spriteRendering.b3 = super->spriteRendering.b3;
        other->spriteOrientation.flipY = super->spriteOrientation.flipY;
        other->x.HALF.HI = super->x.HALF.HI + xOffset;
        other->y.HALF.HI = super->y.HALF.HI + yOffset;
        other->z.HALF.HI = super->z.HALF.HI + zOffset;
        other->collisionLayer = super->collisionLayer;
    }
}

Entity* EnemyCreateFX(Entity* parent, u32 fxType) {
    Entity* fx;
    Enemy* this = (Enemy*)parent;

    if (this->child == NULL && (fx = CreateFx(super, fxType, 0), fx != NULL)) {
        this->child = fx;
    } else {
        fx = NULL;
    }
    return fx;
}

void EnemyDetachFX(Entity* entity) {
    Enemy* this = (Enemy*)entity;
    if (this->child != NULL) {
        this->child->parent = NULL;
        this->child = NULL;
    }
}

/** Unsets bitfield 0x80 before calling GetNextFunction, so that the enemyFunction 1 is not called. */
void EnemyFunctionHandlerAfterCollision(Entity* entity, void (*const fntable[])()) {
    u32 idx;
    entity->contactFlags &= ~CONTACT_NOW;
    idx = GetNextFunction(entity);
    entity->contactFlags |= CONTACT_NOW;
    fntable[idx](entity);
}

Entity* CreateEnemy(u32 subtype, u32 form) {
    Entity* enemy;

    enemy = GetEmptyEntity();
    if (enemy != NULL) {
        enemy->kind = ENEMY;
        enemy->id = subtype;
        enemy->type = form;
        AppendEntityToList(enemy, 4);
    }
    return enemy;
}
