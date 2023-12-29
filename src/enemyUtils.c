#define NENT_DEPRECATED
#include "enemyUtils.h"

#include "definitions.h"
#include "entity.h"
#include "functions.h"
#include "object.h"
#include "object/deathFx.h"
#include "projectile.h"
#include "save.h"

extern void sub_08049CF4(Entity*);

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

const EnemyDefinition* GetEnemyDefinition(Entity* entity) {
    const EnemyDefinition* definition = &gEnemyDefinitions[entity->id];
    if (definition->gfx == 0xffff) {
        definition = &definition->ptr.definition[entity->type];
    }
    return definition;
}

bool32 EnemyInit(GenericEntity* this) {
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
        super->flags2 = definition->flags2;
        super->hitType = definition->damageType;
        super->hitbox = (Hitbox*)definition->ptr.hitbox;
        super->health = definition->health;
        if (super->hurtType == 0) {
            super->hurtType = 0x41;
        }
        UpdateSpriteForCollisionLayer(super);
        if ((this->field_0x6c.HALF.HI & 0x20) != 0) {
            u32 uVar4 = gUnk_080D3E74[super->id >> 3] >> ((super->id & 7) << 1) & 3;
            if (uVar4 != 0) {
                Entity* object = CreateObject(MULLDOZER_SPAWN_POINT, uVar4 - 1, 0);
                if (object != NULL) {
                    object->timer = super->flags;
                    object->subtimer = super->spriteSettings.draw;
                    object->spritePriority.b0 = 3;
                    object->parent = super;
                    CopyPosition(super, object);
                    super->flags &= ~ENT_COLLIDE;
                    super->spriteSettings.draw = 0;
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

void sub_0804A720(GenericEntity* this) {
    int iVar2;
    const struct_080D3D94* pbVar3;
    GenericEntityData* ptr;

    if ((this->field_0x6c.HALF.HI & 4) != 0) {
        return;
    }

    pbVar3 = &gUnk_080D3D94[super->id];
    ptr = (GenericEntityData*)&this->field_0x68;
    if (ptr->field_0x7c.BYTES.byte2 == 0) {
        this->field_0x6e.HALF.LO = pbVar3->unk_0;
    } else {
        this->field_0x6e.HALF.LO = ptr->field_0x7c.BYTES.byte2;
    }

    if (ptr->field_0x7c.BYTES.byte3 == 0) {
        this->field_0x6e.HALF.HI = pbVar3->unk_1;
    } else {
        this->field_0x6e.HALF.HI = ptr->field_0x7c.BYTES.byte3;
    }

    if (ptr->cutsceneBeh.HWORD != 0) {
        this->field_0x70.HALF.LO = ptr->cutsceneBeh.HWORD + gRoomControls.origin_x;
    } else {
        iVar2 = this->field_0x6e.HALF.LO * 4;
        if (super->x.HALF.HI >= iVar2) {
            this->field_0x70.HALF.LO = super->x.HALF_U.HI - 4 * this->field_0x6e.HALF.LO;
        } else {
            this->field_0x70.HALF.LO = 0;
        }
    }

    if (ptr->field_0x86.HWORD != 0) {
        this->field_0x70.HALF.HI = ptr->field_0x86.HWORD + gRoomControls.origin_y;
    } else {
        iVar2 = this->field_0x6e.HALF.HI * 4;
        if (super->y.HALF.HI >= iVar2) {
            this->field_0x70.HALF.HI = super->y.HALF.HI - iVar2;
        } else {
            this->field_0x70.HALF.HI = 0;
        }
    }
    this->field_0x6c.HALF.HI |= 4;
}

void CreateDeathFx(GenericEntity* parent, u32 parentId, u32 fixedItem);
void GenericDeath(Entity* this) {
    CreateDeathFx((GenericEntity*)this, this->id, 0);
}

void CreateDeathFx(GenericEntity* parent, u32 parentId, u32 fixedItem) {
    DeathFxObject* deathFx;
    DeathFxObject* deathFx2;
    u8 bVar3;

    if ((parent->field_0x6c.HALF.HI & 1) != 0) {
        if ((parent->field_0x6c.HALF.HI & 2) != 0) {
            return;
        }
        deathFx = (DeathFxObject*)CreateObject(DEATH_FX, parent->base.id, 0);
        if (deathFx == NULL) {
            return;
        }
        deathFx->unk6c = 1;
        PositionRelative(&(parent->base), &(deathFx->base), 0, 1);
        deathFx->base.parent = &(parent->base);
        parent->field_0x6c.HALF.HI |= 2;
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
            sub_08049CF4(&(parent->base));
            gSave.enemies_killed++;
            parent->base.gustJarState |= 2;
            parent->base.timer = 255;
            SetDefaultPriority(&(parent->base), 3);
            deathFx2 = (DeathFxObject*)CreateObject(DEATH_FX, parent->base.id, 0);
            if (deathFx2 != NULL) {
                deathFx2->unk6c = tmp;
                deathFx2->parentId = parentId;
                deathFx2->item = fixedItem;
                deathFx2->base.parent = &(parent->base);
                deathFx2->base.child = &(parent->base);
                CopyPosition(&(parent->base), &(deathFx2->base));
            }
            if ((parent->field_0x6c.HALF.HI & 8) != 0) {
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
                SetDefaultPriority(&(parent->base), 0);
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
    GenericEntity* this = (GenericEntity*)entity;

    other = *(Entity**)&this->field_0x68;
    if (other != NULL) {
        other->spriteRendering.b3 = super->spriteRendering.b3;
        other->spriteOrientation.flipY = super->spriteOrientation.flipY;
        other->x.HALF.HI = super->x.HALF.HI + xOffset;
        other->y.HALF.HI = super->y.HALF.HI + yOffset;
        other->z.HALF.HI = super->z.HALF.HI + zOffset;
        other->collisionLayer = super->collisionLayer;
    }
}

Entity* Create0x68FX(Entity* parent, u32 fxType) {
    Entity* fx;
    GenericEntity* this = (GenericEntity*)parent;

    if ((*(Entity**)&this->field_0x68 == NULL) && (fx = CreateFx(super, fxType, 0), fx != NULL)) {
        *(Entity**)&this->field_0x68 = fx;
    } else {
        fx = NULL;
    }
    return fx;
}

void sub_0804AA1C(Entity* entity) {
    GenericEntity* this = (GenericEntity*)entity;
    if (*(Entity**)&this->field_0x68 != NULL) {
        (*(Entity**)&this->field_0x68)->parent = NULL;
        *(Entity**)&this->field_0x68 = NULL;
    }
}
