#ifndef STRUCTURES_H
#define STRUCTURES_H

#include "global.h"
#include "entity.h"
#include "player.h"

typedef struct {
    int signature;
    u8 saveFileId;
    u8 msg_speed;
    u8 brightness;
    u8 language;
    u8 name[6];
    u8 invalid;
    u8 initialized;
} SaveHeader;
#define gSaveHeader ((SaveHeader*)(0x2000000))

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02[0xE];
} struct_02000040;

extern struct_02000040 gUnk_02000040;

typedef struct {
    s32 signature;
    u8 field_0x4;
    u8 listenForKeyPresses;
    u8 field_0x6;
    u8 field_0x7;
    u8 pad[24];
} struct_02000010;
static_assert(sizeof(struct_02000010) == 0x20);

extern struct_02000010 gUnk_02000010;

typedef struct {
    u8 unk0;
    u8 unk1;
    u16 unk2;
} struct_020354C0;
extern struct_020354C0 gUnk_020354C0[0x20];

#define MAX_UI_ELEMENTS 24

typedef enum {
    UI_ELEMENT_BUTTON_A,
    UI_ELEMENT_BUTTON_B,
    UI_ELEMENT_BUTTON_R,
    UI_ELEMENT_ITEM_A,
    UI_ELEMENT_ITEM_B,
    UI_ELEMENT_TEXT_R,
    UI_ELEMENT_HEART,
    UI_ELEMENT_EZLONAGSTART,
    UI_ELEMENT_EZLONAGACTIVE,
    UI_ELEMENT_TEXT_A,
    UI_ELEMENT_TEXT_B
} UIElementType;

/**
 * @brief Floating UI element
 */
typedef struct {
    u8 used : 1;
    u8 unk_0_1 : 1;
    u8 unk_0_2 : 2; // Load data into VRAM? 0: do not load, 1: ready to load 2: loaded
    u8 unk_0_4 : 4;
    u8 type;            /**< @see UIElementType */
    u8 type2;           // Subtype
    u8 buttonElementId; /**< Id of the button UI element this text is attached to */
    u8 action;
    u8 unk_5;
    u8 unk_6;
    u8 unk_7;
    u8 unk_8;
    u8 unk_9[3];
    u16 x;
    u16 y;
    u8 frameIndex;
    u8 duration;
    u8 spriteSettings;
    u8 frameSettings;
    Frame* framePtr;
    u8 unk_18;
    u8 numTiles;
    u16 unk_1a; // TODO oam id? VRAM target (element->unk_1a * 0x20 + 0x6010000)
    u32* firstTile;
} UIElement;

typedef enum {
    HUD_HIDE_NONE,
    HUD_HIDE_1 = 0x1, // A
    HUD_HIDE_2 = 0x2, // B
    HUD_HIDE_4 = 0x4, // R
    HUD_HIDE_8 = 0x8,
    HUD_HIDE_HEARTS = 0x10,
    HUD_HIDE_CHARGE_BAR = 0x20,
    HUD_HIDE_RUPEES = 0x40,
    HUD_HIDE_KEYS = 0x80,

    HUD_HIDE_ALL = 0xff
} HUDHideFlags;

typedef struct {
    u8 unk_0;
    u8 hideFlags;
    u8 unk_2;
    u8 health;
    u8 maxHealth;
    u8 unk_5;
    u8 unk_6;
    u8 unk_7;
    u8 unk_8;
    u8 unk_9;
    u8 unk_a;
    u8 unk_b;
    u8 unk_c;
    u8 unk_d;
    u16 rupees;
    u8 unk_10; // TODO drawing keys dirty flag or something?
    u8 unk_11;
    u8 dungeonKeys;
    s8 unk_13;
    s8 unk_14;
    u8 unk_15;
    u16 buttonX[3]; /**< X coordinates for the button UI elements */
    u16 buttonY[3]; /**< Y coordinates for the button UI elements */
    u8 filler22[0x2];
    u8 ezloNagFuncIndex;
    u8 filler25[7];
    u8 rActionInteractObject; // used as R button UI frame index
    u8 rActionInteractTile;
    u8 rActionGrabbing;
    u8 rActionPlayerState; // if not 0, overrides other R actions
    u8 buttonText[3];
    u8 unk_33;
    UIElement elements[MAX_UI_ELEMENTS];
} HUD;
extern HUD gHUD;

