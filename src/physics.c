#include "area.h"
#include "asm.h"
#include "color.h"
#include "common.h"
#include "functions.h"
#include "physics.h"
#include "player.h"
#include "playeritem.h"
#include "room.h"
#include "sound.h"

const u8 gSpriteSortAboveTable[];
const u8 gSpriteSortBelowTable[];
const u8 gMapDirectionToAnimationState8[];
const u8 gMapDirectionToAnimationState4[];

extern u16 gExtraFrameOffsets[];
extern s8 gUnk_08126EE4[];
extern const KeyValuePair gUnk_080046A4[];
extern const u16 gUnk_080047F6[];

static void sub_0806FEE8(struct_gUnk_020000C0_1*, u32, u32, u32);
static void sub_0806FEFC(struct_gUnk_020000C0_1*, Entity*);
static bool32 sub_0807007C(struct_gUnk_020000C0*, u32);

void sub_0806F364(void) {
    gArea.filler[1] ^= 0x80;
    MemClear(&gArea.filler6[(gArea.filler[1] + 7) / 8], 16);
}

void sub_0806F38C(void) {
    gArea.filler[1] ^= 0x80;
}

u32 sub_0806F39C(Entity* ent) {
    s32 dist;

    if (gPlayerEntity.base.animationState & 2) {
        dist = ent->x.HALF.HI - gPlayerEntity.base.x.HALF.HI;
    } else {
        dist = ent->y.HALF.HI - gPlayerEntity.base.y.HALF.HI;
    }
    if (dist < 0) {
        dist = -dist;
    }

    if (dist > 64) {
        LinearMoveDirectionOLD(&gPlayerEntity.base, ent->speed, ent->direction);
        return 1;
    }
    return 0;
}

bool32 sub_0806F3E4(Entity* ent) {
    GenericEntity tmp_ent;
    s8* p;

    if ((gPlayerState.gustJarState & 0x7F) != PL_JAR_SUCK)
        return 0;
    switch (gPlayerState.gustJarCharge) {
        case JAR_CHARGE_SMALL:
            ent->knockbackSpeed += 64;
            break;
        case JAR_CHARGE_MID:
            ent->knockbackSpeed += 128;
            break;
        case JAR_CHARGE_BIG:
            ent->knockbackSpeed += 192;
            break;
    }
    if (ent->knockbackSpeed > 0x500)
        ent->knockbackSpeed = 0x500;
    p = &gUnk_08126EE4[gPlayerEntity.base.animationState & 0xE];
    tmp_ent.base.x.HALF.HI = p[0] + gPlayerEntity.base.x.HALF.HI;
    tmp_ent.base.y.HALF.HI = p[1] + gPlayerEntity.base.y.HALF.HI;
    LinearMoveDirection(ent, ent->knockbackSpeed, GetFacingDirection(ent, &tmp_ent.base));
    if (sub_0800419C(&tmp_ent.base, ent, 4, 4)) {
        u32 state = ent->gustJarFlags & 0xF;
        if (state == PL_JAR_2) {
            Entity* item;
            ent->subAction = 3;
            gPlayerEntity.pulledJarEntity = ent;
            gPlayerState.gustJarState = PL_JAR_ENT_ATTACHED;
            item = CreatePlayerItem(PLAYER_ITEM_GUST_BIG, 0, 0, 0);
            if (item != NULL) {
                item->child = ent;
                ent->parent = item;
            }
            SoundReq(SFX_ED);
        } else if (state == PL_JAR_SUCK) {
            gPlayerState.item->type = 1;
            SoundReq(SFX_EF);
        }
        return TRUE;
    }
    return FALSE;
}

void sub_0806F4E8(Entity* ent) {
    switch (ent->gustJarTolerance & 3) {
        case 2:
            ent->spriteOffsetX = -2;
            break;
        case 1:
            ent->spriteOffsetX = 0;
            break;
        case 0:
            ent->spriteOffsetX = 2;
            break;
        case 3:
            ent->spriteOffsetX = 0;
            break;
    }
}

