#ifndef GORONMERCHANTSHOPMANAGER_H
#define GORONMERCHANTSHOPMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    u8 itemActive[3];
} GoronMerchantShopManager;

#endif // GORONMERCHANTSHOPMANAGER_H
