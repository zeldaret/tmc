/**
 * @file playerItemCellOverwriteSet.c
 * @ingroup Items
 *
 * @brief Cell Overwrite Set Player Item
 */
#include "asm.h"
#include "common.h"
#include "entity.h"
#include "player.h"
#include "room.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused[4];
    /*0x6c*/ u16 tileType;
} PlayerItemCellOverwriteSetEntity;

// actTile for specialTile
const u8 gMapSpecialTileToActTile[] = {
    0,            // SPECIAL_TILE_0
    0,            // SPECIAL_TILE_1
    0,            // SPECIAL_TILE_2
    0,            // SPECIAL_TILE_3
    0,            // SPECIAL_TILE_4
    0,            // SPECIAL_TILE_5
    0,            // SPECIAL_TILE_6
    0,            // SPECIAL_TILE_7
    0,            // SPECIAL_TILE_8
    0,            // SPECIAL_TILE_9
    0,            // SPECIAL_TILE_10
    0,            // SPECIAL_TILE_11
    0,            // SPECIAL_TILE_12
    0,            // SPECIAL_TILE_13
    0,            // SPECIAL_TILE_14
    0,            // SPECIAL_TILE_15
    0,            // SPECIAL_TILE_16
    0,            // SPECIAL_TILE_17
    0,            // SPECIAL_TILE_18
    0,            // SPECIAL_TILE_19
    ACT_TILE_241, // SPECIAL_TILE_20
    0,            // SPECIAL_TILE_21
    0,            // SPECIAL_TILE_22
    ACT_TILE_83,  // SPECIAL_TILE_23
    ACT_TILE_242, // SPECIAL_TILE_24
    ACT_TILE_243, // SPECIAL_TILE_25
    0,            // SPECIAL_TILE_26
    0,            // SPECIAL_TILE_27
    0,            // SPECIAL_TILE_28
    0,            // SPECIAL_TILE_29
    0,            // SPECIAL_TILE_30
    0,            // SPECIAL_TILE_31
    ACT_TILE_240, // SPECIAL_TILE_32
    0,            // SPECIAL_TILE_33
    0,            // SPECIAL_TILE_34
    0,            // SPECIAL_TILE_35
    0,            // SPECIAL_TILE_36
    0,            // SPECIAL_TILE_37
    0,            // SPECIAL_TILE_38
    0,            // SPECIAL_TILE_39
    0,            // SPECIAL_TILE_40
    0,            // SPECIAL_TILE_41
    0,            // SPECIAL_TILE_42
    0,            // SPECIAL_TILE_43
    0,            // SPECIAL_TILE_44
    0,            // SPECIAL_TILE_45
    0,            // SPECIAL_TILE_46
    0,            // SPECIAL_TILE_47
    0,            // SPECIAL_TILE_48
    0,            // SPECIAL_TILE_49
    0,            // SPECIAL_TILE_50
    0,            // SPECIAL_TILE_51
    0,            // SPECIAL_TILE_52
    0,            // SPECIAL_TILE_53
    0,            // SPECIAL_TILE_54
    0,            // SPECIAL_TILE_55
    0,            // SPECIAL_TILE_56
    0,            // SPECIAL_TILE_57
    0,            // SPECIAL_TILE_58
    0,            // SPECIAL_TILE_59
    0,            // SPECIAL_TILE_60
    0,            // SPECIAL_TILE_61
    0,            // SPECIAL_TILE_62
    0,            // SPECIAL_TILE_63
    ACT_TILE_61,  // SPECIAL_TILE_64
    ACT_TILE_61,  // SPECIAL_TILE_65
    ACT_TILE_61,  // SPECIAL_TILE_66
    ACT_TILE_61,  // SPECIAL_TILE_67
    ACT_TILE_61,  // SPECIAL_TILE_68
    ACT_TILE_61,  // SPECIAL_TILE_69
    ACT_TILE_61,  // SPECIAL_TILE_70
    ACT_TILE_61,  // SPECIAL_TILE_71
    ACT_TILE_61,  // SPECIAL_TILE_72
    0,            // SPECIAL_TILE_73
    0,            // SPECIAL_TILE_74
    0,            // SPECIAL_TILE_75
    0,            // SPECIAL_TILE_76
    0,            // SPECIAL_TILE_77
    0,            // SPECIAL_TILE_78
    0,            // SPECIAL_TILE_79
    0,            // SPECIAL_TILE_80
    ACT_TILE_58,  // SPECIAL_TILE_81
    0,            // SPECIAL_TILE_82
    0,            // SPECIAL_TILE_83
    0,            // SPECIAL_TILE_84
    0,            // SPECIAL_TILE_85
    0,            // SPECIAL_TILE_86
    0,            // SPECIAL_TILE_87
    0,            // SPECIAL_TILE_88
    0,            // SPECIAL_TILE_89
    0,            // SPECIAL_TILE_90
    0,            // SPECIAL_TILE_91
    0,            // SPECIAL_TILE_92
    0,            // SPECIAL_TILE_93
    0,            // SPECIAL_TILE_94
    0,            // SPECIAL_TILE_95
    0,            // SPECIAL_TILE_96
    0,            // SPECIAL_TILE_97
    0,            // SPECIAL_TILE_98
    0,            // SPECIAL_TILE_99
    0,            // SPECIAL_TILE_100
    0,            // SPECIAL_TILE_101
    0,            // SPECIAL_TILE_102
    0,            // SPECIAL_TILE_103
    0,            // SPECIAL_TILE_104
    ACT_TILE_40,  // SPECIAL_TILE_105
    0,            // SPECIAL_TILE_106
    0,            // SPECIAL_TILE_107
    0,            // SPECIAL_TILE_108
    0,            // SPECIAL_TILE_109
    0,            // SPECIAL_TILE_110
    0,            // SPECIAL_TILE_111
    0,            // SPECIAL_TILE_112
    0,            // SPECIAL_TILE_113
    0,            // SPECIAL_TILE_114
    0,            // SPECIAL_TILE_115
    0,            // SPECIAL_TILE_116
    ACT_TILE_18,  // SPECIAL_TILE_117
    ACT_TILE_18,  // SPECIAL_TILE_118
    ACT_TILE_18,  // SPECIAL_TILE_119
    ACT_TILE_18,  // SPECIAL_TILE_120
    ACT_TILE_18,  // SPECIAL_TILE_121
    ACT_TILE_18,  // SPECIAL_TILE_122
    ACT_TILE_18,  // SPECIAL_TILE_123
    ACT_TILE_18,  // SPECIAL_TILE_124
    0,            // SPECIAL_TILE_125
    ACT_TILE_116, // SPECIAL_TILE_126
    ACT_TILE_116, // SPECIAL_TILE_127
    ACT_TILE_41,  // SPECIAL_TILE_128
    0,            // SPECIAL_TILE_129
    ACT_TILE_35,  // SPECIAL_TILE_130
    ACT_TILE_41,  // SPECIAL_TILE_131
    ACT_TILE_41,  // SPECIAL_TILE_132
    ACT_TILE_41,  // SPECIAL_TILE_133
    ACT_TILE_41,  // SPECIAL_TILE_134
    ACT_TILE_41,  // SPECIAL_TILE_135
    ACT_TILE_41,  // SPECIAL_TILE_136
    ACT_TILE_16,  // SPECIAL_TILE_137
    ACT_TILE_16,  // SPECIAL_TILE_138
    ACT_TILE_16,  // SPECIAL_TILE_139
    ACT_TILE_16,  // SPECIAL_TILE_140
    ACT_TILE_41,  // SPECIAL_TILE_141
    ACT_TILE_80,  // SPECIAL_TILE_142
    ACT_TILE_81,  // SPECIAL_TILE_143
    0,            // SPECIAL_TILE_144
    ACT_TILE_15,  // SPECIAL_TILE_145
    0,            // SPECIAL_TILE_146
    0,            // SPECIAL_TILE_147
    0,            // SPECIAL_TILE_148
    0,            // SPECIAL_TILE_149
    0,            // SPECIAL_TILE_150
};

