#include "asm.h"
#include "area.h"
#include "player.h"
#include "global.h"
#include "entity.h"
#include "coord.h"
#include "utils.h"
#include "audio.h"
#include "room.h"
#include "functions.h"

extern u8 gUnk_08114F78[];
extern u8 gUnk_08114F80[];

typedef struct {
    u32 _0;
    u16 _4[0x1000];
    u8 _2004[0x2000];
} struct_02025EB0;
extern struct_02025EB0 gUnk_02025EB0;

extern s8 gUnk_08126EE4[];
extern u8 gUnk_08114F38[];
extern u8 gUnk_08114F58[];

void sub_080027EA(Entity*, u32, u32);
void sub_0806F5BC(Entity*, u32, u32);
u32 sub_0806F58C(Entity*, Entity*);
u32 sub_0806FCA0(Entity*, Entity*);

void sub_0806F364(void) {
    gArea.filler[2] ^= 0x80;
    MemClear(&gArea.filler5[(gArea.filler[2] + 7) / 8], 16);
}

void sub_0806F38C(void) {
    gArea.filler[2] ^= 0x80;
}

u32 sub_0806F39C(Entity* ent) {
    s32 dist;

    if (gPlayerEntity.animationState & 2) {
        dist = ent->x.HALF.HI - gPlayerEntity.x.HALF.HI;
    } else {
        dist = ent->y.HALF.HI - gPlayerEntity.y.HALF.HI;
    }
    if (dist < 0) {
        dist = -dist;
    }

    if (dist > 64) {
        sub_080027EA(&gPlayerEntity, ent->speed, ent->direction);
        return 1;
    }
    return 0;
}

u32 sub_0806F3E4(Entity* ent) {
    Entity tmp_ent;
    s8* p;

    if ((gPlayerState.field_0x1c & 0x7F) != 1)
        return 0;
    switch (gPlayerState.field_0x1d[0]) {
        case 1:
            ent->field_0x46 += 64;
            break;
        case 2:
            ent->field_0x46 += 128;
            break;
        case 3:
            ent->field_0x46 += 192;
            break;
    }
    if (ent->field_0x46 > 0x500)
        ent->field_0x46 = 0x500;
    p = &gUnk_08126EE4[gPlayerEntity.animationState & 0xE];
    tmp_ent.x.HALF.HI = p[0] + gPlayerEntity.x.HALF.HI;
    tmp_ent.y.HALF.HI = p[1] + gPlayerEntity.y.HALF.HI;
    sub_0806F5BC(ent, ent->field_0x46, GetFacingDirection(ent, &tmp_ent));
    if (sub_0800419C(&tmp_ent, ent, 4, 4)) {
        u32 state = ent->field_0x1c & 0xF;
        if (state == 2) {
            Entity* item;
            ent->subAction = 3;
            (Entity*)gPlayerEntity.field_0x70.WORD = ent;
            gPlayerState.field_0x1c = 7;
            item = CreatePlayerItem(0x11, 0, 0, 0);
            if (item != NULL) {
                item->child = ent;
                ent->parent = item;
            }
            SoundReq(SFX_ED);
        } else if (state == 1) {
            gPlayerState.field_0x2c[10] = 1;
            SoundReq(SFX_EF);
        }
        return 1;
    }
    return 0;
}

