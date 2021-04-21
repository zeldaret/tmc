#include "entity.h"
#include "player.h"
#include "screen.h"
#include "createObject.h"
#include "audio.h"
#include "functions.h"

typedef struct {
    s8 h, v;
} PACKED PosOffset;

extern void (*const gUnk_080D1604[])(Entity*);
extern PosOffset gUnk_080D1620[4];

extern void sub_08044E74(Entity*, u32);

void VaatiBall(Entity* this) {
    Entity* parent;

    parent = this->parent;
    if (this->action && this->action != 3) {
        this->x.WORD += parent->x.WORD - *(int*)&parent->field_0x78;
        this->y.WORD += parent->y.WORD - parent->field_0x7c.WORD;
    }

    gUnk_080D1604[this->action](this);

    if (this->cutsceneBeh.HALF.LO) {
        this->currentHealth = -1;
    }

    if (this->bitfield & 0x80) {
        if ((this->bitfield & 0x3f) == 0 && this->action == 6) {
            ModHealth(-2);
        }

        if (this->currentHealth < 0xfd) {
            this->spriteSettings.b.draw = 0;
            this->flags &= 0x7f;
            this->currentHealth = -1;
            parent->field_0x80.HALF.LO--;
            CreateDust(this);
            SoundReq(SFX_1C3);
        }
    }
}

void sub_0804468C(Entity* this) {
    PosOffset* off;

    this->collisionLayer = 3;
    this->spriteRendering.b3 = 2;
    this->spritePriority.b0 = 5;
    this->cutsceneBeh.HALF.LO = 0;
    switch (this->type) {
        case 0:
            this->action = 1;
            this->actionDelay = 1;
            this->direction = (this->field_0x78.HALF.HI * 8) & 0x1f;
            this->field_0x78.HALF.LO = 0;
            this->field_0x82.HALF.HI = 0;
            this->spriteSettings.b.draw = 0;
            off = &gUnk_080D1620[this->field_0x78.HALF.HI & 3];
            PositionRelative(this->parent, this, off->h << 0x10, (off->v - 0x10) * 0x10000);
            this->height.HALF.HI = this->parent->height.HALF.HI;
            InitAnimationForceUpdate(this, 0);
            break;
        case 1:
            this->action = 3;
            this->field_0x74.HALF.LO = 0;
            this->field_0x82.HALF.HI = 1;
            this->spriteSettings.b.draw = 1;
            InitAnimationForceUpdate(this, 1);
            break;
    }
}

void sub_0804474C(Entity* this) {
    switch (this->parent->action) {
        case 3:
            this->action = 3;
            this->field_0x74.HALF.LO = 0;
            this->actionDelay = 0;
            break;
        case 5:
            this->action = 5;
            this->field_0x74.HALF.LO = 0;
            this->field_0xf = 1;
            break;
        case 6:
            this->action = 6;
            this->field_0x74.HALF.LO = 0;
            this->field_0xf = 32;
            break;
        case 2:
            this->action = 2;
            this->field_0x74.HALF.LO = 0;
            this->damageType = 0;
            break;
    }

    if (this->action != 1) {
        UpdateAnimationSingleFrame(this);
    } else {
        if (--this->actionDelay == 0) {
            this->actionDelay = 2;
            this->direction++;
            this->direction &= 0x1f;
        }
        sub_0806F69C(this);
        UpdateAnimationSingleFrame(this);
    }
}

void sub_080447E0(Entity* this) {
    Entity* vaati = this->parent;

    if (vaati->action == 1) {
        this->action = 1;
        this->damageType = 43;
        sub_08044E74(this, 0);
        if (this->flags & 0x80)
            this->spriteSettings.b.draw = 1;
    } else {
        this->field_0x76.HALF.HI++;
        this->field_0x76.HALF.HI &= 7;
        if (this->flags & 0x80) {
            if (this->field_0x76.HALF.HI & 1) {
                this->spriteSettings.b.draw = 1;
            } else {
                this->spriteSettings.b.draw = 0;
            }
        }

        if (vaati->field_0x74.HALF.LO == 2) {
            sub_08044E74(this, 2);
        }
    }
}

extern void sub_08044DEC();