// TODO isSuckedInByGustJar?
bool32 sub_0806F520(Entity* ent) {
    if (ent->contactFlags == (CONTACT_NOW | 0x13))
        return 1;
    ent->gustJarState &= ~4;
    ent->spriteOffsetY = 0;
    return 0;
}

u32 sub_0806F548(Entity* a, Entity* b, u32 x, u32 y) {
    if (EntityInRectRadius(a, b, x, y))
        return sub_0806F58C(a, b);
    return 0;
}

u32 sub_0806F564(Entity* ent, u32 b, u32 c) {
    u32 tmp = CalculateDirectionTo(ent->x.HALF.HI, ent->y.HALF.HI, b, c);
    return ent->animationState == GetAnimationStateForDirection4(tmp);
}

u32 sub_0806F58C(Entity* a, Entity* b) {
    return a->animationState >> 1 == sub_0806FCA0(a, b);
}

u32 GetAnimationStateForDirection4(u32 direction) {
    return gMapDirectionToAnimationState4[direction];
}

u32 GetAnimationStateForDirection8(u32 idx) {
    return gMapDirectionToAnimationState8[idx];
}

void LinearMoveDirection(Entity* ent, u32 a, u32 b) {
    if ((b & 0x80) == 0) {
        u32 m1 = b;

        ent->x.WORD += FixedDiv(FixedMul(gSineTable[m1 *= 8], a), 256) << 8;
        ent->y.WORD -= FixedDiv(FixedMul(gSineTable[m1 + 64], a), 256) << 8;
    }
}

void LinearMoveAngle(Entity* ent, u32 a, u32 b) {
    ent->x.WORD += FixedDiv(FixedMul(gSineTable[(u8)b], a), 256) << 8;
    ent->y.WORD -= FixedDiv(FixedMul(gSineTable[(u8)b + 64], a), 256) << 8;
}

void LinearMoveUpdate(Entity* ent) {
    if ((ent->direction & 0x80) == 0) {
        ent->x.WORD += FixedDiv(FixedMul(gSineTable[ent->direction * 8], ent->speed), (1 << 8)) << 8;
        ent->y.WORD -= FixedDiv(FixedMul(gSineTable[ent->direction * 8 + 64], ent->speed), (1 << 8)) << 8;
    }
}

void sub_0806F704(Entity* this, u32 tilePos) {
    this->x.HALF.HI = (((16 * tilePos) & 0x3F0) | 8) + gRoomControls.origin_x;
    this->y.HALF.HI = (((tilePos >> 2) & 0x3F0) | 8) + gRoomControls.origin_y;
}

/** Calculates the tile position of the player but modifies it by the hitbox depending on the animation state. */
u32 sub_0806F730(Entity* ent) {
    u32 tmp = 0x3F;
    u32 x = ent->x.HALF.HI + ent->hitbox->offset_x - gRoomControls.origin_x;
    u32 y = ent->y.HALF.HI + ent->hitbox->offset_y - gRoomControls.origin_y;
    switch (ent->animationState) {
        case 0:
            y -= ent->hitbox->unk2[3];
            break;
        case 4:
            y += ent->hitbox->unk2[3];
            break;
        case 2:
            x += ent->hitbox->unk2[0];
            break;
        case 6:
            x -= ent->hitbox->unk2[0];
            break;
    }
    return ((x >> 4) & tmp) + (((y >> 4) & tmp) << 6);
}

u32 sub_0806F798(Entity* ent) {
    u32 hitboxX = ent->x.HALF.HI + ent->hitbox->offset_x - gRoomControls.origin_x;
    u32 hitboxY = ent->y.HALF.HI + ent->hitbox->offset_y - gRoomControls.origin_y;
    u32 mask = 0x3f;
    return (mask & (hitboxX >> 4)) + ((mask & (hitboxY >> 4)) << 6);
}

u32 sub_0806F7D0(Entity* ent) {
    return gMapBottom.collisionData[sub_0806F730(ent)];
}