#define MAX_GFX_SLOTS 44

typedef enum {
    GFX_SLOT_FREE,
    GFX_SLOT_UNLOADED, // some sort of free? no longer in use?
    GFX_SLOT_STATUS2,  // some sort of free?
    GFX_SLOT_FOLLOWER, // Set by SetGFXSlotStatus for the following slots
    GFX_SLOT_RESERVED, // maybe ready to be loaded?
    GFX_SLOT_GFX,
    GFX_SLOT_PALETTE
} GfxSlotStatus;

typedef enum {
    GFX_VRAM_0,
    GFX_VRAM_1, // uploaded to vram?
    GFX_VRAM_2,
    GFX_VRAM_3, // not yet uploaded to vram?
} GfxSlotVramStatus;

typedef struct {
    /*0x00*/ u8 status : 4;
    /*0x00*/ u8 vramStatus : 4; // Whether the gfx was uploaded to the vram?
    /*0x01*/ u8 slotCount;
    /*0x02*/ u8 referenceCount; /**< How many entities use this gfx slot */
    /*0x03*/ u8 unk_3;
    /*0x04*/ u16 gfxIndex;
    /*0x06*/ u16 paletteIndex;
    /*0x08*/ const void* palettePointer;
} GfxSlot;

typedef struct {
    /*0x00*/ u8 unk0;
    /*0x01*/ u8 unk_1;
    /*0x02*/ u8 unk_2;
    /*0x03*/ u8 unk_3;
    /*0x04*/ GfxSlot slots[MAX_GFX_SLOTS];
} GfxSlotList;
extern GfxSlotList gGFXSlots;

static_assert(sizeof(GfxSlotList) == 0x214);

typedef struct {
    u16 unk_00;
    u8 unk_02[0xE];
} struct_02034480;
extern struct_02034480 gUnk_02034480;

extern u16 gBG0Buffer[0x400];
extern u16 gBG1Buffer[0x400];
extern u16 gBG2Buffer[0x400];
extern u16 gBG3Buffer[0x800];

typedef enum { ACTIVE_ITEM_0, ACTIVE_ITEM_1, ACTIVE_ITEM_2, ACTIVE_ITEM_LANTERN, MAX_ACTIVE_ITEMS } ActiveItemIndex;
/**
 * Currently active items.
 * 0: Active items?
 * 1: Boots, Cape
 * 2: would be used by CreateItem1 if gActiveItems[1] was already filled
 * 3: Lamp
 */
extern ItemBehavior gActiveItems[MAX_ACTIVE_ITEMS];
static_assert(sizeof(gActiveItems) == 0x70);

typedef struct {
    u8 event_priority; // system requested priority
    u8 ent_priority;   // entity requested priority
    u8 queued_priority;
    u8 queued_priority_reset;
    Entity* requester;
    u16 priority_timer;
} PriorityHandler;
extern PriorityHandler gPriorityHandler;

typedef struct {
    u8 disabled;
    u8 screen;
    u8 unk2[0xf]; // cursor positions on the different screens
    u8 unk11;
    u8 unk12;
    u8 unk13;
    s8 screen2;
    u8 unk15;
    s8 unk16;
    u8 unk17;
} PauseMenuOptions;

extern PauseMenuOptions gPauseMenuOptions;
static_assert(sizeof(PauseMenuOptions) == 0x18);

typedef struct {
    u8 unk00 : 1;
    u8 unk01 : 3;
    u8 unk04 : 4;
    u8 unk1;
    u8 charColor;
    u8 bgColor;
    u16 unk4;
    u16 unk6;
    void* unk8;
} WStruct;

static_assert(sizeof(WStruct) == 12);

typedef struct {
    u8 unk0;
    u8 unk1;
    u16 unk2;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
} OAMObj;

typedef struct {
    u8 field_0x0;
    u8 field_0x1;
    u8 spritesOffset;
    u8 updated;
    u16 _4;
    u16 _6;
    u8 _0[0x18];
    struct OamData oam[0x80];
    OAMObj unk[0xA0]; /* todo: affine */
} OAMControls;
extern OAMControls gOAMControls;