void sub_08044868(Entity* this) {
    Entity* vaati = this->parent;

    switch (vaati->field_0x74.HALF.LO) {
        case 0xfe:
            if (this->field_0x82.HALF.HI && this->field_0x74.HALF.LO == 2)
                DeleteThisEntity();
            break;
        case 0xff:
            if (this->field_0x82.HALF.HI) {
                switch (this->field_0x74.HALF.LO) {
                    case 0:
                        if (this->frames.all & 0x80) {
                            this->field_0x74.HALF.LO = 1;
                            this->direction = sub_080045B4(this, vaati->x.HALF.HI, vaati->y.HALF.HI - 0x10);
                            this->speed = 0x180;
                        }
                        break;
                    case 1:
                        sub_0806F69C(this);
                        if (sub_0806FCB8(this, vaati->x.HALF.HI, vaati->y.HALF.HI - 0x10, 0xc)) {
                            this->field_0x74.HALF.LO++;
                            this->x.HALF.HI = vaati->x.HALF.HI;
                            this->y.HALF.HI = vaati->y.HALF.HI - 0x10;
                            vaati->actionDelay++;
                        } else {
                            this->direction = sub_080045B4(this, vaati->x.HALF.HI, vaati->y.HALF.HI - 0x10);
                        }
                        break;
                }
            }
            break;
        case 1:
            if (this->field_0x82.HALF.HI == 0) {
                this->field_0x82.HALF.HI++;
                this->spriteSettings.b.draw = 1;
            }
            sub_08044DEC(this);
            if (*(u8*)&vaati->field_0x86 > 1) {
                u8 draw = this->spriteSettings.b.draw;
                if (draw == 1 && this->cutsceneBeh.HALF.LO == 0) {
                    vaati = sub_0804A98C(this, 0x18, 0);
                    if (vaati) {
                        vaati->type2 = 1;
                        vaati->parent = this;
                        this->cutsceneBeh.HALF.LO = 1;
                        this->damageType = 0;
                    }
                }
            }
            this->actionDelay = 32;
            break;
        case 2:
            if (this->actionDelay)
                if (--this->actionDelay < 0x11)
                    sub_0806F69C(this);
            break;
        case 3: {
            u8 draw;

            sub_08044E74(this, 1);
            draw = this->spriteSettings.b.draw;
            if (draw == 1) {
                this->flags |= 0x80;
            } else {
                this->flags &= 0x7f;
            }
            break;
        }
    }
    UpdateAnimationSingleFrame(this);
}

void sub_080449F8(Entity* this) {
    Entity* vaati = this->parent;

    UpdateAnimationSingleFrame(this);
    if (vaati->action == 1) {
        sub_08044E74(this, 0);
        return;
    }

    switch (vaati->field_0x74.HALF.LO) {
        case 0:
            sub_0806F69C(this);
            if (--this->actionDelay)
                break;

            if (this->field_0x78.HALF.LO == 0) {
                this->field_0x78.HALF.LO++;
                this->speed = 640;
            }

            this->actionDelay = 4;
            this->direction++;
            this->direction &= 0x1f;
            if (vaati->field_0x80.HALF.LO == 0)
                vaati->field_0x74.HALF.LO = 1;
            break;
        case 1:
            switch (this->actionDelay) {
                case 2:
                    if (vaati->field_0x80.HALF.LO == 0) {
                        this->field_0xf = 0;
                        sub_08044E74(this, 0);
                    }
                    break;
                case 1:
                    this->direction = (this->direction + 0x10) & 0x1f;
                    sub_0806F69C(this);
                    this->direction = (this->direction + 0x10) & 0x1f;
                    this->actionDelay = 2;
                    break;
                case 3:
                    sub_0806F69C(this);
                    this->actionDelay = 2;
                    break;
                case 4:
                    sub_0806F69C(this);
                    sub_0806F69C(this);
                    this->actionDelay = 2;
                    break;
            }
            break;
        case 2:
            if (this->field_0x74.HALF.LO == 0) {
                u8 draw;

                this->field_0x74.HALF.LO++;
                draw = this->spriteSettings.b.draw;
                if (draw) {
                    vaati = sub_0804A98C(this, 0x1c, 0);
                    if (vaati) {
                        vaati->y.HALF.HI += 4;
                        vaati->parent = this;
                        this->attachedEntity = vaati;
                    }
                }
            }
            break;
        case 3:
            if (this->field_0xf) {
                this->field_0xf = 0;
            }
            break;
    }
}