u32 sub_0806F7EC(Entity* ent) {
    return gMapBottom.mapData[sub_0806F730(ent)];
}

u32 sub_0806F804(u32 x, u32 y) {
    u32 idx = ((x >> 4) & 0x3F) + 4 * (y & 0x3F0);
    return gMapBottom.mapData[idx];
}

u32 sub_0806F824(Entity* a, Entity* b, s32 x, s32 y) {
    return CalculateDirectionTo(a->x.HALF.HI, a->y.HALF.HI, b->x.HALF.HI + x, b->y.HALF.HI + y);
}

bool32 sub_0806F854(Entity* ent, s32 x, s32 y) {
    if (ent->z.WORD == 0 || (ent->collisionLayer & 2))
        return FALSE;
    if (!sub_080B1BA4(TILE(ent->x.HALF.HI + x, ent->y.HALF.HI + y), 2, 8)) {
        ent->spriteRendering.b3 = 1;
        ent->spriteOrientation.flipY = 1;
        return FALSE;
    }
    ent->spriteRendering.b3 = 2;
    ent->spriteOrientation.flipY = 2;
    return TRUE;
}

bool32 sub_0806F8DC(Entity* ent) {
    if (ent->collisionLayer & 2)
        return FALSE;
    if (!GetTileTypeAtWorldCoords(ent->x.HALF.HI, ent->y.HALF.HI - 4, 2)) {
        GetTileTypeAtWorldCoords(ent->x.HALF.HI, ent->y.HALF.HI - 4, ent->collisionLayer);
        ent->spriteRendering.b3 = 1;
        ent->spriteOrientation.flipY = 1;
        return FALSE;
    }
    ent->spriteRendering.b3 = 2;
    ent->spriteOrientation.flipY = 2;
    return TRUE;
}

#define CDIR_DIAGONAL 1
#define CDirectionSouth 4
#define CDirectionWest 6

u32 sub_0806F948(Entity* ent) {
    u32 direction;
    if (gPlayerState.direction == DIR_NONE)
        return ent->animationState;

    direction = gPlayerState.direction / 4;
    if ((direction & CDIR_DIAGONAL) && !(((direction + 1) - ent->animationState) & CDirectionSouth)) {
        return ent->animationState;
    } else {
        ent->spriteSettings.flipX = direction > CDirectionSouth;
        ent->animationState = direction & CDirectionWest;
    }
    return ent->animationState;
}

u32 sub_0806F998(Entity* ent) {
    u8 state = ent->animationState;
    if ((ent->direction & 0x80) == 0) {
        if ((((ent->direction & 0x1c) >> 2) & 0x1) == 0 || ((((ent->direction & 0x1c) >> 2) - state + 1) & 0x4)) {
            u8 dir = ent->direction;
            state = ent->animationState = (dir >> 2) & 0x7e;
            if (ent->animationState <= 4) {
                ent->spriteSettings.flipX = 0;
            } else {
                ent->spriteSettings.flipX = 1;
            }
        }
    }
    return state;
}

s16 FixedMul(s16 r0, s16 r1) {
    s32 temp = r0 * r1;
    if (temp < 0)
        return (temp + 255) >> 8;
    else
        return temp >> 8;
}

s16 FixedDiv(s16 r0, s16 r1) {
    if (r1 == 0)
        return 0;
    else
        return (r0 * 256) / r1;
}

void CopyPosition(Entity* source, Entity* target) {
    PositionRelative(source, target, 0, 0);
}

void PositionEntityOnTop(Entity* source, Entity* target) {
    PositionRelative(source, target, 0, 0);
    SortEntityAbove(source, target);
}

void PositionRelative(Entity* source, Entity* target, s32 offsetX, s32 offsetY) {
    s32 x;
    s32 y;

    x = source->x.WORD;
    target->x.WORD = x + offsetX;

    y = source->y.WORD;
    target->y.WORD = y + offsetY;

    target->z = source->z;
    target->collisionLayer = source->collisionLayer;
    UpdateSpriteForCollisionLayer(target);
}

