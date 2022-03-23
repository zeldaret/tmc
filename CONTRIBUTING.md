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

Include `src/evilSpirit.c` in the rom by adding `src/evilSpirit.o` to `linker.ld`:
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
	bl SetAffineInfo
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
	void sub_08086284(u8* r0) {
```
---
```asm
        ldr     r1, _080862B4 @ =gUnk_08120668
        ldrb    r0, [r4, #0xc]
        lsl     r0, r0, #0x2
        add     r0, r0, r1
        ldr     r1, [r0]
        add     r0, r4, #0
        bl      _call_via_r1
```
```c
	gUnk_08120668[*(u8 *)(r0 + 0xc)](r0);
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
    *(u8 *)(r0 + 0x41) = 0;
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
        bl      SetAffineInfo
```
```c
	SetAffineInfo(r0, *(u16 *)(r0 + 0x76), *(u16 *)(r0 + 0x7a), 0);
```
---
```asm
        pop     {r4, pc}
```
```c
	return;
```
The type signature of the function depends on the return type. Return values are stored in r0,
so pay attention to how the assembly treats this register toward the end of the function.
ex:
* `add r0, r4, #0`

  `pop {r4, pc}`

The compiler chose to move a value into r0 here; the most likely explanation is that it's returning something.

You will need to look at the caller and the function prologue to determine the exact type if not void.

Since it only used `pop {r4, pc}`, it's probably `void`.

---

Putting it all together, we get:
```c
void sub_08086284(u8 *r0) {
    gUnk_08120668[*(u8 *)(r0 + 0xc)](r0);
    *(u8 *)(r0 + 0x41) = 0;
    SetAffineInfo(r0, *(u16 *)(r0 + 0x76), *(u16 *)(r0 + 0x7a), 0);
    return;
}
```


## 4. Simplify and document

This line doesn't look quite right.

```c
	gUnk_08120668[*(u8 *)(r0 + 0xc)](r0);
```

What is `r0`? Since this function corresponds to an entity, we should first try to assign r0 to an `Entity` struct.
You can find out what this is with `git grep`:

```sh
git grep "Entity" include/
```
```grep
include/entity.h:typedef struct Entity
```

So it's a struct called `Entity`. Let's look in `entity.h`:

```c
typedef struct Entity_ {
    /*0x00*/ struct Entity_* prev;
    /*0x04*/ struct Entity_* next;
    /*0x08*/ u8 kind;
    /*0x09*/ u8 id;
    /*0x0a*/ u8 type;
    /*0x0b*/ u8 type2;
    /*0x0c*/ u8 action;
    /*0x0d*/ u8 subAction;
    ...
} Entity;
```
---

What's the 12th byte in this struct?
```c
    /*0x00*/ struct Entity_* prev;
    /*0x04*/ struct Entity_* next;
    ...
    /*0x0c*/ u8 action; <-
```

---

The 12th byte belongs to `action`. We can substitute this in by replacing r0's parameter type and adding in the member names.

```c
void sub_08086284(Entity *r0) {
    gUnk_08120668[r0->action](r0);
```

Much better.

---

```c
void sub_08086284(Entity *r0) {
    gUnk_08120668[r0->action](r0);
    r0->bitfield = 0;
    SetAffineInfo(r0, r0->field_0x76.HWORD, r0->field_0x7a.HWORD, 0);
    return;
}
```

The fields at the end of of `Entity` are general purpose. For this reason the fields are defined as unions so the proper data size may be loaded.
This isn't pretty, but right now we are just concerned with making the function match. Later on we can define these entity-specific fields.

## 5. Build

```sh
make
```
```
src/evilSpirit.c: In function `sub_08086284':
src/evilSpirit.c:4: syntax error before `*'
src/evilSpirit.c:5: `gUnk_08120668' undeclared (first use in this function)
src/evilSpirit.c:5: (Each undeclared identifier is reported only once for each function it appears in.)
src/evilSpirit.c:7: warning: implicit declaration of function `SetAffineInfo'
```

We got some errors. We need to tell the compiler what `gUnk_08120668`, `Entity`, and `SetAffineInfo` are.

We know `r0` is an `Entity`, which is from `entity.h`. We can declare this above the function:
```c
#include "entity.h"
```
What about `gUnk_08120668` and `SetAffineInfo`?
```c
extern void SetAffineInfo();
extern void (*gUnk_08120668[])(Entity *);
```
Now the compiler will look outside of this file for both of these. We don't have to set the size of `gUnk_08120668`, a function array, since it's size is irrelevant for now.

---

Now our file looks like this:
```c
#include "global.h"
#include "entity.h"

extern void SetAffineInfo();
extern void (*gUnk_08120668[])(Entity *);

void sub_08086284(Entity *r0) {
    gUnk_08120668[r0->action](r0);
    r0->bitfield = 0;
    SetAffineInfo(r0, r0->field_0x76.HWORD, r0->field_0x7a.HWORD, 0);
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
