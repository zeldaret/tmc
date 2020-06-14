#include "global.h"
#include "entity.h"
#include "textbox.h"
#include "link.h"

extern void sub_0806ED78(Entity*);
extern u32 sub_0801E99C(Entity*);
extern void LoadAnimation(Entity*, u32);
extern void sub_080042B8(Entity*);
extern void sub_08065AA4(Entity*);
extern u32 UpdateFuseInteraction(void);
extern void ShowNPCDialogue(Entity*, u64*);
extern void sub_08078778(Entity*);
extern void sub_080787A8(Entity*, u32);
extern void sub_0806F118(Entity*);
extern void sub_0805E3A0(Entity*, u8);
extern u32 sub_080045C4(Entity*, Entity*);
extern u32 sub_0806F5A4(void);
extern void sub_080791D0(void);
extern void PlaySFX(u32);

extern TextBox gTextBox;
extern LinkState gLinkState;
extern Entity gLinkEntity;

void sub_08065A64(Entity* this);

extern void (*gUnk_0811006C[])(Entity*);
extern u64 gUnk_08110080[];

void sub_08065990(Entity* this) {
    gUnk_0811006C[this->action](this);
    sub_08065A64(this);
    sub_0806ED78(this);
}

void sub_080659B8(Entity* this) {
    this->action = 1;
    this->spriteSettings.b.ss0 = 1;
    this->animationState = 6;
    this->field_0x69 = -1;
    this->field_0x68 = sub_0801E99C(this);
    LoadAnimation(this, this->animationState / 2);
}

void sub_080659F0(Entity* this) {
    sub_080042B8(this);
    sub_08065AA4(this);
}

void sub_08065A00(Entity* this) {
    sub_080042B8(this);
    sub_08065AA4(this);
}

void sub_08065A10(Entity* this) {
    if ((gTextBox.doTextBox & 0x7F) == 0) {
        this->action = 1;
        LoadAnimation(this, this->animationState / 2);
    }
}

void sub_08065A34(Entity* this) {
    if (UpdateFuseInteraction() != 0) {
        this->action = 1;
        LoadAnimation(this, this->animationState / 2);
    }
}

void sub_08065A50(Entity* this) {
    ShowNPCDialogue(this, &gUnk_08110080[this->entityType.parameter1]);
}

void sub_08065A64(Entity* this) {
    u32 uVar2;

    uVar2 = -(gLinkState.flags.all & 0x80) >> 0x1f;
    if (uVar2 != this->field_0x69) {
        if (uVar2 == 0) {
            sub_08078778(this);
        } else {
            sub_080787A8(this, this->field_0x68);
        }
    }
    this->field_0x69 = uVar2;
}

void sub_08065AA4(Entity* this) {
    if (this->interactType != 0) {
        if (gLinkState.flags.all & 0x80) {
            if (this->interactType == 2) {
                this->action = 4;
                sub_0806F118(this);
            } else {
                this->action = 3;
                sub_0805E3A0(this, 2);
                sub_08065A50(this);
            }
            sub_080045C4(this, &gLinkEntity);
            LoadAnimation(this, sub_0806F5A4());
        } else {
            sub_08065A50(this);
            sub_080791D0();
        }
        PlaySFX(0xD3);
        this->interactType = 0;
    }
}

void sub_08065B1C(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        this->spriteSettings.b.ss0 = 1;
        LoadAnimation(this, 7);
    } else {
        sub_080042B8(this);
    }
}