void CopyPositionAndSpriteOffset(Entity* source, Entity* target) {
    target->spriteOffsetX = source->spriteOffsetX;
    target->spriteOffsetY = source->spriteOffsetY;
    PositionRelative(source, target, 0, 0);
}

void sub_0806FA90(Entity* source, Entity* target, s32 offsetX, s32 offsetY) {
    target->spriteOffsetX = source->spriteOffsetX;
    target->spriteOffsetY = source->spriteOffsetY;
    PositionRelative(source, target, Q_16_16(offsetX), Q_16_16(offsetY));
}

void SortEntityAbove(Entity* below_ent, Entity* above_ent) {
    above_ent->spritePriority.b0 = gSpriteSortAboveTable[below_ent->spritePriority.b0];
}

void SortEntityBelow(Entity* above_ent, Entity* below_ent) {
    below_ent->spritePriority.b0 = gSpriteSortBelowTable[above_ent->spritePriority.b0];
}

void sub_0806FB00(GenericEntity* ent, u32 param_1, u32 param_2, u32 param_3) {
    if (param_3 == 0) {
        param_3 = 1;
    }

    ent->field_0x7c.BYTES.byte2 = 0;
    ent->field_0x7c.BYTES.byte3 = param_3;
    ent->field_0x80.HWORD = ent->base.x.HALF.HI;
    ent->field_0x82.HWORD = ent->base.y.HALF.HI;
    ent->cutsceneBeh.HWORD = param_1;
    ent->field_0x86.HWORD = param_2;
}

bool32 sub_0806FB38(GenericEntity* ent) {
    s32 val;
    u32 rv;
    if (ent->field_0x7c.BYTES.byte2 < ent->field_0x7c.BYTES.byte3) {
        ent->field_0x7c.BYTES.byte2++;
        ent->base.x.HALF.HI =
            ((((((s16)ent->cutsceneBeh.HWORD - (s16)ent->field_0x80.HWORD) * ent->field_0x7c.BYTES.byte2) << 8) /
              ent->field_0x7c.BYTES.byte3) >>
             8) +
            ent->field_0x80.HWORD;
        ent->base.y.HALF.HI =
            (((((((s16)ent->field_0x86.HWORD - (s16)ent->field_0x82.HWORD) * ent->field_0x7c.BYTES.byte2) << 8) /
               ent->field_0x7c.BYTES.byte3) >>
              8)) +
            ent->field_0x82.HWORD;
        rv = 0;
    } else {
        ent->base.x.HALF.HI = ent->cutsceneBeh.HWORD;
        ent->base.y.HALF.HI = ent->field_0x86.HWORD;
        rv = 1;
    }
    return rv;
}

void sub_0806FBB4(Entity* ent) {
    if (gRoomTransition.field_0x4[1] != 0 || gPlayerState.heldObject == 0) {
        ent->subAction = 6;
    }
}

void* AllocMutableHitbox(Entity* ent) {
    UnloadHitbox(ent);
    ent->hitbox = zMalloc(sizeof(Hitbox3D));
    return ent->hitbox;
}

void UnloadHitbox(Entity* ent) {
    zFree(ent->hitbox);
    ent->hitbox = NULL;
}

bool32 CheckPlayerProximity(u32 x, u32 y, u32 distX, u32 DistY) {
    s32 diffx = gPlayerEntity.base.x.HALF.HI - x;
    s32 diffy = gPlayerEntity.base.y.HALF.HI - y;
    u32 rv = 0;
    if (diffx < distX && diffy < DistY) {
        rv = 1;
    }
    return rv;
}

bool32 sub_0806FC24(u32 param_1, u32 param_2) {
    u32 val = FindValueForKey(param_1, gUnk_080046A4);
    if (!val)
        return 0;

    return (*(gUnk_080047F6 + (val << 2)) >> param_2) & 0x1;
}

