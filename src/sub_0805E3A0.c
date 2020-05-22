#include "global.h"
#include "entity.h"

Entity * sub_0805E3A0(Entity *ent, u32 param){
	//these are bitfields
	ent->scriptedScene2 = param;
    ent->scriptedScene = param;
	return ent;
}
