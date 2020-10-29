#include "global.h"
#include "entity.h"

extern u32 GetNextFunction(Entity*);
extern u32 sub_0806F520(Entity*);
extern void sub_0806F4E8(Entity*);
extern u32 sub_0806F3E4();
extern void sub_0804A7D4(Entity*);
extern void sub_0804A720(Entity*);
extern void sub_080317F8(Entity*);
extern u32 sub_08049FA0(Entity*);
extern u32 Random();
extern u32 sub_08049EE4(Entity*);
extern void sub_0806F69C(Entity*);

extern void (*gUnk_080CE530[])(Entity*);
extern void (*gUnk_080CE548[])(Entity*);
extern void (*gUnk_080CE554[])(Entity*);

void sub_080317B4(Entity*);
void sub_080317E0(Entity*);
void sub_080317F8(Entity*);
void sub_08031840(Entity*);

extern BoundingBox gUnk_080CE560;

void SmallPesto(Entity *this)
{
  gUnk_080CE530[GetNextFunction(this)](this);
}

void sub_08031680(Entity *this)
{
  gUnk_080CE548[this->action](this);
}

void nullsub_152(){}

void sub_0803169C(Entity *this)
{
  s32 iVar1;
  
  GetNextFrame(this);
  iVar1 = sub_0806F520(this);
  if (iVar1 == 0) {
    this->action = 1;
    this->previousActionFlag = 0;
    this->flags = this->flags | 0x80;
    this->nonPlanarMovement = 0x40;
    this->field_0xf = 1;
  }
  else {
    gUnk_080CE554[this->previousActionFlag](this);
  }
}

void sub_080316DC(Entity *this)
{
  this->previousActionFlag = 1;
  this->field_0x1d = 0x3c;
}

void sub_080316E8(Entity *this)
{
    sub_0806F4E8(this);
}

void sub_080316F0(Entity *this)
{
  if (sub_0806F3E4()) {
    sub_0804A7D4(this);
  }
}

void sub_08031704(Entity *this)
{
  sub_0804A720(this);
  sub_080317F8(this);
}

void sub_08031714(Entity* entity){
    u8 newDirection;
    sub_080317B4(entity);
    if(--entity->field_0xf == 0){
        entity->field_0xf = (Random() & 0xf) + 0x10;
        if(sub_08049FA0(entity) == 0){
            if((entity->field_0xf & 1) != 0){
                entity->direction = sub_08049EE4(entity);
                goto _08031766;
            }
        }
    entity->direction += 0x18;
    entity->direction = ((Random() & 0xe) + entity->direction) & 0x1f;
    _08031766:
    sub_080317E0(entity);

    }
}

void sub_08031770(Entity* entity){
    if(entity->field_0x80.HWORD != 0){
        if(--entity->field_0x80.HWORD == 0){
            sub_08031840(entity);
        }
    }else if(entity->attachedEntity == NULL){
        entity->field_0x80.HWORD = (Random() & 0x7f) | (0x80 << 2);
    }else{
        if(entity->attachedEntity->next == NULL){
            entity->attachedEntity = NULL;
        }
    }
    return;
}

void sub_080317B4(Entity* entity){

    entity->height.HALF.HI = ((Random() & 0x30) != 0) ? -0xc : -0xd;    
    sub_0806F69C(entity);
    GetNextFrame(entity);
}


void sub_080317E0(Entity  *entity){
    entity->animationState = ((u8)(entity->direction + 2) & 0x1c) >> 2;
    InitializeAnimation(entity, entity->animationState);
}

void sub_080317F8(Entity *entity){
    u8 newDirection = Random() & 0x18;
    entity->action = 1;
    entity->height.HALF.HI = 0x0000FFF4;
    entity->collisionLayer = 1;
    entity->field_0x3c |= 0x10;
    entity->field_0x1c = 1;
    entity->direction = newDirection;
    entity->boundingBox = &gUnk_080CE560;
    sub_080317E0(entity);
    entity->actionDelay = 0;
    entity->field_0xf = 0x20;
}

void sub_08031840(Entity* entity){
    Entity *enemy = CreateEnemy(0x2d, entity->entityType.form);
    if(enemy!= NULL){
        CopyPosition(entity, enemy);
        enemy->parent = entity;
        entity->attachedEntity = enemy;
        enemy->entityType.parameter = 1;
    }
}