typedef struct {
    union SplitWord _0;
    union SplitWord _4;
} struct_020227E8;

typedef struct {
    s8 x;
    s8 y;
    s8 width;
    s8 height;
} Rect;

typedef struct {
    /*0x00*/ u8 ignoreLayer; /* if bit 0 set, skip layer check for collision */
    /*0x01*/ u8 type;
    /*0x02*/ u8 interactDirections; /* lower 4 bits determine Link's allowed facing directions to interact, 0 to allow
                                       (0000WSEN) */
    /*0x03*/ u8 kinstoneId;
    /*0x04*/ const Rect* customHitbox; /* optional custom rectangle */
    /*0x08*/ Entity* entity;
} InteractableObject;

typedef struct {
    /*0x00*/ u8 isUpdated;
    /*0x01*/ u8 unused;
    /*0x02*/ u8 kinstoneId;
    /*0x03*/ u8 currentIndex; /* index of currentObject in candidate list, or 0xFF */
    /*0x04*/ InteractableObject* currentObject;
    /*0x08*/ InteractableObject
        candidates[0x20]; /* contains the loaded NPCs, key doors, windcrests and other objects */
} PossibleInteraction;

static_assert(sizeof(PossibleInteraction) == 0x188);

extern PossibleInteraction gPossibleInteraction;

typedef struct {
    u8 numTiles;
    u8 unk_1;
    u16 firstTileIndex;
} SpriteFrame;

typedef struct {
    void* animations;
    SpriteFrame* frames;
    void* ptr;
    u32 pad;
} SpritePtr;

extern SpritePtr gSpritePtrs[];

typedef struct {
    u16* dest;
    void* gfx_dest;
    void* buffer_loc;
    u32 _c;
    u16 gfx_src;
    u8 width;
    u8 right_align : 1;
    u8 sm_border : 1;
    u8 unused : 1;
    u8 draw_border : 1;
    u8 border_type : 4;
    u8 fill_type;
    u8 charColor;
    u8 _16;
    u8 stylized;
} Font;

typedef struct {
    u8 unk_0;
    u8 unk_1;
    u8 unk_2[2];
    u16 unk_4;
    u8 filler[12];
    Entity* unk_14;
    u8 unk_18;
    u8 unk_19;
    u8 unk_1a;
    u8 unk_1b;
} struct_02018EB0;

extern struct_02018EB0 gUnk_02018EB0;

typedef struct {
    s16 tileIndex;
    s16 tilePosOffset;
} TileData;

typedef struct {
    /*0x00*/ bool8 isOnlyActiveFirstFrame; /**< Is the behavior for this item only created on the first frame */
    /*0x01*/ u8 priority;
    /*0x02*/ u8 createFunc;
    /*0x03*/ u8 playerItemId; /**< Id for the corresponsing PlayerItem. */
    /*0x04*/ u16 frameIndex;
    /*0x06*/ u8 animPriority;
    /*0x07*/ bool8 isChangingAttackStatus;
    /*0x08*/ bool8 isUseableAsMinish;
    /*0x09*/ u8 pad[3];
} ItemDefinition;

static_assert(sizeof(ItemDefinition) == 0xc);

typedef struct {
    u8 frame;
    u8 frameIndex;
} PACKED FrameStruct;

typedef struct {
    /*0x0*/ u8 menuType;
    /*0x1*/ u16 font;
    /*0x3*/ u8 unk_3; // TODO padding?
    /*0x4*/ u16 transitionTimer;
    /*0x6*/ u16 gfxEntry;
    /*0x8*/ u16 bg2XOffset;
    /*0xa*/ u16 sm_unk_14;
} PACKED StaffrollEntry;

static_assert(sizeof(StaffrollEntry) == 0xc);

typedef struct {
    u8 paletteGroup;
    u8 gfxGroup;
} PACKED StaffrollGfxEntry;

extern const u8 gGlobalGfxAndPalettes[];
extern u32 gUsedPalettes;

#endif // STRUCTURES_H
