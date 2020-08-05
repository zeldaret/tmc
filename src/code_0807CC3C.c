#include "global.h"
#include "entity.h"
#include "structures.h"
#include "functions.h"

void sub_080808D8(void) {
    gScreenTransition.transitionType = 0;
}

void sub_080808E4(void) {

    if (sub_08052638(gScreenTransition.areaID)) {
        gScreenTransition.transitionType = 0;
    } else {
        gScreenTransition.transitionType = 5;
    }
}

void sub_08080904(void) {
    gScreenTransition.transitionType = 1;
}

void sub_08080910(void) {
    gScreenTransition.transitionType = 1;
}