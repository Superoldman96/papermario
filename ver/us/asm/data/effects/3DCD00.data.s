.include "macro.inc"

.section .data

dlabel D_E00E29F0
.word 0x09001000

dlabel D_E00E29F4
.byte 0x78, 0x82, 0x8C, 0x96, 0xA0, 0xAA, 0xB4, 0xBE, 0xC8, 0xC8, 0xBE, 0xB4, 0xAA, 0xA0, 0x96, 0x8C, 0x82, 0x00, 0x00, 0x00

dlabel D_E00E2A08
.byte 0xAA, 0xA0, 0x96, 0x8C, 0x82, 0x78, 0x82, 0x8C, 0x96, 0xA0, 0xAA, 0xB4, 0xBE, 0xC8, 0xC8, 0xBE, 0xB4, 0x00, 0x00, 0x00

dlabel D_E00E2A1C
.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00
