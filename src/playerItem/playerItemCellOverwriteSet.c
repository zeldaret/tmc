#include "asm.h"
#include "common.h"
#include "entity.h"
#include "player.h"
#include "room.h"
#include "tiles.h"

// vvv for specialMetaTile
const u8 gUnk_080B7910[] = {
    0, // SPECIAL_META_TILE_0
    0, // SPECIAL_META_TILE_1
    0, // SPECIAL_META_TILE_2
    0, // SPECIAL_META_TILE_3
    0, // SPECIAL_META_TILE_4
    0, // SPECIAL_META_TILE_5
    0, // SPECIAL_META_TILE_6
    0, // SPECIAL_META_TILE_7
    0, // SPECIAL_META_TILE_8
    0, // SPECIAL_META_TILE_9
    0, // SPECIAL_META_TILE_10
    0, // SPECIAL_META_TILE_11
    0, // SPECIAL_META_TILE_12
    0, // SPECIAL_META_TILE_13
    0, // SPECIAL_META_TILE_14
    0, // SPECIAL_META_TILE_15
    0, // SPECIAL_META_TILE_16
    0, // SPECIAL_META_TILE_17
    0, // SPECIAL_META_TILE_18
    0, // SPECIAL_META_TILE_19
    VVV_241, // SPECIAL_META_TILE_20
    0, // SPECIAL_META_TILE_21
    0, // SPECIAL_META_TILE_22
    VVV_83, // SPECIAL_META_TILE_23
    VVV_242, // SPECIAL_META_TILE_24
    VVV_243, // SPECIAL_META_TILE_25
    0, // SPECIAL_META_TILE_26
    0, // SPECIAL_META_TILE_27
    0, // SPECIAL_META_TILE_28
    0, // SPECIAL_META_TILE_29
    0, // SPECIAL_META_TILE_30
    0, // SPECIAL_META_TILE_31
    VVV_240, // SPECIAL_META_TILE_32
    0, // SPECIAL_META_TILE_33
    0, // SPECIAL_META_TILE_34
    0, // SPECIAL_META_TILE_35
    0, // SPECIAL_META_TILE_36
    0, // SPECIAL_META_TILE_37
    0, // SPECIAL_META_TILE_38
    0, // SPECIAL_META_TILE_39
    0, // SPECIAL_META_TILE_40
    0, // SPECIAL_META_TILE_41
    0, // SPECIAL_META_TILE_42
    0, // SPECIAL_META_TILE_43
    0, // SPECIAL_META_TILE_44
    0, // SPECIAL_META_TILE_45
    0, // SPECIAL_META_TILE_46
    0, // SPECIAL_META_TILE_47
    0, // SPECIAL_META_TILE_48
    0, // SPECIAL_META_TILE_49
    0, // SPECIAL_META_TILE_50
    0, // SPECIAL_META_TILE_51
    0, // SPECIAL_META_TILE_52
    0, // SPECIAL_META_TILE_53
    0, // SPECIAL_META_TILE_54
    0, // SPECIAL_META_TILE_55
    0, // SPECIAL_META_TILE_56
    0, // SPECIAL_META_TILE_57
    0, // SPECIAL_META_TILE_58
    0, // SPECIAL_META_TILE_59
    0, // SPECIAL_META_TILE_60
    0, // SPECIAL_META_TILE_61
    0, // SPECIAL_META_TILE_62
    0, // SPECIAL_META_TILE_63
    VVV_61, // SPECIAL_META_TILE_64
    VVV_61, // SPECIAL_META_TILE_65
    VVV_61, // SPECIAL_META_TILE_66
    VVV_61, // SPECIAL_META_TILE_67
    VVV_61, // SPECIAL_META_TILE_68
    VVV_61, // SPECIAL_META_TILE_69
    VVV_61, // SPECIAL_META_TILE_70
    VVV_61, // SPECIAL_META_TILE_71
    VVV_61, // SPECIAL_META_TILE_72
    0, // SPECIAL_META_TILE_73
    0, // SPECIAL_META_TILE_74
    0, // SPECIAL_META_TILE_75
    0, // SPECIAL_META_TILE_76
    0, // SPECIAL_META_TILE_77
    0, // SPECIAL_META_TILE_78
    0, // SPECIAL_META_TILE_79
    0, // SPECIAL_META_TILE_80
    VVV_58, // SPECIAL_META_TILE_81
    0, // SPECIAL_META_TILE_82
    0, // SPECIAL_META_TILE_83
    0, // SPECIAL_META_TILE_84
    0, // SPECIAL_META_TILE_85
    0, // SPECIAL_META_TILE_86
    0, // SPECIAL_META_TILE_87
    0, // SPECIAL_META_TILE_88
    0, // SPECIAL_META_TILE_89
    0, // SPECIAL_META_TILE_90
    0, // SPECIAL_META_TILE_91
    0, // SPECIAL_META_TILE_92
    0, // SPECIAL_META_TILE_93
    0, // SPECIAL_META_TILE_94
    0, // SPECIAL_META_TILE_95
    0, // SPECIAL_META_TILE_96
    0, // SPECIAL_META_TILE_97
    0, // SPECIAL_META_TILE_98
    0, // SPECIAL_META_TILE_99
    0, // SPECIAL_META_TILE_100
    0, // SPECIAL_META_TILE_101
    0, // SPECIAL_META_TILE_102
    0, // SPECIAL_META_TILE_103
    0, // SPECIAL_META_TILE_104
    VVV_40, // SPECIAL_META_TILE_105
    0, // SPECIAL_META_TILE_106
    0, // SPECIAL_META_TILE_107
    0, // SPECIAL_META_TILE_108
    0, // SPECIAL_META_TILE_109
    0, // SPECIAL_META_TILE_110
    0, // SPECIAL_META_TILE_111
    0, // SPECIAL_META_TILE_112
    0, // SPECIAL_META_TILE_113
    0, // SPECIAL_META_TILE_114
    0, // SPECIAL_META_TILE_115
    0, // SPECIAL_META_TILE_116
    VVV_18, // SPECIAL_META_TILE_117
    VVV_18, // SPECIAL_META_TILE_118
    VVV_18, // SPECIAL_META_TILE_119
    VVV_18, // SPECIAL_META_TILE_120
    VVV_18, // SPECIAL_META_TILE_121
    VVV_18, // SPECIAL_META_TILE_122
    VVV_18, // SPECIAL_META_TILE_123
    VVV_18, // SPECIAL_META_TILE_124
    0, // SPECIAL_META_TILE_125
    VVV_116, // SPECIAL_META_TILE_126
    VVV_116, // SPECIAL_META_TILE_127
    VVV_41, // SPECIAL_META_TILE_128
    0, // SPECIAL_META_TILE_129
    VVV_35, // SPECIAL_META_TILE_130
    VVV_41, // SPECIAL_META_TILE_131
    VVV_41, // SPECIAL_META_TILE_132
    VVV_41, // SPECIAL_META_TILE_133
    VVV_41, // SPECIAL_META_TILE_134
    VVV_41, // SPECIAL_META_TILE_135
    VVV_41, // SPECIAL_META_TILE_136
    VVV_16, // SPECIAL_META_TILE_137
    VVV_16, // SPECIAL_META_TILE_138
    VVV_16, // SPECIAL_META_TILE_139
    VVV_16, // SPECIAL_META_TILE_140
    VVV_41, // SPECIAL_META_TILE_141
    VVV_80, // SPECIAL_META_TILE_142
    VVV_81, // SPECIAL_META_TILE_143
    0, // SPECIAL_META_TILE_144
    VVV_15, // SPECIAL_META_TILE_145
    0, // SPECIAL_META_TILE_146
    0, // SPECIAL_META_TILE_147
    0, // SPECIAL_META_TILE_148
    0, // SPECIAL_META_TILE_149
    0, // SPECIAL_META_TILE_150
    };