// collisionData for specialTile
const u8 gMapSpecialTileToCollisionData[] = {
    COLLISION_DATA_29,  // SPECIAL_TILE_0
    0,                  // SPECIAL_TILE_1
    0,                  // SPECIAL_TILE_2
    0,                  // SPECIAL_TILE_3
    0,                  // SPECIAL_TILE_4
    0,                  // SPECIAL_TILE_5
    COLLISION_DATA_15,  // SPECIAL_TILE_6
    0,                  // SPECIAL_TILE_7
    0,                  // SPECIAL_TILE_8
    0,                  // SPECIAL_TILE_9
    0,                  // SPECIAL_TILE_10
    COLLISION_DATA_15,  // SPECIAL_TILE_11
    0,                  // SPECIAL_TILE_12
    0,                  // SPECIAL_TILE_13
    0,                  // SPECIAL_TILE_14
    0,                  // SPECIAL_TILE_15
    0,                  // SPECIAL_TILE_16
    0,                  // SPECIAL_TILE_17
    0,                  // SPECIAL_TILE_18
    0,                  // SPECIAL_TILE_19
    0,                  // SPECIAL_TILE_20
    0,                  // SPECIAL_TILE_21
    0,                  // SPECIAL_TILE_22
    COLLISION_DATA_23,  // SPECIAL_TILE_23
    COLLISION_DATA_40,  // SPECIAL_TILE_24
    COLLISION_DATA_40,  // SPECIAL_TILE_25
    COLLISION_DATA_40,  // SPECIAL_TILE_26
    COLLISION_DATA_15,  // SPECIAL_TILE_27
    0,                  // SPECIAL_TILE_28
    0,                  // SPECIAL_TILE_29
    0,                  // SPECIAL_TILE_30
    0,                  // SPECIAL_TILE_31
    COLLISION_DATA_32,  // SPECIAL_TILE_32
    0,                  // SPECIAL_TILE_33
    COLLISION_DATA_15,  // SPECIAL_TILE_34
    COLLISION_DATA_3,   // SPECIAL_TILE_35
    COLLISION_DATA_5,   // SPECIAL_TILE_36
    COLLISION_DATA_10,  // SPECIAL_TILE_37
    COLLISION_DATA_12,  // SPECIAL_TILE_38
    COLLISION_DATA_1,   // SPECIAL_TILE_39
    COLLISION_DATA_2,   // SPECIAL_TILE_40
    COLLISION_DATA_4,   // SPECIAL_TILE_41
    COLLISION_DATA_8,   // SPECIAL_TILE_42
    COLLISION_DATA_15,  // SPECIAL_TILE_43
    COLLISION_DATA_5,   // SPECIAL_TILE_44
    COLLISION_DATA_10,  // SPECIAL_TILE_45
    COLLISION_DATA_69,  // SPECIAL_TILE_46
    COLLISION_DATA_68,  // SPECIAL_TILE_47
    0,                  // SPECIAL_TILE_48
    0,                  // SPECIAL_TILE_49
    COLLISION_DATA_15,  // SPECIAL_TILE_50
    0,                  // SPECIAL_TILE_51
    0,                  // SPECIAL_TILE_52
    0,                  // SPECIAL_TILE_53
    COLLISION_DATA_15,  // SPECIAL_TILE_54
    0,                  // SPECIAL_TILE_55
    0,                  // SPECIAL_TILE_56
    0,                  // SPECIAL_TILE_57
    0,                  // SPECIAL_TILE_58
    COLLISION_DATA_15,  // SPECIAL_TILE_59
    0,                  // SPECIAL_TILE_60
    0,                  // SPECIAL_TILE_61
    COLLISION_DATA_15,  // SPECIAL_TILE_62
    0,                  // SPECIAL_TILE_63
    COLLISION_DATA_1,   // SPECIAL_TILE_64
    COLLISION_DATA_3,   // SPECIAL_TILE_65
    COLLISION_DATA_2,   // SPECIAL_TILE_66
    COLLISION_DATA_5,   // SPECIAL_TILE_67
    COLLISION_DATA_15,  // SPECIAL_TILE_68
    COLLISION_DATA_10,  // SPECIAL_TILE_69
    COLLISION_DATA_4,   // SPECIAL_TILE_70
    COLLISION_DATA_12,  // SPECIAL_TILE_71
    COLLISION_DATA_8,   // SPECIAL_TILE_72
    COLLISION_DATA_71,  // SPECIAL_TILE_73
    COLLISION_DATA_15,  // SPECIAL_TILE_74
    0,                  // SPECIAL_TILE_75
    0,                  // SPECIAL_TILE_76
    0,                  // SPECIAL_TILE_77
    0,                  // SPECIAL_TILE_78
    0,                  // SPECIAL_TILE_79
    COLLISION_DATA_15,  // SPECIAL_TILE_80
    COLLISION_DATA_15,  // SPECIAL_TILE_81
    COLLISION_DATA_3,   // SPECIAL_TILE_82
    COLLISION_DATA_5,   // SPECIAL_TILE_83
    0,                  // SPECIAL_TILE_84
    COLLISION_DATA_13,  // SPECIAL_TILE_85
    COLLISION_DATA_12,  // SPECIAL_TILE_86
    COLLISION_DATA_11,  // SPECIAL_TILE_87
    COLLISION_DATA_10,  // SPECIAL_TILE_88
    0,                  // SPECIAL_TILE_89
    COLLISION_DATA_15,  // SPECIAL_TILE_90
    COLLISION_DATA_15,  // SPECIAL_TILE_91
    COLLISION_DATA_15,  // SPECIAL_TILE_92
    COLLISION_DATA_15,  // SPECIAL_TILE_93
    COLLISION_DATA_15,  // SPECIAL_TILE_94
    COLLISION_DATA_15,  // SPECIAL_TILE_95
    COLLISION_DATA_15,  // SPECIAL_TILE_96
    COLLISION_DATA_15,  // SPECIAL_TILE_97
    COLLISION_DATA_80,  // SPECIAL_TILE_98
    COLLISION_DATA_7,   // SPECIAL_TILE_99
    COLLISION_DATA_11,  // SPECIAL_TILE_100
    COLLISION_DATA_13,  // SPECIAL_TILE_101
    COLLISION_DATA_14,  // SPECIAL_TILE_102
    COLLISION_DATA_15,  // SPECIAL_TILE_103
    COLLISION_DATA_15,  // SPECIAL_TILE_104
    COLLISION_DATA_39,  // SPECIAL_TILE_105
    COLLISION_DATA_15,  // SPECIAL_TILE_106
    COLLISION_DATA_15,  // SPECIAL_TILE_107
    COLLISION_DATA_16,  // SPECIAL_TILE_108
    COLLISION_DATA_17,  // SPECIAL_TILE_109
    COLLISION_DATA_18,  // SPECIAL_TILE_110
    COLLISION_DATA_19,  // SPECIAL_TILE_111
    0,                  // SPECIAL_TILE_112
    0,                  // SPECIAL_TILE_113
    COLLISION_DATA_15,  // SPECIAL_TILE_114
    COLLISION_DATA_15,  // SPECIAL_TILE_115
    0,                  // SPECIAL_TILE_116
    COLLISION_DATA_1,   // SPECIAL_TILE_117
    COLLISION_DATA_2,   // SPECIAL_TILE_118
    COLLISION_DATA_3,   // SPECIAL_TILE_119
    COLLISION_DATA_4,   // SPECIAL_TILE_120
    COLLISION_DATA_5,   // SPECIAL_TILE_121
    COLLISION_DATA_8,   // SPECIAL_TILE_122
    COLLISION_DATA_10,  // SPECIAL_TILE_123
    COLLISION_DATA_12,  // SPECIAL_TILE_124
    COLLISION_DATA_15,  // SPECIAL_TILE_125
    COLLISION_DATA_5,   // SPECIAL_TILE_126
    COLLISION_DATA_12,  // SPECIAL_TILE_127
    0,                  // SPECIAL_TILE_128
    0,                  // SPECIAL_TILE_129
    COLLISION_DATA_95,  // SPECIAL_TILE_130
    COLLISION_DATA_39,  // SPECIAL_TILE_131
    COLLISION_DATA_103, // SPECIAL_TILE_132
    COLLISION_DATA_104, // SPECIAL_TILE_133
    COLLISION_DATA_105, // SPECIAL_TILE_134
    COLLISION_DATA_106, // SPECIAL_TILE_135
    COLLISION_DATA_107, // SPECIAL_TILE_136
    COLLISION_DATA_49,  // SPECIAL_TILE_137
    COLLISION_DATA_50,  // SPECIAL_TILE_138
    COLLISION_DATA_58,  // SPECIAL_TILE_139
    COLLISION_DATA_60,  // SPECIAL_TILE_140
    COLLISION_DATA_35,  // SPECIAL_TILE_141
    COLLISION_DATA_43,  // SPECIAL_TILE_142
    COLLISION_DATA_43,  // SPECIAL_TILE_143
    COLLISION_DATA_5,   // SPECIAL_TILE_144
    COLLISION_DATA_34,  // SPECIAL_TILE_145
    COLLISION_DATA_1,   // SPECIAL_TILE_146
    COLLISION_DATA_2,   // SPECIAL_TILE_147
    COLLISION_DATA_4,   // SPECIAL_TILE_148
    COLLISION_DATA_8,   // SPECIAL_TILE_149
    COLLISION_DATA_12,  // SPECIAL_TILE_150
};

