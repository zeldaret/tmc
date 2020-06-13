#include "global.h"
#include "link.h"

extern u16 gWalletSizes[4];

void ModRupees(s32 rupeeDelta)

{
    s32 newRupeeCount;
    Stats *s = &gStats;

    newRupeeCount = s->rupees + rupeeDelta;
    if (newRupeeCount < 0) {
        newRupeeCount = 0;
    }
    else {
        if (newRupeeCount > gWalletSizes[s->walletType * 2]) {
            newRupeeCount = gWalletSizes[s->walletType * 2];
        }
    }
    s->rupees = newRupeeCount;
}