// collisionData for specialMetaTile
const u8 gUnk_080B79A7[] = {
    29, // SPECIAL_META_TILE_0
    0, // SPECIAL_META_TILE_1
    0, // SPECIAL_META_TILE_2
    0, // SPECIAL_META_TILE_3
    0, // SPECIAL_META_TILE_4
    0, // SPECIAL_META_TILE_5
    15, // SPECIAL_META_TILE_6
    0, // SPECIAL_META_TILE_7
    0, // SPECIAL_META_TILE_8
    0, // SPECIAL_META_TILE_9
    0, // SPECIAL_META_TILE_10
    15, // SPECIAL_META_TILE_11
    0, // SPECIAL_META_TILE_12
    0, // SPECIAL_META_TILE_13
    0, // SPECIAL_META_TILE_14
    0, // SPECIAL_META_TILE_15
    0, // SPECIAL_META_TILE_16
    0, // SPECIAL_META_TILE_17
    0, // SPECIAL_META_TILE_18
    0, // SPECIAL_META_TILE_19
    0, // SPECIAL_META_TILE_20
    0, // SPECIAL_META_TILE_21
    0, // SPECIAL_META_TILE_22
    23, // SPECIAL_META_TILE_23
    40, // SPECIAL_META_TILE_24
    40, // SPECIAL_META_TILE_25
    40, // SPECIAL_META_TILE_26
    15, // SPECIAL_META_TILE_27
    0, // SPECIAL_META_TILE_28
    0, // SPECIAL_META_TILE_29
    0, // SPECIAL_META_TILE_30
    0, // SPECIAL_META_TILE_31
    32, // SPECIAL_META_TILE_32
    0, // SPECIAL_META_TILE_33
    15, // SPECIAL_META_TILE_34
    3, // SPECIAL_META_TILE_35
    5, // SPECIAL_META_TILE_36
    10, // SPECIAL_META_TILE_37
    12, // SPECIAL_META_TILE_38
    1, // SPECIAL_META_TILE_39
    2, // SPECIAL_META_TILE_40
    4, // SPECIAL_META_TILE_41
    8, // SPECIAL_META_TILE_42
    15, // SPECIAL_META_TILE_43
    5, // SPECIAL_META_TILE_44
    10, // SPECIAL_META_TILE_45
    69, // SPECIAL_META_TILE_46
    68, // SPECIAL_META_TILE_47
    0, // SPECIAL_META_TILE_48
    0, // SPECIAL_META_TILE_49
    15, // SPECIAL_META_TILE_50
    0, // SPECIAL_META_TILE_51
    0, // SPECIAL_META_TILE_52
    0, // SPECIAL_META_TILE_53
    15, // SPECIAL_META_TILE_54
    0, // SPECIAL_META_TILE_55
    0, // SPECIAL_META_TILE_56
    0, // SPECIAL_META_TILE_57
    0, // SPECIAL_META_TILE_58
    15, // SPECIAL_META_TILE_59
    0, // SPECIAL_META_TILE_60
    0, // SPECIAL_META_TILE_61
    15, // SPECIAL_META_TILE_62
    0, // SPECIAL_META_TILE_63
    1, // SPECIAL_META_TILE_64
    3, // SPECIAL_META_TILE_65
    2, // SPECIAL_META_TILE_66
    5, // SPECIAL_META_TILE_67
    15, // SPECIAL_META_TILE_68
    10, // SPECIAL_META_TILE_69
    4, // SPECIAL_META_TILE_70
    12, // SPECIAL_META_TILE_71
    8, // SPECIAL_META_TILE_72
    71, // SPECIAL_META_TILE_73
    15, // SPECIAL_META_TILE_74
    0, // SPECIAL_META_TILE_75
    0, // SPECIAL_META_TILE_76
    0, // SPECIAL_META_TILE_77
    0, // SPECIAL_META_TILE_78
    0, // SPECIAL_META_TILE_79
    15, // SPECIAL_META_TILE_80
    15, // SPECIAL_META_TILE_81
    3, // SPECIAL_META_TILE_82
    5, // SPECIAL_META_TILE_83
    0, // SPECIAL_META_TILE_84
    13, // SPECIAL_META_TILE_85
    12, // SPECIAL_META_TILE_86
    11, // SPECIAL_META_TILE_87
    10, // SPECIAL_META_TILE_88
    0, // SPECIAL_META_TILE_89
    15, // SPECIAL_META_TILE_90
    15, // SPECIAL_META_TILE_91
    15, // SPECIAL_META_TILE_92
    15, // SPECIAL_META_TILE_93
    15, // SPECIAL_META_TILE_94
    15, // SPECIAL_META_TILE_95
    15, // SPECIAL_META_TILE_96
    15, // SPECIAL_META_TILE_97
    80, // SPECIAL_META_TILE_98
    7, // SPECIAL_META_TILE_99
    11, // SPECIAL_META_TILE_100
    13, // SPECIAL_META_TILE_101
    14, // SPECIAL_META_TILE_102
    15, // SPECIAL_META_TILE_103
    15, // SPECIAL_META_TILE_104
    39, // SPECIAL_META_TILE_105
    15, // SPECIAL_META_TILE_106
    15, // SPECIAL_META_TILE_107
    16, // SPECIAL_META_TILE_108
    17, // SPECIAL_META_TILE_109
    18, // SPECIAL_META_TILE_110
    19, // SPECIAL_META_TILE_111
    0, // SPECIAL_META_TILE_112
    0, // SPECIAL_META_TILE_113
    15, // SPECIAL_META_TILE_114
    15, // SPECIAL_META_TILE_115
    0, // SPECIAL_META_TILE_116
    1, // SPECIAL_META_TILE_117
    2, // SPECIAL_META_TILE_118
    3, // SPECIAL_META_TILE_119
    4, // SPECIAL_META_TILE_120
    5, // SPECIAL_META_TILE_121
    8, // SPECIAL_META_TILE_122
    10, // SPECIAL_META_TILE_123
    12, // SPECIAL_META_TILE_124
    15, // SPECIAL_META_TILE_125
    5, // SPECIAL_META_TILE_126
    12, // SPECIAL_META_TILE_127
    0, // SPECIAL_META_TILE_128
    0, // SPECIAL_META_TILE_129
    95, // SPECIAL_META_TILE_130
    39, // SPECIAL_META_TILE_131
    103, // SPECIAL_META_TILE_132
    104, // SPECIAL_META_TILE_133
    105, // SPECIAL_META_TILE_134
    106, // SPECIAL_META_TILE_135
    107, // SPECIAL_META_TILE_136
    49, // SPECIAL_META_TILE_137
    50, // SPECIAL_META_TILE_138
    58, // SPECIAL_META_TILE_139
    60, // SPECIAL_META_TILE_140
    35, // SPECIAL_META_TILE_141
    43, // SPECIAL_META_TILE_142
    43, // SPECIAL_META_TILE_143
    5, // SPECIAL_META_TILE_144
    34, // SPECIAL_META_TILE_145
    1, // SPECIAL_META_TILE_146
    2, // SPECIAL_META_TILE_147
    4, // SPECIAL_META_TILE_148
    8, // SPECIAL_META_TILE_149
    12, // SPECIAL_META_TILE_150
    };

