#ifndef ENEMY_GYORG_H
#define ENEMY_GYORG_H

#include "enemy.h"

typedef struct {
    Entity base;
    u8 unk_68[0x8];
    u16 childrenSpawnTimer;
    u8 unk_72[0x6];
    u8 eyesVulnerable; /**< bitset of eyes currently vulnerable */
    u8 unk_79;
    u16 eyeTimer;
    u8 eyesHitFrame; /**< bitset of eyes hit this frame */
    u8 eyesHit;      /**< bitset buffer of eyes hit */
    u8 unk_7e[1];
    u8 unk_7f;
    u8 unk_80;
    u8 unk_81[1];
    u8 damageTakenCycle; /**< damage taken this cycle */
    u8 unk_83[5];
} GyorgFemaleEntity;

typedef struct {
    Entity base;
    u8 unk_68[0x20];
} GyorgFemaleEyeEntity;

typedef struct {
    Entity base;
    u8 filler[0x20];
} GyorgFemaleMouthEntity;

typedef struct {
    Entity base;
    u8 unk_68[0x8];
    u16 unk_70;
    u16 unk_72;
    u16 unk_74;
    u16 unk_76;
    u16 unk_78;
    u16 unk_7a;
    u8 unk_7c;
    u8 unk_7d;
    u16 unk_7e;
    u16 unk_80;
    u16 unk_82;
    u16 unk_84;
    u16 unk_86;
} GyorgMaleEntity;

typedef struct {
    Entity base;
    u8 unk_68[0xC];
    s16 attackOffsetX;
    s16 attackOffsetY;
    s16 attackSpeed;
    u8 attackDirection;
    u8 unk_7b;
    u8 unk_7c[0xC];
} GyorgChildEntity;

typedef struct {
    Entity base;
    u8 unk_68[4];
    u16 unk_6c;
    u16 timer;
    u16 unk_70;
    u16 unk_72;
    u8 unk_74;
    u8 unk_75;
    u16 unk_76;
    u16 unk_78;
    u8 unk_7a;
    u8 unk_7b;
    u16 unk_7c;
    u8 unk_7e[0xa];
} GyorgBossObjectEntity;

typedef struct {
    GyorgBossObjectEntity* boss;
    GyorgFemaleEntity* female;
    GyorgMaleEntity* male1;
    GyorgMaleEntity* male2;
    GyorgFemaleMouthEntity* mouth;
    GenericEntity* tail;
    void* unk_18[0x8];
    Coords reflectFxPos;
    u8 unk_3c;
} GyorgHeap;

extern void GyorgBossObject_SpawnChildren(u32 unk0, bool32 fromBlue, u32 animationState);

#endif