const u16* sub_0806FC50(u32 param_1, u32 param_2) {
    const u16* rv;
    u32 val = FindValueForKey(param_1, gUnk_080046A4);
    if (!val || ((gUnk_080047F6[val << 2] >> param_2) & 0x1) == 0) {
        rv = 0;
    } else {
        rv = gUnk_080047F6 + (val << 2);
    }

    return rv;
}

bool32 sub_0806FC80(Entity* ent, Entity* ent2, s32 param_3) {
    u32 rv;
    s16 x, y;
    param_3 <<= 4;
    if (param_3 >= sub_080041DC(ent, ent2->x.HALF.HI, ent2->y.HALF.HI)) {
        return 1;
    } else {
        return 0;
    }
}

u32 sub_0806FCA0(Entity* this, Entity* other) {
    return GetAnimationStateForDirection4(GetFacingDirection(this, other));
}

u32 sub_0806FCAC(Entity* this, Entity* other) {
    return GetAnimationStateForDirection8(GetFacingDirection(this, other));
}

bool32 EntityWithinDistance(Entity* entity, s32 x, s32 y, s32 distance) {
    return PointInsideRadius(entity->x.HALF.HI - x, entity->y.HALF.HI - y, distance);
}

bool32 PointInsideRadius(s32 x, s32 y, s32 distance) {
    return distance * distance >= (x * x + y * y);
}

void sub_0806FCF4(Entity* ent, s32 param_2, s32 param_3, s32 param_4) {
    u32 r2 = 0;
    if (param_2 < 0) {
        param_2 = -param_2;
    }

    if (param_3) {
        param_2 = (0x10000 / param_2);
        param_2 = ((u32)(param_3 * param_2) >> 8);
        r2 = param_3 - param_2;
    }

    if (param_4 == 0 || param_4 == 3) {
        r2 = -r2;
    }

    if (param_4 == 0 || param_4 == 2) {
        ent->spriteOffsetY = r2;
    } else {
        ent->spriteOffsetX = r2;
    }
}

void sub_0806FD3C(Entity* this) {
    this->spriteSettings.shadow = 0;
    this->spritePriority.b1 = 0;
}

bool32 sub_0806FD54(Entity* this) {
    u32 rv;
    if ((gPlayerState.flags & PL_USE_LANTERN) == 0) {
        rv = 0;
    } else {
        rv = EntityWithinDistance(this, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI - 9, 0x48);
    }

    return rv;
}

void sub_0806FD8C() {
    MemClear(&gUnk_020000C0, sizeof(gUnk_020000C0));
}

bool32 sub_0806FDA0(Entity* this) {
    u32 index;
    for (index = 1; index < ARRAY_COUNT(gUnk_020000C0); index++) {
        if ((gUnk_020000C0[index].unk_00[0].unk_00.unk0) == 0) {
            u32 tmp = 0xFF;
            this->spriteAnimation[2] = index;
            gUnk_020000C0[index].unk_00[0].unk_00.unk0 = 1;
            gUnk_020000C0[index].unk_00[0].unk_01 = tmp;
            gUnk_020000C0[index].unk_00[1].unk_01 = tmp;
            gUnk_020000C0[index].unk_00[2].unk_01 = tmp;
            gUnk_020000C0[index].unk_00[3].unk_01 = tmp;
            return 1;
        }
    }
    return 0;
}

bool32 LoadExtraSpriteData(Entity* entity, const SpriteLoadData* spriteData) {
    const SpriteLoadData* ptr;
    u32 index;
    struct_gUnk_020000C0_1* ptr2;
    if (sub_0806FDA0(entity) == 0)
        return FALSE;

    UnloadOBJPalette(entity);
    ptr2 = gUnk_020000C0[entity->spriteAnimation[2]].unk_00;
    ptr = spriteData;

    for (index = 0; index < 4 && (((u16*)ptr)[1] & 0x3ff); index++) {
        u32 pal = LoadObjPalette(entity, ((*(u32*)ptr) << 0x16) >> 0x16);
        sub_0806FEE8(ptr2, (*(u32*)ptr << 6) >> 0x16, pal, (*(u32*)ptr << 0x10) >> 0x1a);
        if (((u8*)ptr)[3] & 4) {
            sub_0806FEFC(ptr2, entity);
        }

        ptr2++;
        ptr++;
    }

    entity->spriteAnimation[1] = 0;
    return TRUE;
}

