#include "entity.h"
#include "definitions.h"
#include "hitbox.h"

#define MULTI_FORM(definition_ptr) \
    { 0xffff, 0, { .definition = (definition_ptr) }, 0, 0, 0 }

const ProjectileDefinition gProjectileDefinition_0[];
const ProjectileDefinition gProjectileDefinition_6[];
const ProjectileDefinition gProjectileDefinition_7[];
const ProjectileDefinition gProjectileDefinition_8[];
const ProjectileDefinition gProjectileDefinition_9[];
const ProjectileDefinition gProjectileDefinition_A[];
const ProjectileDefinition gProjectileDefinition_E[];
const ProjectileDefinition gProjectileDefinition_F[];
const ProjectileDefinition gProjectileDefinition_10[];
const ProjectileDefinition gProjectileDefinition_14[];
const ProjectileDefinition gProjectileDefinition_14[];
const ProjectileDefinition gProjectileDefinition_1B[];
const ProjectileDefinition gProjectileDefinition_1D[];
const ProjectileDefinition gProjectileDefinition_1E[];
const ProjectileDefinition gProjectileDefinition_1F[];
const ProjectileDefinition gProjectileDefinition_22[];
const ProjectileDefinition gProjectileDefinition_22[];

const ProjectileDefinition gProjectileDefinitions[] = {
    MULTI_FORM(gProjectileDefinition_0),
    { 1, 1, { &gHitbox_7 }, 176, 2, { 3, 1, 1, 0 }, 66, 640, 26, 11 }, // TODO sprite index too high
    { 366, 0, { &gHitbox_7 }, SPRITE_BONEPROJECTILE, 0, { 1, 1, 1, 0 }, 66, 640, 26, 11 },
    { 0, 0, { &gHitbox_0 }, 0, 2, { 0, 1, 0, 1 }, 4, 0, 139, 11 }, // TODO sprite index too high
    { 114, 110, { &gHitbox_7 }, SPRITE_BUSINESSSCRUB, 0, { 3, 1, 1, 0 }, 66, 768, 26, 11 },
    { 0, 0, { &gHitbox_0 }, 0, 2, { 0, 1, 0, 1 }, 64, 0, 1, 1 }, // TODO sprite index too high
    MULTI_FORM(gProjectileDefinition_6),
    MULTI_FORM(gProjectileDefinition_7),
    MULTI_FORM(gProjectileDefinition_8),
    MULTI_FORM(gProjectileDefinition_9),
    MULTI_FORM(gProjectileDefinition_A),
    { 0, 0, { &gHitbox_0 }, 0, 2, { 0, 1, 1, 1 }, 4, 0, 161, 11 }, // TODO sprite index too high
#if defined(JP) || defined(EU)
    { 32827, 1, { &gHitbox_0 }, SPRITE_SPECIALFX, 0, { 0, 1, 1, 1 }, 65, 0, 74, 3 },
#else
    { 32827, 1, { &gHitbox_3 }, SPRITE_SPECIALFX, 0, { 0, 1, 1, 1 }, 65, 0, 74, 3 },
#endif
    { 518, 1, { &gHitbox_0 }, SPRITE_ARROWPROJECTILE, 0, { 0, 1, 1, 1 }, 66, 768, 26, 11 },
    MULTI_FORM(gProjectileDefinition_E),
    MULTI_FORM(gProjectileDefinition_F),
    MULTI_FORM(gProjectileDefinition_10),
    { 16400, 0, { &gHitbox_0 }, SPRITE_LAKITUCLOUDPROJECTILE, 0, { 1, 0, 1, 2 }, 65, 0, 67, 4 },
    { 382, 1, { &gHitbox_1 }, SPRITE_LAKITULIGHTNING, 0, { 1, 1, 1, 0 }, 66, 128, 164, 11 },
    { 16400, 288, { &gHitbox_0 }, 107, 2, { 0, 1, 1, 1 }, 4, 384, 3, 11 }, // TODO sprite index too high
    MULTI_FORM(gProjectileDefinition_14),
    { 16400, 1, { &gHitbox_0 }, SPRITE_SPIDERWEB, 0, { 0, 1, 1, 1 }, 65, 640, 159, 143 },
    { 0, 0, { (Hitbox*)&gHitbox_20 }, SPRITE_TORCHTRAPPROJECTILE_0, 0, { 0, 1, 1, 1 }, 66, 640, 146, 11 },
    { 399, 0, { (Hitbox*)&gHitbox_20 }, SPRITE_TORCHTRAPPROJECTILE_1, 0, { 0, 1, 1, 1 }, 65, 640, 10, 11 },
    { 405, 0, { &gHitbox_0 }, SPRITE_V1DARKMAGICPROJECTILE, 0, { 3, 1, 1, 1 }, 66, 256, 46, 15 },
#ifdef EU
    { 401, 112, { &gHitbox_1 }, 488, 0, { 1, 1, 1, 1 }, 65, 640, 162, 11 }, // TODO sprite index too high
#else
    { 401, 112, { &gHitbox_1 }, 489, 0, { 1, 1, 1, 1 }, 65, 640, 162, 11 }, // TODO sprite index too high
#endif
    { 175, 0, { &gHitbox_0 }, SPRITE_GLEEROK_1, 0, { 3, 1, 1, 0 }, 66, 512, 45, 11 },
    MULTI_FORM(gProjectileDefinition_1B),
    { 404, 0, { &gHitbox_0 }, SPRITE_V1EYELASER, 0, { 0, 1, 1, 0 }, 66, 512, 42, 11 },
    MULTI_FORM(gProjectileDefinition_1D),
    MULTI_FORM(gProjectileDefinition_1E),
    MULTI_FORM(gProjectileDefinition_1F),
    { 415, 4, { (Hitbox*)&gHitbox_20 }, SPRITE_V3HANDPROJECTILE, 0, { 1, 1, 1, 1 }, 66, 704, 60, 11 },
    { 415, 320, { (Hitbox*)&gHitbox_20 }, SPRITE_V3HANDPROJECTILE, 0, { 1, 1, 1, 1 }, 66, 512, 164, 11 },
    MULTI_FORM(gProjectileDefinition_22),
    { 493, 0, { &gHitbox_22 }, SPRITE_GYORGMALEENERGYPROJECTILE, 0, { 0, 1, 1, 1 }, 66, 256, 31, 11 },
    { 418, 1, { &gHitbox_22 }, SPRITE_WRATHEYE, 0, { 1, 1, 1, 1 }, 66, 512, 55, 11 },
};

