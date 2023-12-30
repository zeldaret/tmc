/**
 * @file swordsmanNewsletter.c
 * @ingroup Objects
 *
 * @brief Swordsman Newsletter object
 */
#include "entity.h"
#include "message.h"

extern void AddInteractableCheckableObject(Entity*);
void SwordsmanNewsletter_Init(Entity*);
void SwordsmanNewsletter_Action1(Entity*);

static const Hitbox gUnk_081228A8 = { 0, 0, {}, 6, 8 };

void SwordsmanNewsletter(Entity* this) {
    static void (*const SwordsmanNewsletter_Actions[])(Entity*) = {
        SwordsmanNewsletter_Init,
        SwordsmanNewsletter_Action1,
    };
    SwordsmanNewsletter_Actions[this->action](this);
}

void SwordsmanNewsletter_Init(Entity* this) {
    this->action = 1;
    this->frameIndex = this->type;
    UpdateSpriteForCollisionLayer(this);
    this->hitbox = (Hitbox*)&gUnk_081228A8;
    AddInteractableCheckableObject(this);
}

void SwordsmanNewsletter_Action1(Entity* this) {
    static const u16 messageIndices[] = {
        TEXT_INDEX(TEXT_NEWSLETTER, 1), TEXT_INDEX(TEXT_NEWSLETTER, 2), TEXT_INDEX(TEXT_NEWSLETTER, 3),
        TEXT_INDEX(TEXT_NEWSLETTER, 4), TEXT_INDEX(TEXT_NEWSLETTER, 5), TEXT_INDEX(TEXT_NEWSLETTER, 6),
        TEXT_INDEX(TEXT_NEWSLETTER, 7), TEXT_INDEX(TEXT_NEWSLETTER, 8),
    };
    if (this->interactType != INTERACTION_NONE) {
        this->interactType = INTERACTION_NONE;
        MessageNoOverlap(messageIndices[this->type], this);
    }
}