void sub_08044B04(Entity* this) {
    Entity* vaati = this->parent;

    UpdateAnimationSingleFrame(this);
    if (vaati->action == 1) {
        sub_08044E74(this, 0);
        this->actionDelay = 32;
        return;
    }

    switch (vaati->field_0x74.HALF.LO) {
        case 0:
            sub_0806F69C(this);
            switch (this->field_0x74.HALF.LO) {
                case 0:
                    if (--this->actionDelay == 0) {
                        this->actionDelay = this->field_0x78.HALF.LO ? 4 : 2;
                        this->direction++;
                        this->direction &= 0x1f;
                    }
                    if (--this->field_0xf == 0) {
                        if (this->actionDelay != 2) {
                            this->field_0xf = 1;
                        } else {
                            if (++this->field_0x78.HALF.LO > 2) {
                                this->field_0x74.HALF.LO++;
                                this->field_0x78.HALF.LO = 1;
                                this->actionDelay = 4;
                                this->field_0xf = 0;
                            } else {
                                this->field_0xf = 32;
                            }

                            this->speed = this->field_0x78.HALF.LO ? 640 : 1280;
                        }
                    }
                    break;
                case 1:
                    if (--this->actionDelay == 0) {
                        this->actionDelay = 6;
                        this->direction = (this->direction + 1) & 0x1f;
                        if (++this->field_0xf == 0x30) {
                            u32 direction = sub_080045B4(this, vaati->x.HALF.HI, vaati->y.HALF.HI - 0x10);
                            this->speed = 0;
                            this->direction = (direction + 16) & 0x1f;
                            this->actionDelay = 16;
                            this->field_0xf = 16;
                            this->field_0x74.HALF.LO++;
                        }
                    }
                    break;
                case 2:
                    if (this->field_0xf == 0) {
                        switch (--this->actionDelay) {
                            case 12:
                                this->speed = 1280;
                                break;
                            case 0:
                                this->field_0x74.HALF.LO++;
                                this->direction = sub_080045B4(this, vaati->x.HALF.HI, vaati->y.HALF.HI - 0x10);
                                this->speed = 0;
                                this->actionDelay = 4;
                                this->field_0xf = 16;
                                break;
                            case 4:
                                this->speed = 640;
                                break;
                        }
                    } else {
                        if (--this->field_0xf == 0)
                            this->speed = 640;
                    }
                    break;
                case 3:
                    if (this->field_0xf) {
                        if (--this->field_0xf == 0)
                            this->speed = 640;
                    } else {
                        if (this->actionDelay) {
                            if (--this->actionDelay == 0) {
                                this->speed = 1280;
                                SoundReq(SFX_14F);
                            }
                        }
                        if (this->field_0x78.HALF.HI == 3)
                            if (sub_0806FCB8(this, vaati->x.HALF.HI, vaati->y.HALF.HI - 0x10, 0xc))
                                vaati->actionDelay++;
                        this->direction = sub_080045B4(this, vaati->x.HALF.HI, vaati->y.HALF.HI - 0x10);
                        return;
                    }
                    break;
            }
            break;
        case 1:
            switch (this->field_0x74.HALF.LO) {
                case 3:
                    this->field_0x74.HALF.LO = 1;
                    this->actionDelay = 80;
                    this->flags &= 0x7f;
                    PositionRelative(vaati, this, 0, -0x100000);
                    if (this->field_0xf)
                        this->spriteSettings.b.draw = 0;
                    break;
                case 1:
                    if (--this->actionDelay == 0) {
                        this->field_0x74.HALF.LO = 0;
                        this->actionDelay = 32;
                        this->field_0xf = 4;
                    }
                    break;
            }
            break;
        case 2:
            /* ... */
            break;
        case 3:
            switch (this->field_0x74.HALF.LO) {
                case 0:
                    if (this->field_0xf) {
                        if (--this->field_0xf == 0) {
                            sub_08044DEC(this);
                            this->field_0x74.HALF.LO = 1;
                            this->actionDelay = 16;
                        }
                    }
                    break;
                case 1:
                    sub_0806F69C(this);
                    if (--this->actionDelay == 0)
                        this->field_0x74.HALF.LO++;
                    break;
                case 2: {
                    u8 draw;

                    sub_08044E74(this, 1);
                    draw = this->spriteSettings.b.draw;
                    if (draw == 1) {
                        this->flags |= 0x80;
                    } else {
                        this->flags &= 0x7f;
                    }
                    vaati->actionDelay++;
                    break;
                }
            }
            break;
    }
}

extern u8 gUnk_080D1628[4][4];

void sub_08044DEC(Entity* this) {
    u32 off;

    if (this->parent->field_0x80.HALF.LO > this->field_0x78.HALF.HI) {
        this->spriteSettings.b.draw = 1;
        this->currentHealth = -1;
    } else {
        this->spriteSettings.b.draw = 0;
    }
    this->flags &= 0x7f;
    this->field_0x78.HALF.LO = 0;
    this->speed = 0x300;
    off = this->parent->field_0x80.HALF.LO - 1;
    this->direction = gUnk_080D1628[off][this->field_0x78.HALF.HI];
    PositionRelative(this->parent, this, 0, -0x100000);
}

void sub_08044E74(Entity* this, u32 state) {
    this->action = 1;
    this->field_0x74.HALF.LO = 0;

    switch (state) {
        case 2:
            this->action = 2;
            this->direction += 0x18;
            this->direction &= 0x1f;
            PositionRelative(this->parent, this, 0, -0x100000);
            this->speed = 12288;
            sub_0806F69C(this);
            this->direction += 0x8;
            this->direction &= 0x1f;
            this->speed = 1280;
            sub_0806F69C(this);
            break;
        case 1:
            this->direction = (this->direction + 8) & 0x1f;
            break;
        case 0:
            if (this->field_0x78.HALF.LO) {
                switch (this->actionDelay) {
                    case 3 ... 4:
                        do {
                            sub_0806F69C(this);
                        } while (this->actionDelay-- != 3);
                        break;
                    case 1:
                        this->direction = (this->direction + 0x10) & 0x1f;
                        sub_0806F69C(this);
                        this->direction = (this->direction + 0x10) & 0x1f;
                        break;
                }
            } else {
                if (this->actionDelay == 2) {
                    sub_0806F69C(this);
                }
            }
            break;
    }
    this->actionDelay = 1;
    this->field_0x78.HALF.LO = 0;
    this->speed = 1280;
}
