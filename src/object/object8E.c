/**
 * @file object8E.c
 * @ingroup Objects
 *
 * @brief Object8E object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"
#include "screen.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16 unk_68;
    /*0x6a*/ u16 unk_6a;
} Object8EEntity;

extern void sub_0805AAF0(u32);

void sub_0809B97C(Object8EEntity*, u32);
bool32 sub_0809BE78(Object8EEntity*);
void Object8E_Type0(Object8EEntity*);
void Object8E_Type1(Object8EEntity*);
void Object8E_Type2(Object8EEntity*);
void Object8E_Type3(Object8EEntity*);
void Object8E_Type4(Object8EEntity*);

void Object8E(Object8EEntity* this) {
    static void (*const Object8E_Types[])(Object8EEntity*) = {
        Object8E_Type0, Object8E_Type1, Object8E_Type2, Object8E_Type3, Object8E_Type4,
    };
    Object8E_Types[super->type](this);
}

void Object8E_Type0(Object8EEntity* this) {
    u32 tmp;
    RequestPriorityDuration(super, 0x1e);
    switch (super->action) {
        case 0:
            super->action = 1;
            super->timer = 60;
            super->subtimer = 0;
            gRoomControls.camera_target = super;
            gRoomControls.unk5 = 1;
            if (super->x.HALF.HI > gPlayerEntity.x.HALF.HI) {
                tmp = 2;
            } else {
                tmp = 6;
            }
            gPlayerEntity.animationState = tmp;
            gScreen.lcd.displayControl = (gScreen.lcd.displayControl & 0xbfff) | 0x2800;
            gScreen.controls.window0HorizontalDimensions = 0;
            gScreen.controls.window0VerticalDimensions = 0xa0;
            break;
        case 1:
            if (super->timer != 0) {
                super->timer--;
            } else {
                if (super->subtimer < 0x20) {
                    if ((gRoomTransition.frameCount & 0x1fU) == 0) {
                        SoundReq(SFX_133);
                    }
                    if ((gRoomTransition.frameCount & 3U) == 0) {
                        sub_0809B97C(this, ++super->subtimer);
                    }
                } else {
                    super->action = 2;
                    super->timer = 60;
                    gScreen.lcd.displayControl &= 0xdfff;
                    gRoomControls.camera_target = &gPlayerEntity;
                    SoundReq(SFX_134);
                }
            }
            break;
        case 2:
            if (--super->timer == 0) {
                gScreen.lcd.displayControl |= 0x4800;
                gRoomControls.unk5 = 4;
                (super->parent)->subAction = 1;
                DeleteThisEntity();
            }
            break;
    }
}

void sub_0809B97C(Object8EEntity* this, u32 param_2) {
    s32 tmp1;
    s32 tmp2;

    tmp2 = super->x.HALF.HI - gRoomControls.scroll_x;
    tmp1 = tmp2 - param_2;
    tmp2 += param_2;
    if (tmp1 < 0) {
        tmp1 = 0;
    }
    if (0xf0 < tmp1) {
        tmp1 = 0xf0;
    }
    if (tmp2 < 0) {
        tmp2 = 0;
    }
    if (0xf0 < tmp2) {
        tmp2 = 0xf0;
    }
    gScreen.controls.window0HorizontalDimensions = (tmp1 << 8) | tmp2;
}

void Object8E_Type1(Object8EEntity* this) {
    u32 tmp;

    RequestPriorityDuration(super, 0x1e);
    switch (super->action) {
        case 0:
            super->action = 1;
            super->timer = 60;
            super->subtimer = 0x20;
            gRoomControls.camera_target = super;
            gRoomControls.unk5 = 1;
            if (super->x.HALF.HI > gPlayerEntity.x.HALF.HI) {
                tmp = 2;
            } else {
                tmp = 6;
            }
            gPlayerEntity.animationState = tmp;
            gScreen.lcd.displayControl = (gScreen.lcd.displayControl & 0xbfff) | 0x2000;
            gScreen.controls.window0HorizontalDimensions = 0xf0;
            gScreen.controls.window0VerticalDimensions = 0xa0;
            break;
        case 1:
            if (super->timer != 0) {
                super->timer--;
            } else {
                if (super->subtimer != 0) {
                    if ((gRoomTransition.frameCount & 0x1fU) == 0) {
                        SoundReq(SFX_133);
                    }
                    if ((gRoomTransition.frameCount & 3U) == 0) {
                        sub_0809B97C(this, --super->subtimer);
                    }
                } else {
                    super->action = 2;
                    super->timer = 60;
                    gRoomControls.camera_target = &gPlayerEntity;
                    SoundReq(SFX_134);
                }
            }
            break;
        case 2:
            if (--super->timer == 0) {
                gRoomControls.unk5 = 4;
                gScreen.lcd.displayControl &= 0xd7ff;
                (super->parent)->subAction = 1;
                DeleteThisEntity();
            }
            break;
    }
}

