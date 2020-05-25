#include "global.h"
#include "entity.h"
#include "stats.h"

extern Stats gStats;
extern Entity gLinkEntity;
s32 ModHealth(s32 deltaHealth)

{
    s32 newHealth;
    
    newHealth = gStats.health + deltaHealth;
    if (newHealth < 0) {
        newHealth = 0;
    }
    if (gStats.maxHealth < newHealth) {
        newHealth = (u32)gStats.maxHealth;
    }
    gStats.health = newHealth;
    gLinkEntity.currentHealth = newHealth;
    return newHealth;
}