const ProjectileDefinition gProjectileDefinition_0[] = {
    { 0, 0, { &gHitbox_0 }, 0, 2, { 0, 1, 0, 1 }, 4, 0, 76, 11 },
    { 0, 0, { &gHitbox_0 }, 0, 2, { 0, 1, 0, 1 }, 65, 0, 83, 11 },
    { 0, 0, { &gHitbox_0 }, 0, 2, { 0, 1, 0, 1 }, 4, 0, 76, 11 },
    { 16400, 1, { &gHitbox_0 }, 99, 2, { 0, 1, 1, 1 }, 4, 0, 84, 11 },
    { 0, 0, { &gHitbox_0 }, 0, 2, { 0, 1, 0, 1 }, 4, 0, 76, 11 },
}; // TODO sprite index too high
const ProjectileDefinition gProjectileDefinition_6[] = {
    { 34, 1, { &gHitbox_0 }, SPRITE_DIRTBALLPROJECTILE, 0, { 0, 1, 1, 1 }, 66, 0, 120, 11 },
    { 0, 0, { &gHitbox_0 }, SPRITE_0, 0, { 0, 1, 0, 1 }, 66, 0, 120, 11 },
    { 33008, 1, { &gHitbox_0 }, SPRITE_POT, 0, { 0, 1, 1, 1 }, 66, 0, 120, 11 },
};
const ProjectileDefinition gProjectileDefinition_7[] = {
    { 218, 0, { &gHitbox_0 }, SPRITE_WINDPROJECTILE, 0, { 0, 0, 0, 1 }, 66, 0, 0, 11 },
    { 218, 0, { &gHitbox_0 }, SPRITE_WINDPROJECTILE, 0, { 0, 1, 1, 1 }, 66, 640, 13, 11 },
    { 218, 1, { &gHitbox_0 }, SPRITE_WINDPROJECTILE, 0, { 0, 1, 1, 1 }, 66, 640, 13, 11 },
};
const ProjectileDefinition gProjectileDefinition_8[] = {
    { 219, 0, { &gHitbox_0 }, SPRITE_FIREPROJECTILE, 0, { 0, 0, 0, 1 }, 66, 0, 0, 11 },
    { 219, 0, { &gHitbox_0 }, SPRITE_FIREPROJECTILE, 0, { 0, 1, 1, 1 }, 66, 640, 10, 11 },
};
const ProjectileDefinition gProjectileDefinition_9[] = {
    { 220, 113, { &gHitbox_0 }, SPRITE_ICEPROJECTILE, 0, { 0, 0, 0, 1 }, 66, 0, 0, 11 },
    { 220, 1, { &gHitbox_0 }, SPRITE_ICEPROJECTILE, 0, { 0, 1, 1, 1 }, 66, 640, 11, 11 },
};
const ProjectileDefinition gProjectileDefinition_A[] = {
    { 175, 0, { &gHitbox_0 }, SPRITE_GLEEROK_1, 0, { 3, 1, 1, 1 }, 66, 512, 62, 11 },
    { 175, 0, { &gHitbox_0 }, 226, 0, { 3, 1, 1, 0 }, 66, 512, 62, 11 },
    { 175, 0, { &gHitbox_0 }, 226, 0, { 0, 1, 1, 0 }, 66, 384, 62, 11 },
    { 32992, 1, { &gHitbox_0 }, SPRITE_POT, 0, { 3, 1, 1, 1 }, 66, 384, 157, 11 },
};
const ProjectileDefinition gProjectileDefinition_E[] = {
    { 294, 1, { &gHitbox_0 }, SPRITE_MAZAALENERGYBEAM, 0, { 1, 1, 1, 1 }, 66, 2048, 16, 11 },
    { 295, 0, { &gHitbox_0 }, SPRITE_MAZAALENERGYBEAM_1, 0, { 1, 1, 1, 1 }, 66, 2048, 17, 11 },
};
const ProjectileDefinition gProjectileDefinition_F[] = {
    { 16400, 245, { &gUnk_080FD3F4 }, SPRITE_OCTOROKBOSS_0, 0, { 0, 1, 1, 1 }, 66, 512, 98, 11 },
    { 271, 245, { &gHitbox_0 }, SPRITE_OCTOROKBOSS_1, 0, { 0, 1, 1, 1 }, 66, 512, 122, 11 },
    { 272, 245, { &gHitbox_0 }, SPRITE_OCTOROKBOSS_1, 0, { 0, 1, 1, 1 }, 66, 512, 11, 11 },
    { 32992, 1, { &gHitbox_0 }, SPRITE_POT, 0, { 3, 1, 1, 1 }, 66, 384, 157, 11 },
};
const ProjectileDefinition gProjectileDefinition_10[] = {
    { 33008, 1, { (Hitbox*)&gUnk_080FD3FC }, 167, 1, { 0, 0, 1, 0 }, 65, 640, 110, 4 },
    { 366, 0, { (Hitbox*)&gUnk_080FD3FC }, SPRITE_FLYINGSKULL, 0, { 0, 0, 1, 0 }, 65, 640, 110, 4 },
}; // TODO sprite index too high
#ifdef EU
const ProjectileDefinition gProjectileDefinition_14[] = {
    { 387, 20, { &gHitbox_2 }, 486, 0, { 0, 1, 1, 1 }, 65, 640, 110, 12 },
    { 387, 20, { (Hitbox*)&gUnk_080FD43C }, 486, 4, { 0, 1, 1, 1 }, 65, 640, 88, 5 },
}; // TODO sprite index too high
#else
const ProjectileDefinition gProjectileDefinition_14[] = {
    { 387, 20, { &gHitbox_2 }, 487, 0, { 0, 1, 1, 1 }, 65, 640, 110, 12 },
    { 387, 20, { (Hitbox*)&gUnk_080FD43C }, 487, 4, { 0, 1, 1, 1 }, 65, 640, 88, 5 },
}; // TODO sprite index too high
#endif
const ProjectileDefinition gProjectileDefinition_1B[] = {
    { 431, 0, { &gHitbox_1 }, SPRITE_CANNONBALLPROJECTILE, 0, { 1, 1, 1, 0 }, 65, 512, 158, 11 },
    { 432, 0, { &gHitbox_1 }, SPRITE_CANNONBALLPROJECTILE, 0, { 1, 1, 1, 0 }, 65, 512, 158, 11 },
    { 431, 0, { &gHitbox_1 }, SPRITE_CANNONBALLPROJECTILE, 0, { 1, 1, 1, 0 }, 65, 512, 158, 11 },
    { 432, 0, { &gHitbox_1 }, SPRITE_CANNONBALLPROJECTILE, 0, { 1, 1, 1, 0 }, 65, 512, 158, 11 },
};
const ProjectileDefinition gProjectileDefinition_1D[] = {
    { 399, 0, { &gUnk_080FD558 }, SPRITE_TORCHTRAPPROJECTILE_1, 0, { 0, 1, 1, 1 }, 65, 640, 115, 11 },
    { 399, 0, { &gUnk_080FD560 }, SPRITE_TORCHTRAPPROJECTILE_1, 0, { 0, 1, 1, 1 }, 65, 640, 115, 11 },
    { 399, 0, { &gUnk_080FD560 }, SPRITE_TORCHTRAPPROJECTILE_1, 0, { 0, 1, 1, 1 }, 65, 640, 115, 11 },
    { 399, 0, { &gUnk_080FD560 }, SPRITE_TORCHTRAPPROJECTILE_1, 0, { 0, 1, 1, 1 }, 65, 640, 115, 11 },
    { 399, 0, { &gUnk_080FD560 }, SPRITE_TORCHTRAPPROJECTILE_1, 0, { 0, 1, 1, 1 }, 65, 640, 115, 11 },
};
const ProjectileDefinition gProjectileDefinition_1E[] = {
    { 453, 0, { &gUnk_080FD4B8 }, SPRITE_SPIKEDROLLERS, 0, { 0, 1, 1, 1 }, 65, 256, 102, 11 },
    { 453, 0, { &gUnk_080FD4C0 }, SPRITE_SPIKEDROLLERS, 0, { 0, 1, 1, 1 }, 65, 256, 102, 11 },
    { 453, 0, { &gUnk_080FD4C8 }, SPRITE_SPIKEDROLLERS, 0, { 0, 1, 1, 1 }, 65, 256, 102, 11 },
    { 453, 0, { &gUnk_080FD4D0 }, SPRITE_SPIKEDROLLERS, 0, { 0, 1, 1, 1 }, 65, 256, 102, 11 },
    { 453, 0, { &gUnk_080FD4D8 }, SPRITE_SPIKEDROLLERS, 0, { 0, 1, 1, 1 }, 65, 256, 102, 11 },
    { 453, 0, { &gUnk_080FD4E0 }, SPRITE_SPIKEDROLLERS, 0, { 0, 1, 1, 1 }, 65, 256, 102, 11 },
    { 453, 0, { &gUnk_080FD4E8 }, SPRITE_SPIKEDROLLERS, 0, { 0, 1, 1, 1 }, 65, 256, 102, 11 },
    { 453, 0, { &gUnk_080FD4F0 }, SPRITE_SPIKEDROLLERS, 0, { 0, 1, 1, 1 }, 65, 256, 102, 11 },
    { 453, 0, { &gUnk_080FD4F8 }, SPRITE_SPIKEDROLLERS, 0, { 0, 1, 1, 1 }, 65, 256, 102, 11 },
    { 453, 0, { &gUnk_080FD500 }, SPRITE_SPIKEDROLLERS, 0, { 0, 1, 1, 1 }, 65, 256, 102, 11 },
    { 453, 0, { &gUnk_080FD508 }, SPRITE_SPIKEDROLLERS, 0, { 0, 1, 1, 1 }, 65, 256, 102, 11 },
    { 453, 0, { &gUnk_080FD510 }, SPRITE_SPIKEDROLLERS, 0, { 0, 1, 1, 1 }, 65, 256, 102, 11 },
    { 453, 0, { &gUnk_080FD518 }, SPRITE_SPIKEDROLLERS, 0, { 0, 1, 1, 1 }, 65, 256, 102, 11 },
    { 453, 0, { &gUnk_080FD520 }, SPRITE_SPIKEDROLLERS, 0, { 0, 1, 1, 1 }, 65, 256, 102, 11 },
};
const ProjectileDefinition gProjectileDefinition_1F[] = {
    { 411, 317, { &gHitbox_0 }, SPRITE_V2PROJECTILE, 0, { 3, 1, 1, 1 }, 66, 384, 157, 11 },
    { 32992, 5, { &gHitbox_0 }, SPRITE_POT, 0, { 3, 1, 1, 1 }, 66, 384, 157, 11 },
    { 382, 1, { &gHitbox_0 }, SPRITE_LAKITULIGHTNING, 0, { 1, 1, 1, 0 }, 66, 288, 52, 15 },
};
#ifdef EU
const ProjectileDefinition gProjectileDefinition_22[] = {
    { 492, 372, { &gHitbox_1 }, 497, 0, { 0, 0, 1, 1 }, 65, 640, 29, 11 },
    { 491, 338, { (Hitbox*)&gHitbox_20 }, 496, 0, { 0, 1, 1, 1 }, 65, 640, 29, 11 },
}; // TODO sprite index too high
#else
const ProjectileDefinition gProjectileDefinition_22[] = {
    { 492, 372, { &gHitbox_1 }, 498, 0, { 0, 0, 1, 1 }, 65, 640, 29, 11 },
    { 491, 338, { (Hitbox*)&gHitbox_20 }, 497, 0, { 0, 1, 1, 1 }, 65, 640, 29, 11 },
}; // TODO sprite index too high
#endif

// TODO
const u8 gUnk_081326EC[] = {
    32, 5, 0, 3, 100, 6, 0, 3, 168, 7, 0, 3, 236, 8, 0, 3, 48, 10, 0, 3,
};