void UnloadOBJPalette2(Entity* ent) {
    u32 index;
    u32 spriteAnimation = ent->spriteAnimation[2];
    ent->spriteAnimation[2] = 0;

    if (spriteAnimation > 0 && spriteAnimation < 0x80) {
        struct_gUnk_020000C0_1* startptr = gUnk_020000C0[spriteAnimation].unk_00;

        for (index = 0; index <= 3; index++) {
            sub_0801D244(startptr[index].unk_04.BYTES.byte1);
        }

        MemClear(startptr, sizeof(struct_gUnk_020000C0));
    }
}

void sub_0806FEBC(Entity* ent, u32 param_2, Entity* param_3) {
    struct_gUnk_020000C0_1* ptr = &gUnk_020000C0[ent->spriteAnimation[2]].unk_00[param_2];
    *((u32*)ptr) = 0;
    ptr->unk_04.WORD = 0;
    ptr->unk_08.WORD = 0;
    ptr->unk_0C = (u32)param_3;
    ptr->unk_00.unk0 = 1;
    ptr->unk_00.unk1 = 1;
}

static void sub_0806FEE8(struct_gUnk_020000C0_1* this, u32 param_2, u32 param_3, u32 param_4) {
    this->unk_08.BYTES.byte0 = param_4;
    this->unk_02 = param_2;
    this->unk_04.BYTES.byte1 = param_3;
    this->unk_00.unk3 = 1;
    this->unk_00.unk0 = 1;
}

static void sub_0806FEFC(struct_gUnk_020000C0_1* this, Entity* ent) {
    this->unk_08.HALF.HI = ent->spriteVramOffset + this->unk_08.BYTES.byte0;
    this->unk_00.unk2 = 1;
}

void sub_0806FF10(Entity* this, u32 param_2, u32 param_3) {
    struct_gUnk_020000C0_1* ptr = &gUnk_020000C0[this->spriteAnimation[2]].unk_00[param_2];
    s32 pallete = FindPalette(param_3);
    if (ptr->unk_04.BYTES.byte1 != pallete) {
        sub_0801D244(ptr->unk_04.BYTES.byte1);
        ptr->unk_04.BYTES.byte1 = LoadObjPalette(this, param_3);
    }
}

void sub_0806FF48(Entity* this, u32 param_2, u32 param_3) {
    struct_gUnk_020000C0_1* ptr = &gUnk_020000C0[this->spriteAnimation[2]].unk_00[param_2];
    ptr->unk_04.BYTES.byte0 = param_3;
}

void SetExtraSpriteFrame(Entity* this, u32 param_2, u32 param_3) {
    struct_gUnk_020000C0* ptr1 = &gUnk_020000C0[this->spriteAnimation[2]];
    struct_gUnk_020000C0_1* ptr2 = &ptr1->unk_00[param_2];
    if (ptr2->unk_01 != param_3) {
        ptr2->unk_01 = param_3;
        ptr2->unk_00.unk3 = 1;
    }
}

void SetSpriteSubEntryOffsetData1(Entity* this, u32 param_2, u32 param_3) {
    struct_gUnk_020000C0* ptr1 = &gUnk_020000C0[this->spriteAnimation[2]];
    struct_gUnk_020000C0_1* ptr2 = &ptr1->unk_00[param_2];
    struct_gUnk_020000C0_1* ptr3 = &ptr1->unk_00[param_3];

    u8* ptr4 = GetSpriteSubEntryOffsetDataPointer(ptr2->unk_02, ptr2->unk_01);
    u8 val1 = ptr2->unk_04.BYTES.byte2;
    u8 val2 = ptr4[0];
    ptr3->unk_04.BYTES.byte2 = val1 + val2;
    val1 = ptr2->unk_04.BYTES.byte3;
    val2 = ptr4[1];
    ptr3->unk_04.BYTES.byte3 = val1 + val2;
}

