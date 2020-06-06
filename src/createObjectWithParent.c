#include "global.h"
#include "entity.h"

extern Entity * CreateObject();
extern void CopyPosition();

Entity * CreateObjectWithParent(Entity *parentEnt,u32 subtype,u32 param1, u32 param2)
{
    Entity *ent;
    
    ent = CreateObject(subtype, param1, param2);
    if (ent != NULL) {
        ent->parent = parentEnt;
        CopyPosition(parentEnt,ent);
    }
	
	return ent;
}