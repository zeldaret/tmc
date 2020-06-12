# Decompiling

Code starts out in `asm/`. When decompiled to C, it goes into `src/`. The goal is to decompile all the code.

Some of the code in `asm/` is handwritten assembly. It can't and shouldn't be decompiled. It's already commented, so there's no further work to do on these files.
Check `linker.ld` and ignore anything under the "handwritten assembly" section.

The rest of the `.s` files in `asm/` are fair game.

The basic decompilation process is:
* Choose a file in `asm/`, i.e. `asm/x.s`. Create a C file called `src/x.c`.
* Translate the first function in `asm/x.s` to C in `src/x.c`.
* `make`, and tweak the function until it matches.
* Clean up the code and comment.
* Repeat for each function until `asm/x.s` is empty.


# For example, let's decompile `asm/evilSpirit.s`.


## 1. Create `src/evilSpirit.c`

```c
#include "global.h"
```

`global.h` contains typedefs for GBA programming and more.
It must be the first include in the file. Other includes will assume you have included it.


## 2. Include it in the rom

Include `src/evilSpirit.c` in the rom by adding `src/evilSpirit.o` to `ld_script.ld`:
```diff
	asm/room.o(.text);
	asm/code_08080974.o(.text);
+	src/evilSpirit.o(.text);
	asm/evilSpirit.o(.text);
	asm/houseDoorExterior.o(.text);

```
Do not remove `asm/evilSpirit.o(.text)`. We want both `src/evilSpirit.c` and `asm/evilSpirit.s` in the rom.


## 3. Translate the function to C

Take the first function in `asm/evilSpirit.s`. Either comment it out or remove it, whichever is easier.

```asm
	thumb_func_start sub_08086284
sub_08086284: @ 0x08086284
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080862B4 @ =gUnk_08120668
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r4, #0
	adds r1, #0x41
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r0, #4
	ldrh r2, [r0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0805EC9C
	pop {r4, pc}
	.align 2, 0
_080862B4: .4byte gUnk_08120668
```
---

Then, start translating the code to `src/evilSpirit.c`, bit by bit:

```asm
	push {r4, lr}
	adds r4, r0, #0
```
```c
	void sub_08086284(u8 *r4) {
```
---
```asm
        add     r4, r0, #0
        ldr     r1, _080862B4 @ =gUnk_08120668
        ldrb    r0, [r4, #0xc]
        lsl     r0, r0, #0x2
        add     r0, r0, r1
        ldr     r1, [r0]
        add     r0, r4, #0
        bl      _call_via_r1
```
```c
	gUnk_08120668[*(u8 *)(r4 + 12)](r4);
```
---

---
```asm
        add     r1, r4, #0
        add     r1, r1, #0x41
        mov     r0, #0
        strb    r0, [r1]
```
```c
    *(u8 *)(r4 + 65) = 0;
```
---
```asm
        add     r0, r4, #0
        add     r0, r0, #0x76
        ldrh    r1, [r0]
        add     r0, r0, #0x4
        ldrh    r2, [r0]
        add     r0, r4, #0
        mov     r3, #0
        bl      sub_0805EC9C
```
```c
	sub_0805EC9C(r4, *(u16 *)(r4 + 118), *(u16 *)(r4 + 122), 0);
```
---
```asm
        pop     {r4, pc}
```
```c
	return;
```
The type signature of the function depends on the return type.
* `pop {r4, pc}`: `void`
* `add r0, r4, #0`
  `pop {r4, pc}`: `void`, `*`

You will need to look at the caller and the function prologue to determine the exact type if not void.

Since it only used `pop {r4, pc}`, it's probably `void`.

---

Putting it all together, we get:
```c
void sub_08086284(u8 *r4) {
{
    gUnk_08120668[*(u8 *)(r4 + 12)](r4);
    *(u8 *)(r4 + 65) = 0;
    sub_0805EC9C(r4, *(u16 *)(r4 + 118), *(u16 *)(r4 + 122), 0);
    return;
}
```


## 4. Simplify and document

This line doesn't look quite right.

```c
	gUnk_08120668[*(u8 *)(r4 + 12)](r4);
```

What is `r4`? Since this function corresponds to an entity, we should first try to assign r4 to an`Entity` struct.
You can find out what this is with `git grep`:

```sh
git grep "Entity" include/
```
```grep
include/entity.h:typedef struct Entity
```

So it's a struct called `Entity`. Let's look in `entity.h`:

```c
typedef struct Entity
{
    u32 *field_0x0;
    u32 * field_0x4;
    EntityType entityType;
    u8 action;
    u8 previousActionFlag;
    u8 parameter3;
    u8 field_0xf;
    u8 flags;
    
    ...
    
} Entity;
```
---

What's the 12th byte in this struct?
```c
    u32 *field_0x0; //0-3
    u32 * field_0x4; //4-7
    EntityType entityType; //8-11
    u8 action; //12
    u8 previousActionFlag; //13
```

---

The 12th byte belongs to `action`. We can substitute this in by replacing r4's parameter type and adding in the member names.

```c
void sub_08086284(Entity *r4) {
    gUnk_08120668[r4->action](r4);
```

Much better.

---

```c
void sub_08086284(Entity *r4) {

    gUnk_08120668[r4->action](r4);
    r4->bitfield = 0;
    sub_0805EC9C(r4, *((u16 *)&r4->heldObjectPtr + 1), r4->itemCooldown, 0);
    return;
}
```

The second of the function that is called uses an offset right in the middle of `heldObjectPtr`. Something seems wrong.
We can ignore this for now, since we can come back to that later.
Right now we are just concerned with making the function match, even if it isn't pretty.

## 5. Build

```sh
make
```
```gcc
src/evilSpirit.c: In function `sub_08086284':
src/evilSpirit.c:5: `r4' undeclared (first use in this function)
src/evilSpirit.c:5: `gUnk_08120668' undeclared (first use in this function)
src/evilSpirit.c:5: (Each undeclared identifier is reported only once for each function it appears in.)
src/evilSpirit.c:7: warning: implicit declaration of function `sub_0805EC9C'
```

We got some errors. We need to tell the compiler what `gUnk_08120668`, `r4`, and `sub_0805EC9C` are.

We know `r4` is an `Entity`, which is from `entity.h`. We can declare this above the function:
```c
#include "entity.h"
```
What about `gUnk_08120668` and `sub_0805EC9C`?
```c
extern void sub_0805EC9C();
extern (*gUnk_08120668[])(Entity *);
```
Now the compiler will look outside of this file for both of these. We don't have to set the size of `gUnk_08120668`, a pointer array, since it's size is irrelevant for now.

---

Now our file looks like this:
```c
#include "global.h"
#include "entity.h"

extern void sub_0805EC9C();
extern (*gUnk_08120668[])(Entity *);

void sub_08086284(Entity *r4) {
    gUnk_08120668[r4->action](r4);
    r4->bitfield = 0;
    sub_0805EC9C(r4, *((u16 *)&r4->heldObjectPtr + 1), r4->itemCooldown, 0);
    return;
}
```

---

Build again, and we get:
```sh
make
```
```sha1sum
tmc.gba: OK
```

This means the function matches. Congratulations!

---

If it doesn't match, you will get:
```sha1sum
tmc.gba: FAILED
sha1sum: WARNING: 1 computed checksum did NOT match
```

---

If you forgot to remove the function from `asm/evilSpirit.s`, you will get this error:
```gcc
asm/evilSpirit.o: In function `sub_08086284':
(.text+0x0): multiple definition of `sub_08086284'
src/evilSpirit.o:(.text+0x0): first defined here
```