const u16 gUnk_080B7A3E[] = {
    1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1,  0, 0,  0, 0, 0, 0, 0,   0, 0, 0,  0, 0, 0, 0, 0, 1, 0, 0, 0,
    0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1,  1, 1,  1, 1, 1, 0, 0,   0, 0, 0,  0, 1, 0, 0, 0, 0, 0, 0, 0,
    1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,  1, 0,  0, 0, 0, 0, 129, 1, 1, 1,  1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 16, 0, 64, 0, 3, 3, 3, 3,   0, 0, 0,  1, 0, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0,  0, 1,  1, 1, 1, 0, 0,   0, 0, 34, 0, 0, 0, 0, 0,
}; // TODO no need to store this in an u16?
// TODO figure out type from arm_sub_080B1B84 and arm_sub_080B1BA4, also related to specialTiles

void PlayerItemCellOverwriteSet(PlayerItemCellOverwriteSetEntity* this) {
    static const s8 offsetByDirection[] = { 0, -16, 16, 0, 0, 16, -16, 0 };
    u32 tmp;
    Entity* player = &gPlayerEntity.base;

    if (super->action == 0) {
        this->tileType =
            GetTileTypeAtTilePos(TILE(player->x.HALF.HI + offsetByDirection[player->animationState & 0xe],
                                      player->y.HALF.HI + offsetByDirection[(player->animationState & 0xe) + 1]),
                                 super->collisionLayer);
        super->action++;
    }
    gPlayerState.mobility |= 0x80;
    tmp = gInput.heldKeys & R_BUTTON;
    if ((gInput.heldKeys & A_BUTTON) != 0) {
        if ((gInput.newKeys & R_BUTTON) != 0) {
            this->tileType =
                GetTileTypeAtTilePos(TILE(player->x.HALF.HI + offsetByDirection[player->animationState & 0xe],
                                          player->y.HALF.HI + offsetByDirection[(player->animationState & 0xe) + 1]),
                                     super->collisionLayer);
        }
        if ((gInput.heldKeys & R_BUTTON) != 0) {
            player->iframes = 2;
        } else {
            if ((gInput.newKeys & DPAD_RIGHT) != 0) {
                this->tileType--;
            }
            if ((gInput.newKeys & DPAD_LEFT) != 0) {
                this->tileType++;
            }
            if ((gInput.heldKeys & (DPAD_LEFT | DPAD_RIGHT)) != 0) {
                if (++super->subtimer > 0x1e) {
                    super->subtimer = 30;
                    if ((gInput.heldKeys & DPAD_RIGHT) != 0) {
                        this->tileType--;
                    }
                    if ((gInput.heldKeys & DPAD_LEFT) != 0) {
                        this->tileType++;
                    }
                }
            } else {
                super->subtimer = 0;
            }
        }
    } else {
        sub_0807B7D8(this->tileType,
                     TILE(player->x.HALF.HI + offsetByDirection[player->animationState & 0xe],
                          player->y.HALF.HI + offsetByDirection[(player->animationState & 0xe) + 1]),
                     super->collisionLayer);
        gPlayerState.mobility &= ~0x80;
        DeleteThisEntity();
    }
    if ((gInput.heldKeys & B_BUTTON) != 0) {
        sub_0807B7D8(this->tileType,
                     TILE(player->x.HALF.HI + offsetByDirection[0], player->y.HALF.HI + offsetByDirection[1]),
                     super->collisionLayer);
        sub_0807B7D8(this->tileType,
                     TILE(player->x.HALF.HI + offsetByDirection[2], player->y.HALF.HI + offsetByDirection[3]),
                     super->collisionLayer);
        sub_0807B7D8(this->tileType,
                     TILE(player->x.HALF.HI + offsetByDirection[4], player->y.HALF.HI + offsetByDirection[5]),
                     super->collisionLayer);
        sub_0807B7D8(this->tileType,
                     TILE(player->x.HALF.HI + offsetByDirection[6], player->y.HALF.HI + offsetByDirection[7]),
                     super->collisionLayer);
    }
}
