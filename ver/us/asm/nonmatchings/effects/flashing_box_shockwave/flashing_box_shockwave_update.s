.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

dlabel D_E00947B0
.double 1.1

dlabel D_E00947B8
.double 0.05

dlabel D_E00947C0
.double 0.9

dlabel D_E00947C8
.double 0.8

.section .text

glabel flashing_box_shockwave_update
/* 392A68 E0094198 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 392A6C E009419C AFBF0010 */  sw        $ra, 0x10($sp)
/* 392A70 E00941A0 8C83000C */  lw        $v1, 0xc($a0)
/* 392A74 E00941A4 8C65001C */  lw        $a1, 0x1c($v1)
/* 392A78 E00941A8 8C660000 */  lw        $a2, ($v1)
/* 392A7C E00941AC 28A20064 */  slti      $v0, $a1, 0x64
/* 392A80 E00941B0 10400002 */  beqz      $v0, .LE00941BC
/* 392A84 E00941B4 24A2FFFF */   addiu    $v0, $a1, -1
/* 392A88 E00941B8 AC62001C */  sw        $v0, 0x1c($v1)
.LE00941BC:
/* 392A8C E00941BC 8C620020 */  lw        $v0, 0x20($v1)
/* 392A90 E00941C0 8C65001C */  lw        $a1, 0x1c($v1)
/* 392A94 E00941C4 24420001 */  addiu     $v0, $v0, 1
/* 392A98 E00941C8 04A10005 */  bgez      $a1, .LE00941E0
/* 392A9C E00941CC AC620020 */   sw       $v0, 0x20($v1)
/* 392AA0 E00941D0 0C080128 */  jal       shim_remove_effect
/* 392AA4 E00941D4 00000000 */   nop
/* 392AA8 E00941D8 080250AD */  j         .LE00942B4
/* 392AAC E00941DC 00000000 */   nop
.LE00941E0:
/* 392AB0 E00941E0 0040202D */  daddu     $a0, $v0, $zero
/* 392AB4 E00941E4 24020002 */  addiu     $v0, $zero, 2
/* 392AB8 E00941E8 14C2000B */  bne       $a2, $v0, .LE0094218
/* 392ABC E00941EC 28820015 */   slti     $v0, $a0, 0x15
/* 392AC0 E00941F0 10400016 */  beqz      $v0, .LE009424C
/* 392AC4 E00941F4 00000000 */   nop
/* 392AC8 E00941F8 C4600024 */  lwc1      $f0, 0x24($v1)
/* 392ACC E00941FC 3C01E009 */  lui       $at, %hi(D_E00947B0)
/* 392AD0 E0094200 D42247B0 */  ldc1      $f2, %lo(D_E00947B0)($at)
/* 392AD4 E0094204 46000021 */  cvt.d.s   $f0, $f0
/* 392AD8 E0094208 46220002 */  mul.d     $f0, $f0, $f2
/* 392ADC E009420C 00000000 */  nop
/* 392AE0 E0094210 08025092 */  j         .LE0094248
/* 392AE4 E0094214 46200020 */   cvt.s.d  $f0, $f0
.LE0094218:
/* 392AE8 E0094218 C4600024 */  lwc1      $f0, 0x24($v1)
/* 392AEC E009421C 3C014020 */  lui       $at, 0x4020
/* 392AF0 E0094220 44811800 */  mtc1      $at, $f3
/* 392AF4 E0094224 44801000 */  mtc1      $zero, $f2
/* 392AF8 E0094228 46000021 */  cvt.d.s   $f0, $f0
/* 392AFC E009422C 46201081 */  sub.d     $f2, $f2, $f0
/* 392B00 E0094230 3C01E009 */  lui       $at, %hi(D_E00947B8)
/* 392B04 E0094234 D42447B8 */  ldc1      $f4, %lo(D_E00947B8)($at)
/* 392B08 E0094238 46241082 */  mul.d     $f2, $f2, $f4
/* 392B0C E009423C 00000000 */  nop
/* 392B10 E0094240 46220000 */  add.d     $f0, $f0, $f2
/* 392B14 E0094244 46200020 */  cvt.s.d   $f0, $f0
.LE0094248:
/* 392B18 E0094248 E4600024 */  swc1      $f0, 0x24($v1)
.LE009424C:
/* 392B1C E009424C 3C01E009 */  lui       $at, %hi(D_E00947C0)
/* 392B20 E0094250 D42247C0 */  ldc1      $f2, %lo(D_E00947C0)($at)
/* 392B24 E0094254 C4600014 */  lwc1      $f0, 0x14($v1)
/* 392B28 E0094258 46800021 */  cvt.d.w   $f0, $f0
/* 392B2C E009425C 46220002 */  mul.d     $f0, $f0, $f2
/* 392B30 E0094260 00000000 */  nop
/* 392B34 E0094264 28A20005 */  slti      $v0, $a1, 5
/* 392B38 E0094268 4620018D */  trunc.w.d $f6, $f0
/* 392B3C E009426C E4660014 */  swc1      $f6, 0x14($v1)
/* 392B40 E0094270 10400009 */  beqz      $v0, .LE0094298
/* 392B44 E0094274 28820007 */   slti     $v0, $a0, 7
/* 392B48 E0094278 3C01E009 */  lui       $at, %hi(D_E00947C8)
/* 392B4C E009427C D42247C8 */  ldc1      $f2, %lo(D_E00947C8)($at)
/* 392B50 E0094280 C4600018 */  lwc1      $f0, 0x18($v1)
/* 392B54 E0094284 46800021 */  cvt.d.w   $f0, $f0
/* 392B58 E0094288 46220002 */  mul.d     $f0, $f0, $f2
/* 392B5C E009428C 00000000 */  nop
/* 392B60 E0094290 4620018D */  trunc.w.d $f6, $f0
/* 392B64 E0094294 E4660018 */  swc1      $f6, 0x18($v1)
.LE0094298:
/* 392B68 E0094298 14400006 */  bnez      $v0, .LE00942B4
/* 392B6C E009429C 00000000 */   nop
/* 392B70 E00942A0 8C620010 */  lw        $v0, 0x10($v1)
/* 392B74 E00942A4 2442FFF3 */  addiu     $v0, $v0, -0xd
/* 392B78 E00942A8 04410002 */  bgez      $v0, .LE00942B4
/* 392B7C E00942AC AC620010 */   sw       $v0, 0x10($v1)
/* 392B80 E00942B0 AC600010 */  sw        $zero, 0x10($v1)
.LE00942B4:
/* 392B84 E00942B4 8FBF0010 */  lw        $ra, 0x10($sp)
/* 392B88 E00942B8 03E00008 */  jr        $ra
/* 392B8C E00942BC 27BD0018 */   addiu    $sp, $sp, 0x18
