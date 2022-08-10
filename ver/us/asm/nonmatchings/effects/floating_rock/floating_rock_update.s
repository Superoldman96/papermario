.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

dlabel D_E0098530
.double 0.8, 0.0

.section .text

glabel floating_rock_update
/* 395D20 E0098170 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 395D24 E0098174 AFBF0020 */  sw        $ra, 0x20($sp)
/* 395D28 E0098178 AFB1001C */  sw        $s1, 0x1c($sp)
/* 395D2C E009817C AFB00018 */  sw        $s0, 0x18($sp)
/* 395D30 E0098180 8C90000C */  lw        $s0, 0xc($a0)
/* 395D34 E0098184 8E020048 */  lw        $v0, 0x48($s0)
/* 395D38 E0098188 2442FFFF */  addiu     $v0, $v0, -1
/* 395D3C E009818C AE020048 */  sw        $v0, 0x48($s0)
/* 395D40 E0098190 8E02004C */  lw        $v0, 0x4c($s0)
/* 395D44 E0098194 8E030048 */  lw        $v1, 0x48($s0)
/* 395D48 E0098198 24420001 */  addiu     $v0, $v0, 1
/* 395D4C E009819C 04610005 */  bgez      $v1, .LE00981B4
/* 395D50 E00981A0 AE02004C */   sw       $v0, 0x4c($s0)
/* 395D54 E00981A4 0C080128 */  jal       shim_remove_effect
/* 395D58 E00981A8 00000000 */   nop
/* 395D5C E00981AC 080260A2 */  j         .LE0098288
/* 395D60 E00981B0 00000000 */   nop
.LE00981B4:
/* 395D64 E00981B4 C6020008 */  lwc1      $f2, 8($s0)
/* 395D68 E00981B8 C6000010 */  lwc1      $f0, 0x10($s0)
/* 395D6C E00981BC 46001032 */  c.eq.s    $f2, $f0
/* 395D70 E00981C0 00000000 */  nop
/* 395D74 E00981C4 45010025 */  bc1t      .LE009825C
/* 395D78 E00981C8 0060882D */   daddu    $s1, $v1, $zero
/* 395D7C E00981CC C6020018 */  lwc1      $f2, 0x18($s0)
/* 395D80 E00981D0 C6000020 */  lwc1      $f0, 0x20($s0)
/* 395D84 E00981D4 C6080024 */  lwc1      $f8, 0x24($s0)
/* 395D88 E00981D8 C606002C */  lwc1      $f6, 0x2c($s0)
/* 395D8C E00981DC 46001080 */  add.s     $f2, $f2, $f0
/* 395D90 E00981E0 C60A0038 */  lwc1      $f10, 0x38($s0)
/* 395D94 E00981E4 C6040030 */  lwc1      $f4, 0x30($s0)
/* 395D98 E00981E8 460A3180 */  add.s     $f6, $f6, $f10
/* 395D9C E00981EC C6000008 */  lwc1      $f0, 8($s0)
/* 395DA0 E00981F0 C60A0010 */  lwc1      $f10, 0x10($s0)
/* 395DA4 E00981F4 46020000 */  add.s     $f0, $f0, $f2
/* 395DA8 E00981F8 E6020018 */  swc1      $f2, 0x18($s0)
/* 395DAC E00981FC C6020034 */  lwc1      $f2, 0x34($s0)
/* 395DB0 E0098200 46044200 */  add.s     $f8, $f8, $f4
/* 395DB4 E0098204 E6000008 */  swc1      $f0, 8($s0)
/* 395DB8 E0098208 C6000028 */  lwc1      $f0, 0x28($s0)
/* 395DBC E009820C C6040008 */  lwc1      $f4, 8($s0)
/* 395DC0 E0098210 46020000 */  add.s     $f0, $f0, $f2
/* 395DC4 E0098214 E6080024 */  swc1      $f8, 0x24($s0)
/* 395DC8 E0098218 E606002C */  swc1      $f6, 0x2c($s0)
/* 395DCC E009821C 460A203E */  c.le.s    $f4, $f10
/* 395DD0 E0098220 00000000 */  nop
/* 395DD4 E0098224 4500000D */  bc1f      .LE009825C
/* 395DD8 E0098228 E6000028 */   swc1     $f0, 0x28($s0)
/* 395DDC E009822C 24040015 */  addiu     $a0, $zero, 0x15
/* 395DE0 E0098230 0C080150 */  jal       shim_load_effect
/* 395DE4 E0098234 E60A0008 */   swc1     $f10, 8($s0)
/* 395DE8 E0098238 24020014 */  addiu     $v0, $zero, 0x14
/* 395DEC E009823C AFA20010 */  sw        $v0, 0x10($sp)
/* 395DF0 E0098240 8E050004 */  lw        $a1, 4($s0)
/* 395DF4 E0098244 8E060008 */  lw        $a2, 8($s0)
/* 395DF8 E0098248 8E07000C */  lw        $a3, 0xc($s0)
/* 395DFC E009824C 0C00A800 */  jal       dust_main
/* 395E00 E0098250 24040002 */   addiu    $a0, $zero, 2
/* 395E04 E0098254 2402001E */  addiu     $v0, $zero, 0x1e
/* 395E08 E0098258 AE020048 */  sw        $v0, 0x48($s0)
.LE009825C:
/* 395E0C E009825C 2A22000A */  slti      $v0, $s1, 0xa
/* 395E10 E0098260 10400009 */  beqz      $v0, .LE0098288
/* 395E14 E0098264 00000000 */   nop
/* 395E18 E0098268 3C01E00A */  lui       $at, %hi(D_E0098530)
/* 395E1C E009826C D4228530 */  ldc1      $f2, %lo(D_E0098530)($at)
/* 395E20 E0098270 C6000044 */  lwc1      $f0, 0x44($s0)
/* 395E24 E0098274 46800021 */  cvt.d.w   $f0, $f0
/* 395E28 E0098278 46220002 */  mul.d     $f0, $f0, $f2
/* 395E2C E009827C 00000000 */  nop
/* 395E30 E0098280 4620030D */  trunc.w.d $f12, $f0
/* 395E34 E0098284 E60C0044 */  swc1      $f12, 0x44($s0)
.LE0098288:
/* 395E38 E0098288 8FBF0020 */  lw        $ra, 0x20($sp)
/* 395E3C E009828C 8FB1001C */  lw        $s1, 0x1c($sp)
/* 395E40 E0098290 8FB00018 */  lw        $s0, 0x18($sp)
/* 395E44 E0098294 03E00008 */  jr        $ra
/* 395E48 E0098298 27BD0028 */   addiu    $sp, $sp, 0x28