void sub_0806FFBC(Entity* this, u32 param_2, u32 param_3, u32 param_4) {
    struct_gUnk_020000C0_1* ptr = &gUnk_020000C0[this->spriteAnimation[2]].unk_00[param_2];
    ptr->unk_04.BYTES.byte2 = param_3;
    ptr->unk_04.BYTES.byte3 = param_4;
}

void SetSpriteSubEntryOffsetData2(Entity* this, u32 param_2, u32 param_3) {
    struct_gUnk_020000C0* ptr1 = &gUnk_020000C0[this->spriteAnimation[2]];
    struct_gUnk_020000C0_1* ptr2 = &ptr1->unk_00[param_2];
    struct_gUnk_020000C0_1* ptr3 = &ptr1->unk_00[param_3];

    u8* ptr4 = GetSpriteSubEntryOffsetDataPointer(ptr2->unk_02, ptr2->unk_01);
    u8 val1 = ptr2->unk_04.BYTES.byte2;
    u8 val2 = ptr4[2];
    ptr3->unk_04.BYTES.byte2 = val1 + val2;
    val1 = ptr2->unk_04.BYTES.byte3;
    val2 = ptr4[3];
    ptr3->unk_04.BYTES.byte3 = val1 + val2;
}

void sub_0807000C(Entity* this) {
    struct_gUnk_020000C0* ptr = &gUnk_020000C0[this->spriteAnimation[2]];
    u32 val = sub_0807007C(ptr, 0);
    val |= sub_0807007C(ptr, 1);
    val |= sub_0807007C(ptr, 2);
    val |= sub_0807007C(ptr, 3);

    if (val) {
        u8* ptr2 = (u8*)&gGFXSlots;
        ptr2[this->spriteAnimation[0] * 12 + 7] = this->spriteAnimation[2];
        ptr2[this->spriteAnimation[0] * 12 + 4] = (ptr2[this->spriteAnimation[0] * 12 + 4] & 0xf) | 0x30;
    }
}

static bool32 sub_0807007C(struct_gUnk_020000C0* this, u32 param_2) {
    u8* ptr2;
    u8* ptr3;
    u32* spritePtr;
    struct_gUnk_020000C0_1* ptr1 = &this->unk_00[param_2];
    if ((ptr1->unk_00.unk3) == 0)
        return 0;
    if ((ptr1->unk_00.unk2) == 0)
        return 0;
    if (ptr1->unk_01 == 0xff)
        return 0;

    spritePtr = &((u32*)gSpritePtrs)[ptr1->unk_02 * 4];
    ptr2 = (u8*)(spritePtr[1]);
    if (ptr2 == 0)
        return 0;

    ptr3 = &ptr2[ptr1->unk_01 * 4];
    ptr1->unk_08.BYTES.byte1 = *ptr3;
    ptr1->unk_0C = spritePtr[2] + ((*(u16*)&ptr3[2]) << 5);
    return 1;
}

u8* GetSpriteSubEntryOffsetDataPointer(u32 param_1, u32 param_2) {
    u32 val;
    u32 val2;
    val = ((u16*)(((u8*)gExtraFrameOffsets) + 0x10))[param_1];
    val += (u32)gExtraFrameOffsets;
    val2 = *(u8*)(val + param_2) * 4;
    val2 += (u32)gExtraFrameOffsets;
    val = *((u32*)gExtraFrameOffsets) + val2;
    return (u8*)val;
}

const u8 gMapDirectionToAnimationState4[] = {
    0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 0,
};

const u8 gMapDirectionToAnimationState8[] = {
    0, 0, 0, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 6, 6, 6, 6, 6, 7, 7, 7, 0, 0,
};

const u8 gSpriteSortAboveTable[] = { 0, 0, 1, 2, 3, 4, 5, 6 };
const u8 gSpriteSortBelowTable[] = { 1, 2, 3, 4, 5, 6, 7, 7 };