void sub_0806F4E8(Entity* ent) {
    switch (ent->field_0x1d & 3) {
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

u32 sub_0806F520(Entity* ent) {
    if (ent->bitfield == 0x93)
        return 1;
    ent->field_0x3a &= ~4;
    ent->spriteOffsetY = 0;
    return 0;
}

u32 sub_0806F548(Entity* a, Entity* b, u32 x, u32 y) {
    if (EntityInRectRadius(a, b, x, y))
        return sub_0806F58C(a, b);
    return 0;
}

u32 sub_0806F564(Entity* ent, u32 b, u32 c) {
    u32 tmp = sub_080045D4(ent->x.HALF.HI, ent->y.HALF.HI, b, c);
    return ent->animationState == sub_0806F5A4(tmp);
}

u32 sub_0806F58C(Entity* a, Entity* b) {
    return a->animationState >> 1 == sub_0806FCA0(a, b);
}

u32 sub_0806F5A4(u32 idx) {
    return gUnk_08114F38[idx];
}

u32 sub_0806F5B0(u32 idx) {
    return gUnk_08114F58[idx];
}

void sub_0806F5BC(Entity* ent, u32 a, u32 b) {
    if ((b & 0x80) == 0) {
        u32 m1 = b;

        ent->x.WORD += FixedDiv(FixedMul(gSineTable[m1 *= 8], a), 256) << 8;
        ent->y.WORD -= FixedDiv(FixedMul(gSineTable[m1 + 64], a), 256) << 8;
    }
}

void sub_0806F62C(Entity* ent, u32 a, u32 b) {
    ent->x.WORD += FixedDiv(FixedMul(gSineTable[(u8)b], a), 256) << 8;
    ent->y.WORD -= FixedDiv(FixedMul(gSineTable[(u8)b + 64], a), 256) << 8;
}

void sub_0806F69C(Entity* ent) {
    if ((ent->direction & 0x80) == 0) {
        ent->x.WORD += FixedDiv(FixedMul(gSineTable[ent->direction * 8], ent->speed), 256) << 8;
        ent->y.WORD -= FixedDiv(FixedMul(gSineTable[ent->direction * 8 + 64], ent->speed), 256) << 8;
    }
}

void sub_0806F704(Entity* ent, u32 a2) {
    ent->x.HALF.HI = (((16 * a2) & 0x3F0) | 8) + gRoomControls.roomOriginX;
    ent->y.HALF.HI = (((a2 >> 2) & 0x3F0) | 8) + gRoomControls.roomOriginY;
}

u32 sub_0806F730(Entity* ent) {
    u32 tmp = 0x3F;
    u32 x = ent->x.HALF.HI + ent->hitbox->offset_x - gRoomControls.roomOriginX;
    u32 y = ent->y.HALF.HI + ent->hitbox->offset_y - gRoomControls.roomOriginY;
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

ASM_FUNC("asm/non_matching/sub_0806F798.inc", u32 sub_0806F798(Entity* ent));

u32 sub_0806F7D0(Entity* ent) {
    return gUnk_02025EB0._2004[sub_0806F730(ent)];
}

u32 sub_0806F7EC(Entity* ent) {
    return gUnk_02025EB0._4[sub_0806F730(ent)];
}

u32 sub_0806F804(u32 x, u32 y) {
    u32 idx = ((x >> 4) & 0x3F) + 4 * (y & 0x3F0);
    return gUnk_02025EB0._4[idx];
}

ASM_FUNC("asm/non_matching/sub_0806F824.inc", void sub_0806F824(Entity* a, Entity* b, u32 x, u32 y));

u32 sub_0806F854(Entity* ent, s32 x, s32 y) {
    if (ent->z.WORD == 0 || (ent->collisionLayer & 2))
        return 0;
    if (!sub_080002F0(TILE(ent->x.HALF.HI + x, ent->y.HALF.HI + y), 2, 8)) {
        ent->spriteRendering.b3 = 1;
        ent->spriteOrientation.flipY = 1;
        return 0;
    }
    ent->spriteRendering.b3 = 2;
    ent->spriteOrientation.flipY = 2;
    return 1;
}

u32 sub_0806F8DC(Entity* ent) {
    if (ent->collisionLayer & 2)
        return 0;
    if (!GetTileTypeByPos(ent->x.HALF.HI, ent->y.HALF.HI - 4, 2)) {
        GetTileTypeByPos(ent->x.HALF.HI, ent->y.HALF.HI - 4, ent->collisionLayer);
        ent->spriteRendering.b3 = 1;
        ent->spriteOrientation.flipY = 1;
        return 0;
    }
    ent->spriteRendering.b3 = 2;
    ent->spriteOrientation.flipY = 2;
    return 1;
}

u32 sub_0806F948(Entity* ent) {
    u32 v1;
    if (gPlayerState.field_0xd == 0xFF)
        return ent->animationState;

    v1 = gPlayerState.field_0xd / 4;
    if ((v1 & 1) && !(((v1 + 1) - ent->animationState) & 4)) {
        return ent->animationState;
    } else {
        ent->spriteSettings.flipX = v1 > 4;
        ent->animationState = v1 & 6;
    }
    return ent->animationState;
}

ASM_FUNC("asm/non_matching/sub_0806F998.inc", u32 sub_0806F998(Entity* ent));

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

void CopyPosition(Entity* param_1, Entity* param_2) {
    PositionRelative(param_1, param_2, 0, 0);
}

void PositionEntityOnTop(Entity* ent, Entity* ent2) {
    PositionRelative(ent, ent2, 0, 0);
    ResolveEntityOnTop(ent, ent2);
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

void CopyPositionAndSpriteOffset(Entity* param_1, Entity* param_2) {
    param_2->spriteOffsetX = param_1->spriteOffsetX;
    param_2->spriteOffsetY = param_1->spriteOffsetY;
    PositionRelative(param_1, param_2, 0, 0);
}

void sub_0806FA90(Entity* param_1, Entity* param_2, s32 offsetX, s32 offsetY) {
    param_2->spriteOffsetX = param_1->spriteOffsetX;
    param_2->spriteOffsetY = param_1->spriteOffsetY;
    PositionRelative(param_1, param_2, offsetX * 64 * 32 * 32, offsetY * 64 * 32 * 32);
}

void ResolveEntityOnTop(Entity* param_1, Entity* param_2) {
    param_2->spritePriority.b0 = gUnk_08114F78[param_1->spritePriority.b0];
}

void ResolveEntityBelow(Entity* param_1, Entity* param_2) {
    param_2->spritePriority.b0 = gUnk_08114F80[param_1->spritePriority.b0];
}

// Values of sin(x*(π/128)) as Q8.8 fixed-point numbers from x = 0 to x = 319
const s16 gSineTable[64] = {
    Q_8_8(0),          // sin(0*(π/128))
    Q_8_8(0.0234375),  // sin(1*(π/128))
    Q_8_8(0.046875),   // sin(2*(π/128))
    Q_8_8(0.0703125),  // sin(3*(π/128))
    Q_8_8(0.09765625), // sin(4*(π/128))
    Q_8_8(0.12109375), // sin(5*(π/128))
    Q_8_8(0.14453125), // sin(6*(π/128))
    Q_8_8(0.16796875), // sin(7*(π/128))
    Q_8_8(0.19140625), // sin(8*(π/128))
    Q_8_8(0.21875),    // sin(9*(π/128))
    Q_8_8(0.2421875),  // sin(10*(π/128))
    Q_8_8(0.265625),   // sin(11*(π/128))
    Q_8_8(0.2890625),  // sin(12*(π/128))
    Q_8_8(0.3125),     // sin(13*(π/128))
    Q_8_8(0.3359375),  // sin(14*(π/128))
    Q_8_8(0.359375),   // sin(15*(π/128))
    Q_8_8(0.37890625), // sin(16*(π/128))
    Q_8_8(0.40234375), // sin(17*(π/128))
    Q_8_8(0.42578125), // sin(18*(π/128))
    Q_8_8(0.44921875), // sin(19*(π/128))
    Q_8_8(0.46875),    // sin(20*(π/128))
    Q_8_8(0.4921875),  // sin(21*(π/128))
    Q_8_8(0.51171875), // sin(22*(π/128))
    Q_8_8(0.53125),    // sin(23*(π/128))
    Q_8_8(0.5546875),  // sin(24*(π/128))
    Q_8_8(0.57421875), // sin(25*(π/128))
    Q_8_8(0.59375),    // sin(26*(π/128))
    Q_8_8(0.61328125), // sin(27*(π/128))
    Q_8_8(0.6328125),  // sin(28*(π/128))
    Q_8_8(0.65234375), // sin(29*(π/128))
    Q_8_8(0.66796875), // sin(30*(π/128))
    Q_8_8(0.6875),     // sin(31*(π/128))
    Q_8_8(0.70703125), // sin(32*(π/128))
    Q_8_8(0.72265625), // sin(33*(π/128))
    Q_8_8(0.73828125), // sin(34*(π/128))
    Q_8_8(0.75390625), // sin(35*(π/128))
    Q_8_8(0.76953125), // sin(36*(π/128))
    Q_8_8(0.78515625), // sin(37*(π/128))
    Q_8_8(0.80078125), // sin(38*(π/128))
    Q_8_8(0.81640625), // sin(39*(π/128))
    Q_8_8(0.828125),   // sin(40*(π/128))
    Q_8_8(0.84375),    // sin(41*(π/128))
    Q_8_8(0.85546875), // sin(42*(π/128))
    Q_8_8(0.8671875),  // sin(43*(π/128))
    Q_8_8(0.87890625), // sin(44*(π/128))
    Q_8_8(0.890625),   // sin(45*(π/128))
    Q_8_8(0.90234375), // sin(46*(π/128))
    Q_8_8(0.9140625),  // sin(47*(π/128))
    Q_8_8(0.921875),   // sin(48*(π/128))
    Q_8_8(0.9296875),  // sin(49*(π/128))
    Q_8_8(0.94140625), // sin(50*(π/128))
    Q_8_8(0.94921875), // sin(51*(π/128))
    Q_8_8(0.953125),   // sin(52*(π/128))
    Q_8_8(0.9609375),  // sin(53*(π/128))
    Q_8_8(0.96875),    // sin(54*(π/128))
    Q_8_8(0.97265625), // sin(55*(π/128))
    Q_8_8(0.98046875), // sin(56*(π/128))
    Q_8_8(0.984375),   // sin(57*(π/128))
    Q_8_8(0.98828125), // sin(58*(π/128))
    Q_8_8(0.9921875),  // sin(59*(π/128))
    Q_8_8(0.9921875),  // sin(60*(π/128))
    Q_8_8(0.99609375), // sin(61*(π/128))
    Q_8_8(0.99609375), // sin(62*(π/128))
    Q_8_8(0.99609375), // sin(63*(π/128))
};

const s16 gCosineTable[256] = {
    Q_8_8(1),           // sin(64*(π/128))
    Q_8_8(0.99609375),  // sin(65*(π/128))
    Q_8_8(0.99609375),  // sin(66*(π/128))
    Q_8_8(0.99609375),  // sin(67*(π/128))
    Q_8_8(0.9921875),   // sin(68*(π/128))
    Q_8_8(0.9921875),   // sin(69*(π/128))
    Q_8_8(0.98828125),  // sin(70*(π/128))
    Q_8_8(0.984375),    // sin(71*(π/128))
    Q_8_8(0.98046875),  // sin(72*(π/128))
    Q_8_8(0.97265625),  // sin(73*(π/128))
    Q_8_8(0.96875),     // sin(74*(π/128))
    Q_8_8(0.9609375),   // sin(75*(π/128))
    Q_8_8(0.953125),    // sin(76*(π/128))
    Q_8_8(0.94921875),  // sin(77*(π/128))
    Q_8_8(0.94140625),  // sin(78*(π/128))
    Q_8_8(0.9296875),   // sin(79*(π/128))
    Q_8_8(0.921875),    // sin(80*(π/128))
    Q_8_8(0.9140625),   // sin(81*(π/128))
    Q_8_8(0.90234375),  // sin(82*(π/128))
    Q_8_8(0.890625),    // sin(83*(π/128))
    Q_8_8(0.87890625),  // sin(84*(π/128))
    Q_8_8(0.8671875),   // sin(85*(π/128))
    Q_8_8(0.85546875),  // sin(86*(π/128))
    Q_8_8(0.84375),     // sin(87*(π/128))
    Q_8_8(0.828125),    // sin(88*(π/128))
    Q_8_8(0.81640625),  // sin(89*(π/128))
    Q_8_8(0.80078125),  // sin(90*(π/128))
    Q_8_8(0.78515625),  // sin(91*(π/128))
    Q_8_8(0.76953125),  // sin(92*(π/128))
    Q_8_8(0.75390625),  // sin(93*(π/128))
    Q_8_8(0.73828125),  // sin(94*(π/128))
    Q_8_8(0.72265625),  // sin(95*(π/128))
    Q_8_8(0.70703125),  // sin(96*(π/128))
    Q_8_8(0.6875),      // sin(97*(π/128))
    Q_8_8(0.66796875),  // sin(98*(π/128))
    Q_8_8(0.65234375),  // sin(99*(π/128))
    Q_8_8(0.6328125),   // sin(100*(π/128))
    Q_8_8(0.61328125),  // sin(101*(π/128))
    Q_8_8(0.59375),     // sin(102*(π/128))
    Q_8_8(0.57421875),  // sin(103*(π/128))
    Q_8_8(0.5546875),   // sin(104*(π/128))
    Q_8_8(0.53125),     // sin(105*(π/128))
    Q_8_8(0.51171875),  // sin(106*(π/128))
    Q_8_8(0.4921875),   // sin(107*(π/128))
    Q_8_8(0.46875),     // sin(108*(π/128))
    Q_8_8(0.44921875),  // sin(109*(π/128))
    Q_8_8(0.42578125),  // sin(110*(π/128))
    Q_8_8(0.40234375),  // sin(111*(π/128))
    Q_8_8(0.37890625),  // sin(112*(π/128))
    Q_8_8(0.359375),    // sin(113*(π/128))
    Q_8_8(0.3359375),   // sin(114*(π/128))
    Q_8_8(0.3125),      // sin(115*(π/128))
    Q_8_8(0.2890625),   // sin(116*(π/128))
    Q_8_8(0.265625),    // sin(117*(π/128))
    Q_8_8(0.2421875),   // sin(118*(π/128))
    Q_8_8(0.21875),     // sin(119*(π/128))
    Q_8_8(0.19140625),  // sin(120*(π/128))
    Q_8_8(0.16796875),  // sin(121*(π/128))
    Q_8_8(0.14453125),  // sin(122*(π/128))
    Q_8_8(0.12109375),  // sin(123*(π/128))
    Q_8_8(0.09765625),  // sin(124*(π/128))
    Q_8_8(0.0703125),   // sin(125*(π/128))
    Q_8_8(0.046875),    // sin(126*(π/128))
    Q_8_8(0.0234375),   // sin(127*(π/128))
    Q_8_8(0),           // sin(128*(π/128))
    Q_8_8(-0.0234375),  // sin(129*(π/128))
    Q_8_8(-0.046875),   // sin(130*(π/128))
    Q_8_8(-0.0703125),  // sin(131*(π/128))
    Q_8_8(-0.09765625), // sin(132*(π/128))
    Q_8_8(-0.12109375), // sin(133*(π/128))
    Q_8_8(-0.14453125), // sin(134*(π/128))
    Q_8_8(-0.16796875), // sin(135*(π/128))
    Q_8_8(-0.19140625), // sin(136*(π/128))
    Q_8_8(-0.21875),    // sin(137*(π/128))
    Q_8_8(-0.2421875),  // sin(138*(π/128))
    Q_8_8(-0.265625),   // sin(139*(π/128))
    Q_8_8(-0.2890625),  // sin(140*(π/128))
    Q_8_8(-0.3125),     // sin(141*(π/128))
    Q_8_8(-0.3359375),  // sin(142*(π/128))
    Q_8_8(-0.359375),   // sin(143*(π/128))
    Q_8_8(-0.37890625), // sin(144*(π/128))
    Q_8_8(-0.40234375), // sin(145*(π/128))
    Q_8_8(-0.42578125), // sin(146*(π/128))
    Q_8_8(-0.44921875), // sin(147*(π/128))
    Q_8_8(-0.46875),    // sin(148*(π/128))
    Q_8_8(-0.4921875),  // sin(149*(π/128))
    Q_8_8(-0.51171875), // sin(150*(π/128))
    Q_8_8(-0.53125),    // sin(151*(π/128))
    Q_8_8(-0.5546875),  // sin(152*(π/128))
    Q_8_8(-0.57421875), // sin(153*(π/128))
    Q_8_8(-0.59375),    // sin(154*(π/128))
    Q_8_8(-0.61328125), // sin(155*(π/128))
    Q_8_8(-0.6328125),  // sin(156*(π/128))
    Q_8_8(-0.65234375), // sin(157*(π/128))
    Q_8_8(-0.66796875), // sin(158*(π/128))
    Q_8_8(-0.6875),     // sin(159*(π/128))
    Q_8_8(-0.70703125), // sin(160*(π/128))
    Q_8_8(-0.72265625), // sin(161*(π/128))
    Q_8_8(-0.73828125), // sin(162*(π/128))
    Q_8_8(-0.75390625), // sin(163*(π/128))
    Q_8_8(-0.76953125), // sin(164*(π/128))
    Q_8_8(-0.78515625), // sin(165*(π/128))
    Q_8_8(-0.80078125), // sin(166*(π/128))
    Q_8_8(-0.81640625), // sin(167*(π/128))
    Q_8_8(-0.828125),   // sin(168*(π/128))
    Q_8_8(-0.84375),    // sin(169*(π/128))
    Q_8_8(-0.85546875), // sin(170*(π/128))
    Q_8_8(-0.8671875),  // sin(171*(π/128))
    Q_8_8(-0.87890625), // sin(172*(π/128))
    Q_8_8(-0.890625),   // sin(173*(π/128))
    Q_8_8(-0.90234375), // sin(174*(π/128))
    Q_8_8(-0.9140625),  // sin(175*(π/128))
    Q_8_8(-0.921875),   // sin(176*(π/128))
    Q_8_8(-0.9296875),  // sin(177*(π/128))
    Q_8_8(-0.94140625), // sin(178*(π/128))
    Q_8_8(-0.94921875), // sin(179*(π/128))
    Q_8_8(-0.953125),   // sin(180*(π/128))
    Q_8_8(-0.9609375),  // sin(181*(π/128))
    Q_8_8(-0.96875),    // sin(182*(π/128))
    Q_8_8(-0.97265625), // sin(183*(π/128))
    Q_8_8(-0.98046875), // sin(184*(π/128))
    Q_8_8(-0.984375),   // sin(185*(π/128))
    Q_8_8(-0.98828125), // sin(186*(π/128))
    Q_8_8(-0.9921875),  // sin(187*(π/128))
    Q_8_8(-0.9921875),  // sin(188*(π/128))
    Q_8_8(-0.99609375), // sin(189*(π/128))
    Q_8_8(-0.99609375), // sin(190*(π/128))
    Q_8_8(-0.99609375), // sin(191*(π/128))
    Q_8_8(-1),          // sin(192*(π/128))
    Q_8_8(-0.99609375), // sin(193*(π/128))
    Q_8_8(-0.99609375), // sin(194*(π/128))
    Q_8_8(-0.99609375), // sin(195*(π/128))
    Q_8_8(-0.9921875),  // sin(196*(π/128))
    Q_8_8(-0.9921875),  // sin(197*(π/128))
    Q_8_8(-0.98828125), // sin(198*(π/128))
    Q_8_8(-0.984375),   // sin(199*(π/128))
    Q_8_8(-0.98046875), // sin(200*(π/128))
    Q_8_8(-0.97265625), // sin(201*(π/128))
    Q_8_8(-0.96875),    // sin(202*(π/128))
    Q_8_8(-0.9609375),  // sin(203*(π/128))
    Q_8_8(-0.953125),   // sin(204*(π/128))
    Q_8_8(-0.94921875), // sin(205*(π/128))
    Q_8_8(-0.94140625), // sin(206*(π/128))
    Q_8_8(-0.9296875),  // sin(207*(π/128))
    Q_8_8(-0.921875),   // sin(208*(π/128))
    Q_8_8(-0.9140625),  // sin(209*(π/128))
    Q_8_8(-0.90234375), // sin(210*(π/128))
    Q_8_8(-0.890625),   // sin(211*(π/128))
    Q_8_8(-0.87890625), // sin(212*(π/128))
    Q_8_8(-0.8671875),  // sin(213*(π/128))
    Q_8_8(-0.85546875), // sin(214*(π/128))
    Q_8_8(-0.84375),    // sin(215*(π/128))
    Q_8_8(-0.828125),   // sin(216*(π/128))
    Q_8_8(-0.81640625), // sin(217*(π/128))
    Q_8_8(-0.80078125), // sin(218*(π/128))
    Q_8_8(-0.78515625), // sin(219*(π/128))
    Q_8_8(-0.76953125), // sin(220*(π/128))
    Q_8_8(-0.75390625), // sin(221*(π/128))
    Q_8_8(-0.73828125), // sin(222*(π/128))
    Q_8_8(-0.72265625), // sin(223*(π/128))
    Q_8_8(-0.70703125), // sin(224*(π/128))
    Q_8_8(-0.6875),     // sin(225*(π/128))
    Q_8_8(-0.66796875), // sin(226*(π/128))
    Q_8_8(-0.65234375), // sin(227*(π/128))
    Q_8_8(-0.6328125),  // sin(228*(π/128))
    Q_8_8(-0.61328125), // sin(229*(π/128))
    Q_8_8(-0.59375),    // sin(230*(π/128))
    Q_8_8(-0.57421875), // sin(231*(π/128))
    Q_8_8(-0.5546875),  // sin(232*(π/128))
    Q_8_8(-0.53125),    // sin(233*(π/128))
    Q_8_8(-0.51171875), // sin(234*(π/128))
    Q_8_8(-0.4921875),  // sin(235*(π/128))
    Q_8_8(-0.46875),    // sin(236*(π/128))
    Q_8_8(-0.44921875), // sin(237*(π/128))
    Q_8_8(-0.42578125), // sin(238*(π/128))
    Q_8_8(-0.40234375), // sin(239*(π/128))
    Q_8_8(-0.37890625), // sin(240*(π/128))
    Q_8_8(-0.359375),   // sin(241*(π/128))
    Q_8_8(-0.3359375),  // sin(242*(π/128))
    Q_8_8(-0.3125),     // sin(243*(π/128))
    Q_8_8(-0.2890625),  // sin(244*(π/128))
    Q_8_8(-0.265625),   // sin(245*(π/128))
    Q_8_8(-0.2421875),  // sin(246*(π/128))
    Q_8_8(-0.21875),    // sin(247*(π/128))
    Q_8_8(-0.19140625), // sin(248*(π/128))
    Q_8_8(-0.16796875), // sin(249*(π/128))
    Q_8_8(-0.14453125), // sin(250*(π/128))
    Q_8_8(-0.12109375), // sin(251*(π/128))
    Q_8_8(-0.09765625), // sin(252*(π/128))
    Q_8_8(-0.0703125),  // sin(253*(π/128))
    Q_8_8(-0.046875),   // sin(254*(π/128))
    Q_8_8(-0.0234375),  // sin(255*(π/128))
    Q_8_8(0),           // sin(256*(π/128))
    Q_8_8(0.0234375),   // sin(257*(π/128))
    Q_8_8(0.046875),    // sin(258*(π/128))
    Q_8_8(0.0703125),   // sin(259*(π/128))
    Q_8_8(0.09765625),  // sin(260*(π/128))
    Q_8_8(0.12109375),  // sin(261*(π/128))
    Q_8_8(0.14453125),  // sin(262*(π/128))
    Q_8_8(0.16796875),  // sin(263*(π/128))
    Q_8_8(0.19140625),  // sin(264*(π/128))
    Q_8_8(0.21875),     // sin(265*(π/128))
    Q_8_8(0.2421875),   // sin(266*(π/128))
    Q_8_8(0.265625),    // sin(267*(π/128))
    Q_8_8(0.2890625),   // sin(268*(π/128))
    Q_8_8(0.3125),      // sin(269*(π/128))
    Q_8_8(0.3359375),   // sin(270*(π/128))
    Q_8_8(0.359375),    // sin(271*(π/128))
    Q_8_8(0.37890625),  // sin(272*(π/128))
    Q_8_8(0.40234375),  // sin(273*(π/128))
    Q_8_8(0.42578125),  // sin(274*(π/128))
    Q_8_8(0.44921875),  // sin(275*(π/128))
    Q_8_8(0.46875),     // sin(276*(π/128))
    Q_8_8(0.4921875),   // sin(277*(π/128))
    Q_8_8(0.51171875),  // sin(278*(π/128))
    Q_8_8(0.53125),     // sin(279*(π/128))
    Q_8_8(0.5546875),   // sin(280*(π/128))
    Q_8_8(0.57421875),  // sin(281*(π/128))
    Q_8_8(0.59375),     // sin(282*(π/128))
    Q_8_8(0.61328125),  // sin(283*(π/128))
    Q_8_8(0.6328125),   // sin(284*(π/128))
    Q_8_8(0.65234375),  // sin(285*(π/128))
    Q_8_8(0.66796875),  // sin(286*(π/128))
    Q_8_8(0.6875),      // sin(287*(π/128))
    Q_8_8(0.70703125),  // sin(288*(π/128))
    Q_8_8(0.72265625),  // sin(289*(π/128))
    Q_8_8(0.73828125),  // sin(290*(π/128))
    Q_8_8(0.75390625),  // sin(291*(π/128))
    Q_8_8(0.76953125),  // sin(292*(π/128))
    Q_8_8(0.78515625),  // sin(293*(π/128))
    Q_8_8(0.80078125),  // sin(294*(π/128))
    Q_8_8(0.81640625),  // sin(295*(π/128))
    Q_8_8(0.828125),    // sin(296*(π/128))
    Q_8_8(0.84375),     // sin(297*(π/128))
    Q_8_8(0.85546875),  // sin(298*(π/128))
    Q_8_8(0.8671875),   // sin(299*(π/128))
    Q_8_8(0.87890625),  // sin(300*(π/128))
    Q_8_8(0.890625),    // sin(301*(π/128))
    Q_8_8(0.90234375),  // sin(302*(π/128))
    Q_8_8(0.9140625),   // sin(303*(π/128))
    Q_8_8(0.921875),    // sin(304*(π/128))
    Q_8_8(0.9296875),   // sin(305*(π/128))
    Q_8_8(0.94140625),  // sin(306*(π/128))
    Q_8_8(0.94921875),  // sin(307*(π/128))
    Q_8_8(0.953125),    // sin(308*(π/128))
    Q_8_8(0.9609375),   // sin(309*(π/128))
    Q_8_8(0.96875),     // sin(310*(π/128))
    Q_8_8(0.97265625),  // sin(311*(π/128))
    Q_8_8(0.98046875),  // sin(312*(π/128))
    Q_8_8(0.984375),    // sin(313*(π/128))
    Q_8_8(0.98828125),  // sin(314*(π/128))
    Q_8_8(0.9921875),   // sin(315*(π/128))
    Q_8_8(0.9921875),   // sin(316*(π/128))
    Q_8_8(0.99609375),  // sin(317*(π/128))
    Q_8_8(0.99609375),  // sin(318*(π/128))
    Q_8_8(0.99609375),  // sin(319*(π/128))
};
