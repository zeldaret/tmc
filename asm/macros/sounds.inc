.macro sound_header track_count:req block_count:req priority:req reverb:req tone:req part:req parts:vararg
    .byte \track_count
    .byte \block_count
    .byte \priority
    .byte \reverb
    .4byte \tone
    sound_header_recurse \part \parts
.endm

.macro sound_header_recurse part:req parts:vararg
    .4byte \part
    .ifnb \parts
    sound_header_recurse \parts
    .endif
.endm
