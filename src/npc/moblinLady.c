#include "global.h"
#include "entity.h"
#include "player.h"
#include "room.h"
#include "flags.h"
#include "sprite.h"
#include "textbox.h"
#include "npc.h"
extern void sub_0807DD50();
extern void sub_0807DD94();

void MoblinLady(Entity* this) {
    if (this->action == 0) {
        this->action++;
        sub_0807DD50(this);
    } else {
        sub_0807DD94(this, 0);
    }
}