void Object8E_Type2(Object8EEntity* this) {
    u32 tmp;

    RequestPriorityDuration(super, 10);
    switch (super->action) {
        case 0:
            super->action++;
            super->timer = 60;
            super->subtimer = 0;
            gRoomControls.camera_target = super;
            gRoomControls.unk5 = 1;
            if (super->x.HALF.HI > gPlayerEntity.x.HALF.HI) {
                tmp = 2;
            } else {
                tmp = 6;
            }
            gPlayerEntity.animationState = tmp;
            gScreen.controls.window0HorizontalDimensions = 0x60;
            gScreen.controls.window0VerticalDimensions = 0xa0;
            break;
        case 1:
            if (sub_0809BE78(this)) {
                if (super->timer != 0) {
                    if (--super->timer == 0) {
                        gScreen.lcd.displayControl = (gScreen.lcd.displayControl & 0xbfff) | 0x2800;
                    }
                } else {
                    if (gScreen.controls.window0HorizontalDimensions < 0xe0) {
                        if ((gRoomTransition.frameCount & 0x1fU) == 0) {
                            SoundReq(SFX_133);
                        }
                        if ((gRoomTransition.frameCount & 1U) == 0) {
                            gScreen.controls.window0HorizontalDimensions += 1;
                        }
                    } else {
                        super->action = 2;
                        super->timer = 30;
                        gScreen.lcd.displayControl = (gScreen.lcd.displayControl & 0xdfff) | 0x4800;
                        super->x.HALF.HI += 0x68;
                        super->y.HALF.HI += 0x28;
                        SoundReq(SFX_134);
                    }
                }
            }
            break;
        case 2:
            if (sub_0809BE78(this) && (--super->timer == 0)) {
                super->timer = 120;
                super->action = 3;
                SetLocalFlag(0x35);
                SoundReq(SFX_SECRET);
            }
            break;
        case 3:
            if (--super->timer == 0) {
                super->action = 4;
                gRoomControls.camera_target = &gPlayerEntity;
                gRoomControls.unk5 = 2;
            }
            break;
        case 4:
            if (sub_0809BE78(this)) {
                gRoomControls.unk5 = 4;
                (super->parent)->subAction = 1;
                SetRoomFlag(100);
                DeleteThisEntity();
            }
    }
}

void Object8E_Type3(Object8EEntity* this) {
    u32 tmp;

    RequestPriorityDuration(super, 0x1e);
    switch (super->action) {
        case 0:
            super->action = 1;
            super->timer = 60;
            super->subtimer = 0;
            gRoomControls.camera_target = super;
            gRoomControls.unk5 = 1;
            if (super->x.HALF.HI > gPlayerEntity.x.HALF.HI) {
                tmp = 2;
            } else {
                tmp = 6;
            }
            gPlayerEntity.animationState = tmp;
            gScreen.controls.window0HorizontalDimensions = 0x80f0;
            gScreen.controls.window0VerticalDimensions = 0xa0;
            super->subAction = 0x80;
            break;
        case 1:
            if (sub_0809BE78(this)) {
                if (super->timer != 0) {
                    if (--super->timer == 0) {
                        SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 8);
                        sub_0805AAF0(3);
                        gScreen.lcd.displayControl = (gScreen.lcd.displayControl & 0xbfff) | 0x2800;
                    }
                } else {
                    if (super->subAction != 0) {
                        if ((gRoomTransition.frameCount & 0x1fU) == 0) {
                            SoundReq(SFX_133);
                        }
                        if ((gRoomTransition.frameCount & 1U) == 0) {
                            super->subAction--;
                            gScreen.controls.window0HorizontalDimensions = super->subAction << 8 | 0xf0;
                        }
                    } else {
                        super->action = 2;
                        super->timer = 120;
                        gScreen.lcd.displayControl = (gScreen.lcd.displayControl & 0xdfff) | 0x4800;
                        SetLocalFlag(0x37);
                        SoundReq(SFX_134);
                    }
                }
            }
            break;
        case 2:
            if (--super->timer == 0) {
                (super->parent)->subAction = 1;
                DeleteThisEntity();
            }
            break;
    }
}

void Object8E_Type4(Object8EEntity* this) {
    u32 tmp;
    RequestPriorityDuration(super, 0x1e);
    switch (super->action) {
        case 0:
            super->action = 1;
            super->timer = 60;
            super->subtimer = 0x80;
            gRoomControls.camera_target = super;
            gRoomControls.unk5 = 1;
            if (super->x.HALF.HI > gPlayerEntity.x.HALF.HI) {
                tmp = 2;
            } else {
                tmp = 6;
            }
            gPlayerEntity.animationState = tmp;
            break;
        case 1:
            if (super->timer != 0) {
                super->timer--;
            } else {
                if (--super->subtimer != 0) {
                    if ((gRoomTransition.frameCount & 0x1fU) == 0) {
                        SoundReq(SFX_133);
                    }
                } else {
                    super->action = 2;
                    super->timer = 60;
                    gRoomControls.camera_target = &gPlayerEntity;
                    SoundReq(SFX_134);
                }
            }
            break;
        case 2:
            if (--super->timer == 0) {
                gRoomControls.unk5 = 4;
                (super->parent)->subAction = 1;
                DeleteThisEntity();
            }
    }
}

bool32 sub_0809BE78(Object8EEntity* this) {
    bool32 result = FALSE;
    if (this->unk_68 == gRoomControls.scroll_x && this->unk_6a == gRoomControls.scroll_y) {
        result = TRUE;
    }
    this->unk_68 = gRoomControls.scroll_x;
    this->unk_6a = gRoomControls.scroll_y;
    return result;
}