const u16 gUnk_080B7A3E[] = {
    1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1,  0, 0,  0, 0, 0, 0, 0,   0, 0, 0,  0, 0, 0, 0, 0, 1, 0, 0, 0,
    0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1,  1, 1,  1, 1, 1, 0, 0,   0, 0, 0,  0, 1, 0, 0, 0, 0, 0, 0, 0,
    1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,  1, 0,  0, 0, 0, 0, 129, 1, 1, 1,  1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 16, 0, 64, 0, 3, 3, 3, 3,   0, 0, 0,  1, 0, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0,  0, 1,  1, 1, 1, 0, 0,   0, 0, 34, 0, 0, 0, 0, 0,
}; // TODO no need to store this in an u16?
// TODO figure out type from arm_sub_080B1B84 and arm_sub_080B1BA4, also related to specialMetaTiles

void PlayerItemCellOverwriteSet(Entity* this) {
    static const s8 gUnk_080B7B6C[] = { 0x0, -0x10, 0x10, 0x0, 0x0, 0x10, -0x10, 0x0 };
    u32 tmp;
    Entity* player = &gPlayerEntity;

    if (this->action == 0) {
        this->field_0x6c.HWORD =
            GetMetaTileType(TILE(player->x.HALF.HI + gUnk_080B7B6C[player->animationState & 0xe],
                             player->y.HALF.HI + gUnk_080B7B6C[(player->animationState & 0xe) + 1]),
                        this->collisionLayer);
        this->action++;
    }
    gPlayerState.mobility |= 0x80;
    tmp = gInput.heldKeys & R_BUTTON;
    if ((gInput.heldKeys & A_BUTTON) != 0) {
        if ((R_BUTTON & gInput.newKeys) != 0) {
            this->field_0x6c.HWORD =
                GetMetaTileType(TILE(player->x.HALF.HI + gUnk_080B7B6C[player->animationState & 0xe],
                                 player->y.HALF.HI + gUnk_080B7B6C[(player->animationState & 0xe) + 1]),
                            this->collisionLayer);
        }
        if ((gInput.heldKeys & R_BUTTON) != 0) {
            player->iframes = 2;
        } else {
            if ((gInput.newKeys & DPAD_RIGHT) != 0) {
                this->field_0x6c.HWORD--;
            }
            if ((gInput.newKeys & DPAD_LEFT) != 0) {
                this->field_0x6c.HWORD++;
            }
            if ((gInput.heldKeys & (DPAD_LEFT | DPAD_RIGHT)) != 0) {
                if (++this->subtimer > 0x1e) {
                    this->subtimer = 30;
                    if ((gInput.heldKeys & DPAD_RIGHT) != 0) {
                        this->field_0x6c.HWORD--;
                    }
                    if ((gInput.heldKeys & DPAD_LEFT) != 0) {
                        this->field_0x6c.HWORD++;
                    }
                }
            } else {
                this->subtimer = 0;
            }
        }
    } else {
        sub_0807B7D8(this->field_0x6c.HWORD,
                     TILE(player->x.HALF.HI + gUnk_080B7B6C[player->animationState & 0xe],
                          player->y.HALF.HI + gUnk_080B7B6C[(player->animationState & 0xe) + 1]),
                     this->collisionLayer);
        gPlayerState.mobility &= ~0x80;
        DeleteThisEntity();
    }
    if ((gInput.heldKeys & B_BUTTON) != 0) {
        sub_0807B7D8(this->field_0x6c.HWORD,
                     TILE(player->x.HALF.HI + gUnk_080B7B6C[0], player->y.HALF.HI + gUnk_080B7B6C[1]),
                     this->collisionLayer);
        sub_0807B7D8(this->field_0x6c.HWORD,
                     TILE(player->x.HALF.HI + gUnk_080B7B6C[2], player->y.HALF.HI + gUnk_080B7B6C[3]),
                     this->collisionLayer);
        sub_0807B7D8(this->field_0x6c.HWORD,
                     TILE(player->x.HALF.HI + gUnk_080B7B6C[4], player->y.HALF.HI + gUnk_080B7B6C[5]),
                     this->collisionLayer);
        sub_0807B7D8(this->field_0x6c.HWORD,
                     TILE(player->x.HALF.HI + gUnk_080B7B6C[6], player->y.HALF.HI + gUnk_080B7B6C[7]),
                     this->collisionLayer);
    }
}
