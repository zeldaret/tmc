#include "global.h"
#include "entity.h"
#include "npc.h"
#include "script.h"

void MoblinLady(Entity* this) {
    if (this->action == 0) {
        this->action++;
        sub_0807DD50(this);
    } else {
        sub_0807DD94(this, 0);
    }
}
