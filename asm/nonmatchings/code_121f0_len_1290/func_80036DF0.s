.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80036DF0
/* 0121F0 80036DF0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0121F4 80036DF4 AFB20028 */  sw    $s2, 0x28($sp)
/* 0121F8 80036DF8 3C12800A */  lui   $s2, 0x800a
/* 0121FC 80036DFC 2652A650 */  addiu $s2, $s2, -0x59b0
/* 012200 80036E00 24020001 */  addiu $v0, $zero, 1
/* 012204 80036E04 AFBF002C */  sw    $ra, 0x2c($sp)
/* 012208 80036E08 AFB10024 */  sw    $s1, 0x24($sp)
/* 01220C 80036E0C AFB00020 */  sw    $s0, 0x20($sp)
/* 012210 80036E10 F7B40030 */  sdc1  $f20, 0x30($sp)
/* 012214 80036E14 AE400000 */  sw    $zero, ($s2)
/* 012218 80036E18 3C01800A */  lui   $at, 0x800a
/* 01221C 80036E1C AC20A5D8 */  sw    $zero, -0x5a28($at)
/* 012220 80036E20 3C018015 */  lui   $at, 0x8015
/* 012224 80036E24 A022C248 */  sb    $v0, -0x3db8($at)
/* 012228 80036E28 0C00AB00 */  jal   general_heap_create
/* 01222C 80036E2C 00000000 */   nop   
/* 012230 80036E30 0C048D9D */  jal   clear_printers
/* 012234 80036E34 00000000 */   nop   
/* 012238 80036E38 0C0525FF */  jal   func_801497FC
/* 01223C 80036E3C 0000202D */   daddu $a0, $zero, $zero
/* 012240 80036E40 3C038007 */  lui   $v1, 0x8007
/* 012244 80036E44 2463419C */  addiu $v1, $v1, 0x419c
/* 012248 80036E48 8C620000 */  lw    $v0, ($v1)
/* 01224C 80036E4C A04000AC */  sb    $zero, 0xac($v0)
/* 012250 80036E50 8C620000 */  lw    $v0, ($v1)
/* 012254 80036E54 A04000AD */  sb    $zero, 0xad($v0)
/* 012258 80036E58 8C620000 */  lw    $v0, ($v1)
/* 01225C 80036E5C A0400070 */  sb    $zero, 0x70($v0)
/* 012260 80036E60 8C630000 */  lw    $v1, ($v1)
/* 012264 80036E64 2402FFFF */  addiu $v0, $zero, -1
/* 012268 80036E68 0C00CE1D */  jal   func_80033874
/* 01226C 80036E6C A06200A8 */   sb    $v0, 0xa8($v1)
/* 012270 80036E70 3C04800A */  lui   $a0, 0x800a
/* 012274 80036E74 24848390 */  addiu $a0, $a0, -0x7c70
/* 012278 80036E78 0C016B3A */  jal   load_asset_by_name
/* 01227C 80036E7C 27A50018 */   addiu $a1, $sp, 0x18
/* 012280 80036E80 8FA40018 */  lw    $a0, 0x18($sp)
/* 012284 80036E84 0C00AB39 */  jal   heap_malloc
/* 012288 80036E88 0040882D */   daddu $s1, $v0, $zero
/* 01228C 80036E8C 0220202D */  daddu $a0, $s1, $zero
/* 012290 80036E90 0040282D */  daddu $a1, $v0, $zero
/* 012294 80036E94 3C10800A */  lui   $s0, 0x800a
/* 012298 80036E98 26100974 */  addiu $s0, $s0, 0x974
/* 01229C 80036E9C 0C01BB7C */  jal   decode_yay0
/* 0122A0 80036EA0 AE050000 */   sw    $a1, ($s0)
/* 0122A4 80036EA4 0C00AB1E */  jal   general_heap_free
/* 0122A8 80036EA8 0220202D */   daddu $a0, $s1, $zero
/* 0122AC 80036EAC 8E040000 */  lw    $a0, ($s0)
/* 0122B0 80036EB0 8C820000 */  lw    $v0, ($a0)
/* 0122B4 80036EB4 8C830008 */  lw    $v1, 8($a0)
/* 0122B8 80036EB8 00441021 */  addu  $v0, $v0, $a0
/* 0122BC 80036EBC 3C01800A */  lui   $at, 0x800a
/* 0122C0 80036EC0 AC220978 */  sw    $v0, 0x978($at)
/* 0122C4 80036EC4 8C820004 */  lw    $v0, 4($a0)
/* 0122C8 80036EC8 00641821 */  addu  $v1, $v1, $a0
/* 0122CC 80036ECC 3C01800A */  lui   $at, 0x800a
/* 0122D0 80036ED0 AC230980 */  sw    $v1, 0x980($at)
/* 0122D4 80036ED4 00441021 */  addu  $v0, $v0, $a0
/* 0122D8 80036ED8 3C01800A */  lui   $at, 0x800a
/* 0122DC 80036EDC AC22097C */  sw    $v0, 0x97c($at)
/* 0122E0 80036EE0 0C00B7BD */  jal   create_cameras_a
/* 0122E4 80036EE4 00000000 */   nop   
/* 0122E8 80036EE8 0000202D */  daddu $a0, $zero, $zero
/* 0122EC 80036EEC 2405000C */  addiu $a1, $zero, 0xc
/* 0122F0 80036EF0 2406001C */  addiu $a2, $zero, 0x1c
/* 0122F4 80036EF4 24070128 */  addiu $a3, $zero, 0x128
/* 0122F8 80036EF8 3C10800B */  lui   $s0, 0x800b
/* 0122FC 80036EFC 26101D80 */  addiu $s0, $s0, 0x1d80
/* 012300 80036F00 3C0141C8 */  lui   $at, 0x41c8
/* 012304 80036F04 4481A000 */  mtc1  $at, $f20
/* 012308 80036F08 24020006 */  addiu $v0, $zero, 6
/* 01230C 80036F0C A6020004 */  sh    $v0, 4($s0)
/* 012310 80036F10 24020001 */  addiu $v0, $zero, 1
/* 012314 80036F14 A6020006 */  sh    $v0, 6($s0)
/* 012318 80036F18 24020010 */  addiu $v0, $zero, 0x10
/* 01231C 80036F1C A6020012 */  sh    $v0, 0x12($s0)
/* 012320 80036F20 24021000 */  addiu $v0, $zero, 0x1000
/* 012324 80036F24 A6020014 */  sh    $v0, 0x14($s0)
/* 012328 80036F28 240200B8 */  addiu $v0, $zero, 0xb8
/* 01232C 80036F2C 3C018007 */  lui   $at, 0x8007
/* 012330 80036F30 AC207410 */  sw    $zero, 0x7410($at)
/* 012334 80036F34 E6140018 */  swc1  $f20, 0x18($s0)
/* 012338 80036F38 AFA20010 */  sw    $v0, 0x10($sp)
/* 01233C 80036F3C 96020000 */  lhu   $v0, ($s0)
/* 012340 80036F40 96030558 */  lhu   $v1, 0x558($s0)
/* 012344 80036F44 34420002 */  ori   $v0, $v0, 2
/* 012348 80036F48 A6020000 */  sh    $v0, ($s0)
/* 01234C 80036F4C 96020AB0 */  lhu   $v0, 0xab0($s0)
/* 012350 80036F50 34630002 */  ori   $v1, $v1, 2
/* 012354 80036F54 A6030558 */  sh    $v1, 0x558($s0)
/* 012358 80036F58 96031008 */  lhu   $v1, 0x1008($s0)
/* 01235C 80036F5C 34420002 */  ori   $v0, $v0, 2
/* 012360 80036F60 34630002 */  ori   $v1, $v1, 2
/* 012364 80036F64 A6020AB0 */  sh    $v0, 0xab0($s0)
/* 012368 80036F68 0C00B8C5 */  jal   set_cam_viewport
/* 01236C 80036F6C A6031008 */   sh    $v1, 0x1008($s0)
/* 012370 80036F70 3C0143FA */  lui   $at, 0x43fa
/* 012374 80036F74 44810000 */  mtc1  $at, $f0
/* 012378 80036F78 3C01447A */  lui   $at, 0x447a
/* 01237C 80036F7C 44811000 */  mtc1  $at, $f2
/* 012380 80036F80 3C0144BB */  lui   $at, 0x44bb
/* 012384 80036F84 34218000 */  ori   $at, $at, 0x8000
/* 012388 80036F88 44812000 */  mtc1  $at, $f4
/* 01238C 80036F8C 3C014316 */  lui   $at, 0x4316
/* 012390 80036F90 44813000 */  mtc1  $at, $f6
/* 012394 80036F94 24020028 */  addiu $v0, $zero, 0x28
/* 012398 80036F98 A602001E */  sh    $v0, 0x1e($s0)
/* 01239C 80036F9C 24020064 */  addiu $v0, $zero, 0x64
/* 0123A0 80036FA0 A600002C */  sh    $zero, 0x2c($s0)
/* 0123A4 80036FA4 A600002E */  sh    $zero, 0x2e($s0)
/* 0123A8 80036FA8 A6000030 */  sh    $zero, 0x30($s0)
/* 0123AC 80036FAC E6140054 */  swc1  $f20, 0x54($s0)
/* 0123B0 80036FB0 E6140058 */  swc1  $f20, 0x58($s0)
/* 0123B4 80036FB4 A600001C */  sh    $zero, 0x1c($s0)
/* 0123B8 80036FB8 A6020020 */  sh    $v0, 0x20($s0)
/* 0123BC 80036FBC A6000022 */  sh    $zero, 0x22($s0)
/* 0123C0 80036FC0 E600003C */  swc1  $f0, 0x3c($s0)
/* 0123C4 80036FC4 E6020040 */  swc1  $f2, 0x40($s0)
/* 0123C8 80036FC8 E6040044 */  swc1  $f4, 0x44($s0)
/* 0123CC 80036FCC 0C0B0C77 */  jal   clear_script_list
/* 0123D0 80036FD0 E606005C */   swc1  $f6, 0x5c($s0)
/* 0123D4 80036FD4 0C048C2E */  jal   func_801230B8
/* 0123D8 80036FD8 00000000 */   nop   
/* 0123DC 80036FDC 0C047624 */  jal   func_8011D890
/* 0123E0 80036FE0 00000000 */   nop   
/* 0123E4 80036FE4 0C0B763E */  jal   func_802DD8F8
/* 0123E8 80036FE8 0000202D */   daddu $a0, $zero, $zero
/* 0123EC 80036FEC 0C047889 */  jal   func_8011E224
/* 0123F0 80036FF0 00000000 */   nop   
/* 0123F4 80036FF4 0C0482EC */  jal   func_80120BB0
/* 0123F8 80036FF8 00000000 */   nop   
/* 0123FC 80036FFC 0C00E12F */  jal   func_800384BC
/* 012400 80037000 00000000 */   nop   
/* 012404 80037004 0C050440 */  jal   func_80141100
/* 012408 80037008 00000000 */   nop   
/* 01240C 8003700C 0C05177E */  jal   func_80145DF8
/* 012410 80037010 00000000 */   nop   
/* 012414 80037014 0C04432E */  jal   func_80110CB8
/* 012418 80037018 24040001 */   addiu $a0, $zero, 1
/* 01241C 8003701C 0C016727 */  jal   func_80059C9C
/* 012420 80037020 00000000 */   nop   
/* 012424 80037024 8E420000 */  lw    $v0, ($s2)
/* 012428 80037028 34420002 */  ori   $v0, $v0, 2
/* 01242C 8003702C 0C039CE8 */  jal   clear_player_data
/* 012430 80037030 AE420000 */   sw    $v0, ($s2)
/* 012434 80037034 0000202D */  daddu $a0, $zero, $zero
/* 012438 80037038 3C058003 */  lui   $a1, 0x8003
/* 01243C 8003703C 24A57638 */  addiu $a1, $a1, 0x7638
/* 012440 80037040 8E420000 */  lw    $v0, ($s2)
/* 012444 80037044 2403FFF7 */  addiu $v1, $zero, -9
/* 012448 80037048 00431024 */  and   $v0, $v0, $v1
/* 01244C 8003704C 0C044B61 */  jal   func_80112D84
/* 012450 80037050 AE420000 */   sw    $v0, ($s2)
/* 012454 80037054 3C04800A */  lui   $a0, 0x800a
/* 012458 80037058 0C05175C */  jal   load_map_bg
/* 01245C 8003705C 2484839C */   addiu $a0, $a0, -0x7c64
/* 012460 80037060 3C048020 */  lui   $a0, 0x8020
/* 012464 80037064 24840000 */  addiu $a0, $a0, 0
/* 012468 80037068 0C05178A */  jal   read_background_size
/* 01246C 8003706C 00000000 */   nop   
/* 012470 80037070 0000202D */  daddu $a0, $zero, $zero
/* 012474 80037074 2405006A */  addiu $a1, $zero, 0x6a
/* 012478 80037078 0080302D */  daddu $a2, $a0, $zero
/* 01247C 8003707C 240701F4 */  addiu $a3, $zero, 0x1f4
/* 012480 80037080 24020008 */  addiu $v0, $zero, 8
/* 012484 80037084 0C052A46 */  jal   set_music_track
/* 012488 80037088 AFA20010 */   sw    $v0, 0x10($sp)
/* 01248C 8003708C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 012490 80037090 8FB20028 */  lw    $s2, 0x28($sp)
/* 012494 80037094 8FB10024 */  lw    $s1, 0x24($sp)
/* 012498 80037098 8FB00020 */  lw    $s0, 0x20($sp)
/* 01249C 8003709C D7B40030 */  ldc1  $f20, 0x30($sp)
/* 0124A0 800370A0 240201E0 */  addiu $v0, $zero, 0x1e0
/* 0124A4 800370A4 3C01800A */  lui   $at, 0x800a
/* 0124A8 800370A8 A4220988 */  sh    $v0, 0x988($at)
/* 0124AC 800370AC 03E00008 */  jr    $ra
/* 0124B0 800370B0 27BD0038 */   addiu $sp, $sp, 0x38

/* 0124B4 800370B4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0124B8 800370B8 AFB00018 */  sw    $s0, 0x18($sp)
/* 0124BC 800370BC 3C108007 */  lui   $s0, 0x8007
/* 0124C0 800370C0 2610419C */  addiu $s0, $s0, 0x419c
/* 0124C4 800370C4 AFBF0020 */  sw    $ra, 0x20($sp)
/* 0124C8 800370C8 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0124CC 800370CC 8E020000 */  lw    $v0, ($s0)
/* 0124D0 800370D0 3C013F80 */  lui   $at, 0x3f80
/* 0124D4 800370D4 44816000 */  mtc1  $at, $f12
/* 0124D8 800370D8 0C00AFBB */  jal   func_8002BEEC
/* 0124DC 800370DC 8C510010 */   lw    $s1, 0x10($v0)
/* 0124E0 800370E0 44806000 */  mtc1  $zero, $f12
/* 0124E4 800370E4 0C00AFC9 */  jal   func_8002BF24
/* 0124E8 800370E8 00000000 */   nop   
/* 0124EC 800370EC 3C04800A */  lui   $a0, 0x800a
/* 0124F0 800370F0 24840988 */  addiu $a0, $a0, 0x988
/* 0124F4 800370F4 84820000 */  lh    $v0, ($a0)
/* 0124F8 800370F8 94830000 */  lhu   $v1, ($a0)
/* 0124FC 800370FC 18400002 */  blez  $v0, .L80037108
/* 012500 80037100 2462FFFF */   addiu $v0, $v1, -1
/* 012504 80037104 A4820000 */  sh    $v0, ($a0)
.L80037108:
/* 012508 80037108 8E020000 */  lw    $v0, ($s0)
/* 01250C 8003710C 804300AC */  lb    $v1, 0xac($v0)
/* 012510 80037110 2C620007 */  sltiu $v0, $v1, 7
/* 012514 80037114 10400115 */  beqz  $v0, .L8003756C
/* 012518 80037118 00031080 */   sll   $v0, $v1, 2
/* 01251C 8003711C 3C01800A */  lui   $at, 0x800a
/* 012520 80037120 00220821 */  addu  $at, $at, $v0
/* 012524 80037124 8C2283A8 */  lw    $v0, -0x7c58($at)
/* 012528 80037128 00400008 */  jr    $v0
/* 01252C 8003712C 00000000 */   nop   
/* 012530 80037130 3C04800A */  lui   $a0, 0x800a
/* 012534 80037134 2484A650 */  addiu $a0, $a0, -0x59b0
/* 012538 80037138 8C820000 */  lw    $v0, ($a0)
/* 01253C 8003713C 24030003 */  addiu $v1, $zero, 3
/* 012540 80037140 3C01800A */  lui   $at, 0x800a
/* 012544 80037144 A4230970 */  sh    $v1, 0x970($at)
/* 012548 80037148 34420008 */  ori   $v0, $v0, 8
/* 01254C 8003714C AC820000 */  sw    $v0, ($a0)
/* 012550 80037150 3C048007 */  lui   $a0, 0x8007
/* 012554 80037154 2484419C */  addiu $a0, $a0, 0x419c
/* 012558 80037158 8C830000 */  lw    $v1, ($a0)
/* 01255C 8003715C 24020014 */  addiu $v0, $zero, 0x14
/* 012560 80037160 A06200B0 */  sb    $v0, 0xb0($v1)
/* 012564 80037164 8C830000 */  lw    $v1, ($a0)
/* 012568 80037168 906200B0 */  lbu   $v0, 0xb0($v1)
/* 01256C 8003716C A06200AF */  sb    $v0, 0xaf($v1)
/* 012570 80037170 8C830000 */  lw    $v1, ($a0)
/* 012574 80037174 906200AC */  lbu   $v0, 0xac($v1)
/* 012578 80037178 24420001 */  addiu $v0, $v0, 1
/* 01257C 8003717C 0800DD5B */  j     .L8003756C
/* 012580 80037180 A06200AC */   sb    $v0, 0xac($v1)

/* 012584 80037184 3C04800A */  lui   $a0, 0x800a
/* 012588 80037188 24840970 */  addiu $a0, $a0, 0x970
/* 01258C 8003718C 84820000 */  lh    $v0, ($a0)
/* 012590 80037190 94830000 */  lhu   $v1, ($a0)
/* 012594 80037194 10400003 */  beqz  $v0, .L800371A4
/* 012598 80037198 2462FFFF */   addiu $v0, $v1, -1
/* 01259C 8003719C 0800DD5B */  j     .L8003756C
/* 0125A0 800371A0 A4820000 */   sh    $v0, ($a0)

.L800371A4:
/* 0125A4 800371A4 3C108007 */  lui   $s0, 0x8007
/* 0125A8 800371A8 2610419C */  addiu $s0, $s0, 0x419c
/* 0125AC 800371AC 8E040000 */  lw    $a0, ($s0)
/* 0125B0 800371B0 808200AF */  lb    $v0, 0xaf($a0)
/* 0125B4 800371B4 908300AF */  lbu   $v1, 0xaf($a0)
/* 0125B8 800371B8 10400002 */  beqz  $v0, .L800371C4
/* 0125BC 800371BC 2462FFFF */   addiu $v0, $v1, -1
/* 0125C0 800371C0 A08200AF */  sb    $v0, 0xaf($a0)
.L800371C4:
/* 0125C4 800371C4 24040006 */  addiu $a0, $zero, 6
/* 0125C8 800371C8 3C02800A */  lui   $v0, 0x800a
/* 0125CC 800371CC 2442A650 */  addiu $v0, $v0, -0x59b0
/* 0125D0 800371D0 8C430000 */  lw    $v1, ($v0)
/* 0125D4 800371D4 2405FFF7 */  addiu $a1, $zero, -9
/* 0125D8 800371D8 00651824 */  and   $v1, $v1, $a1
/* 0125DC 800371DC 0C00CDFE */  jal   func_800337F8
/* 0125E0 800371E0 AC430000 */   sw    $v1, ($v0)
/* 0125E4 800371E4 10400074 */  beqz  $v0, .L800373B8
/* 0125E8 800371E8 00000000 */   nop   
/* 0125EC 800371EC 8E030000 */  lw    $v1, ($s0)
/* 0125F0 800371F0 806200AF */  lb    $v0, 0xaf($v1)
/* 0125F4 800371F4 14400070 */  bnez  $v0, .L800373B8
/* 0125F8 800371F8 24020002 */   addiu $v0, $zero, 2
/* 0125FC 800371FC 0800DCEE */  j     .L800373B8
/* 012600 80037200 A06200AC */   sb    $v0, 0xac($v1)

/* 012604 80037204 3C028007 */  lui   $v0, 0x8007
/* 012608 80037208 8C427A34 */  lw    $v0, 0x7a34($v0)
/* 01260C 8003720C 1040000B */  beqz  $v0, .L8003723C
/* 012610 80037210 24020078 */   addiu $v0, $zero, 0x78
/* 012614 80037214 3C03800A */  lui   $v1, 0x800a
/* 012618 80037218 84630988 */  lh    $v1, 0x988($v1)
/* 01261C 8003721C 14620007 */  bne   $v1, $v0, .L8003723C
/* 012620 80037220 24020008 */   addiu $v0, $zero, 8
/* 012624 80037224 AFA20010 */  sw    $v0, 0x10($sp)
/* 012628 80037228 0000202D */  daddu $a0, $zero, $zero
/* 01262C 8003722C 2405FFFF */  addiu $a1, $zero, -1
/* 012630 80037230 0080302D */  daddu $a2, $a0, $zero
/* 012634 80037234 0C052A46 */  jal   set_music_track
/* 012638 80037238 24070F3C */   addiu $a3, $zero, 0xf3c
.L8003723C:
/* 01263C 8003723C 3C02800A */  lui   $v0, 0x800a
/* 012640 80037240 84420988 */  lh    $v0, 0x988($v0)
/* 012644 80037244 14400012 */  bnez  $v0, .L80037290
/* 012648 80037248 32229000 */   andi  $v0, $s1, 0x9000
/* 01264C 8003724C 3C028007 */  lui   $v0, 0x8007
/* 012650 80037250 8C42419C */  lw    $v0, 0x419c($v0)
/* 012654 80037254 24030004 */  addiu $v1, $zero, 4
/* 012658 80037258 A04300AC */  sb    $v1, 0xac($v0)
/* 01265C 8003725C 3C028007 */  lui   $v0, 0x8007
/* 012660 80037260 8C427A34 */  lw    $v0, 0x7a34($v0)
/* 012664 80037264 14400002 */  bnez  $v0, .L80037270
/* 012668 80037268 24020009 */   addiu $v0, $zero, 9
/* 01266C 8003726C 2402000A */  addiu $v0, $zero, 0xa
.L80037270:
/* 012670 80037270 3C018007 */  lui   $at, 0x8007
/* 012674 80037274 A42279C0 */  sh    $v0, 0x79c0($at)
/* 012678 80037278 3C038007 */  lui   $v1, 0x8007
/* 01267C 8003727C 24637A34 */  addiu $v1, $v1, 0x7a34
/* 012680 80037280 8C620000 */  lw    $v0, ($v1)
/* 012684 80037284 38420001 */  xori  $v0, $v0, 1
/* 012688 80037288 0800DD64 */  j     .L80037590
/* 01268C 8003728C AC620000 */   sw    $v0, ($v1)

.L80037290:
/* 012690 80037290 104000B6 */  beqz  $v0, .L8003756C
/* 012694 80037294 24020004 */   addiu $v0, $zero, 4
/* 012698 80037298 3C038007 */  lui   $v1, 0x8007
/* 01269C 8003729C 8C63419C */  lw    $v1, 0x419c($v1)
/* 0126A0 800372A0 A06200AC */  sb    $v0, 0xac($v1)
/* 0126A4 800372A4 24020005 */  addiu $v0, $zero, 5
/* 0126A8 800372A8 3C018007 */  lui   $at, 0x8007
/* 0126AC 800372AC A42279C0 */  sh    $v0, 0x79c0($at)
/* 0126B0 800372B0 0C05272D */  jal   play_sound
/* 0126B4 800372B4 240400D5 */   addiu $a0, $zero, 0xd5
/* 0126B8 800372B8 0000202D */  daddu $a0, $zero, $zero
/* 0126BC 800372BC 24050069 */  addiu $a1, $zero, 0x69
/* 0126C0 800372C0 0080302D */  daddu $a2, $a0, $zero
/* 0126C4 800372C4 240701F4 */  addiu $a3, $zero, 0x1f4
/* 0126C8 800372C8 24020008 */  addiu $v0, $zero, 8
/* 0126CC 800372CC 0C052A46 */  jal   set_music_track
/* 0126D0 800372D0 AFA20010 */   sw    $v0, 0x10($sp)
/* 0126D4 800372D4 0800DD64 */  j     .L80037590
/* 0126D8 800372D8 00000000 */   nop   

/* 0126DC 800372DC 240400D0 */  addiu $a0, $zero, 0xd0
/* 0126E0 800372E0 3C108007 */  lui   $s0, 0x8007
/* 0126E4 800372E4 2610419C */  addiu $s0, $s0, 0x419c
/* 0126E8 800372E8 8E030000 */  lw    $v1, ($s0)
/* 0126EC 800372EC 24020005 */  addiu $v0, $zero, 5
/* 0126F0 800372F0 0C00CDF8 */  jal   func_800337E0
/* 0126F4 800372F4 A06200AC */   sb    $v0, 0xac($v1)
/* 0126F8 800372F8 3C028007 */  lui   $v0, 0x8007
/* 0126FC 800372FC 944279C0 */  lhu   $v0, 0x79c0($v0)
/* 012700 80037300 2442FFF7 */  addiu $v0, $v0, -9
/* 012704 80037304 2C420002 */  sltiu $v0, $v0, 2
/* 012708 80037308 10400004 */  beqz  $v0, .L8003731C
/* 01270C 8003730C 24020014 */   addiu $v0, $zero, 0x14
/* 012710 80037310 8E030000 */  lw    $v1, ($s0)
/* 012714 80037314 0800DCCA */  j     .L80037328
/* 012718 80037318 A06200B0 */   sb    $v0, 0xb0($v1)

.L8003731C:
/* 01271C 8003731C 8E030000 */  lw    $v1, ($s0)
/* 012720 80037320 2402000A */  addiu $v0, $zero, 0xa
/* 012724 80037324 A06200B0 */  sb    $v0, 0xb0($v1)
.L80037328:
/* 012728 80037328 3C038007 */  lui   $v1, 0x8007
/* 01272C 8003732C 8C63419C */  lw    $v1, 0x419c($v1)
/* 012730 80037330 906200B0 */  lbu   $v0, 0xb0($v1)
/* 012734 80037334 0800DD5B */  j     .L8003756C
/* 012738 80037338 A06200AF */   sb    $v0, 0xaf($v1)

/* 01273C 8003733C 3C038007 */  lui   $v1, 0x8007
/* 012740 80037340 946379C0 */  lhu   $v1, 0x79c0($v1)
/* 012744 80037344 2462FFF7 */  addiu $v0, $v1, -9
/* 012748 80037348 2C420002 */  sltiu $v0, $v0, 2
/* 01274C 8003734C 1040001E */  beqz  $v0, .L800373C8
/* 012750 80037350 00031400 */   sll   $v0, $v1, 0x10
/* 012754 80037354 3C108007 */  lui   $s0, 0x8007
/* 012758 80037358 2610419C */  addiu $s0, $s0, 0x419c
/* 01275C 8003735C 8E040000 */  lw    $a0, ($s0)
/* 012760 80037360 808200AF */  lb    $v0, 0xaf($a0)
/* 012764 80037364 908300AF */  lbu   $v1, 0xaf($a0)
/* 012768 80037368 10400002 */  beqz  $v0, .L80037374
/* 01276C 8003736C 2462FFFF */   addiu $v0, $v1, -1
/* 012770 80037370 A08200AF */  sb    $v0, 0xaf($a0)
.L80037374:
/* 012774 80037374 0C00CE0C */  jal   func_80033830
/* 012778 80037378 2404000A */   addiu $a0, $zero, 0xa
/* 01277C 8003737C 1040000E */  beqz  $v0, .L800373B8
/* 012780 80037380 00000000 */   nop   
/* 012784 80037384 8E030000 */  lw    $v1, ($s0)
/* 012788 80037388 806200AF */  lb    $v0, 0xaf($v1)
/* 01278C 8003738C 1440000A */  bnez  $v0, .L800373B8
/* 012790 80037390 24020003 */   addiu $v0, $zero, 3
/* 012794 80037394 A06200AF */  sb    $v0, 0xaf($v1)
/* 012798 80037398 3C03800A */  lui   $v1, 0x800a
/* 01279C 8003739C 2463A650 */  addiu $v1, $v1, -0x59b0
/* 0127A0 800373A0 8C620000 */  lw    $v0, ($v1)
/* 0127A4 800373A4 34420008 */  ori   $v0, $v0, 8
/* 0127A8 800373A8 AC620000 */  sw    $v0, ($v1)
/* 0127AC 800373AC 8E030000 */  lw    $v1, ($s0)
/* 0127B0 800373B0 24020006 */  addiu $v0, $zero, 6
/* 0127B4 800373B4 A06200AC */  sb    $v0, 0xac($v1)
.L800373B8:
/* 0127B8 800373B8 0C00CE1D */  jal   func_80033874
/* 0127BC 800373BC 00000000 */   nop   
/* 0127C0 800373C0 0800DD5B */  j     .L8003756C
/* 0127C4 800373C4 00000000 */   nop   

.L800373C8:
/* 0127C8 800373C8 00021403 */  sra   $v0, $v0, 0x10
/* 0127CC 800373CC 24030005 */  addiu $v1, $zero, 5
/* 0127D0 800373D0 14430012 */  bne   $v0, $v1, .L8003741C
/* 0127D4 800373D4 24020003 */   addiu $v0, $zero, 3
/* 0127D8 800373D8 3C058007 */  lui   $a1, 0x8007
/* 0127DC 800373DC 24A5419C */  addiu $a1, $a1, 0x419c
/* 0127E0 800373E0 8CA40000 */  lw    $a0, ($a1)
/* 0127E4 800373E4 808200AF */  lb    $v0, 0xaf($a0)
/* 0127E8 800373E8 908300AF */  lbu   $v1, 0xaf($a0)
/* 0127EC 800373EC 1440001F */  bnez  $v0, .L8003746C
/* 0127F0 800373F0 2462FFFF */   addiu $v0, $v1, -1
/* 0127F4 800373F4 24020003 */  addiu $v0, $zero, 3
/* 0127F8 800373F8 3C03800A */  lui   $v1, 0x800a
/* 0127FC 800373FC 2463A650 */  addiu $v1, $v1, -0x59b0
/* 012800 80037400 A08200AF */  sb    $v0, 0xaf($a0)
/* 012804 80037404 8C620000 */  lw    $v0, ($v1)
/* 012808 80037408 34420008 */  ori   $v0, $v0, 8
/* 01280C 8003740C AC620000 */  sw    $v0, ($v1)
/* 012810 80037410 8CA30000 */  lw    $v1, ($a1)
/* 012814 80037414 0800DD12 */  j     .L80037448
/* 012818 80037418 24020006 */   addiu $v0, $zero, 6

.L8003741C:
/* 01281C 8003741C 3C048007 */  lui   $a0, 0x8007
/* 012820 80037420 2484419C */  addiu $a0, $a0, 0x419c
/* 012824 80037424 8C830000 */  lw    $v1, ($a0)
/* 012828 80037428 A06200AF */  sb    $v0, 0xaf($v1)
/* 01282C 8003742C 3C03800A */  lui   $v1, 0x800a
/* 012830 80037430 2463A650 */  addiu $v1, $v1, -0x59b0
/* 012834 80037434 8C620000 */  lw    $v0, ($v1)
/* 012838 80037438 34420008 */  ori   $v0, $v0, 8
/* 01283C 8003743C AC620000 */  sw    $v0, ($v1)
/* 012840 80037440 8C830000 */  lw    $v1, ($a0)
/* 012844 80037444 24020006 */  addiu $v0, $zero, 6
.L80037448:
/* 012848 80037448 0800DD5B */  j     .L8003756C
/* 01284C 8003744C A06200AC */   sb    $v0, 0xac($v1)

/* 012850 80037450 3C108007 */  lui   $s0, 0x8007
/* 012854 80037454 2610419C */  addiu $s0, $s0, 0x419c
/* 012858 80037458 8E040000 */  lw    $a0, ($s0)
/* 01285C 8003745C 808200AF */  lb    $v0, 0xaf($a0)
/* 012860 80037460 908300AF */  lbu   $v1, 0xaf($a0)
/* 012864 80037464 10400003 */  beqz  $v0, .L80037474
/* 012868 80037468 2462FFFF */   addiu $v0, $v1, -1
.L8003746C:
/* 01286C 8003746C 0800DD5B */  j     .L8003756C
/* 012870 80037470 A08200AF */   sb    $v0, 0xaf($a0)

.L80037474:
/* 012874 80037474 0C00AB00 */  jal   general_heap_create
/* 012878 80037478 00000000 */   nop   
/* 01287C 8003747C 0C047624 */  jal   func_8011D890
/* 012880 80037480 00000000 */   nop   
/* 012884 80037484 0C00B7BD */  jal   create_cameras_a
/* 012888 80037488 00000000 */   nop   
/* 01288C 8003748C 0C0482EC */  jal   func_80120BB0
/* 012890 80037490 00000000 */   nop   
/* 012894 80037494 0C047889 */  jal   func_8011E224
/* 012898 80037498 00000000 */   nop   
/* 01289C 8003749C 0C00E12F */  jal   func_800384BC
/* 0128A0 800374A0 00000000 */   nop   
/* 0128A4 800374A4 0C050440 */  jal   func_80141100
/* 0128A8 800374A8 00000000 */   nop   
/* 0128AC 800374AC 0C0B763E */  jal   func_802DD8F8
/* 0128B0 800374B0 0000202D */   daddu $a0, $zero, $zero
/* 0128B4 800374B4 0C04432E */  jal   func_80110CB8
/* 0128B8 800374B8 24040001 */   addiu $a0, $zero, 1
/* 0128BC 800374BC 0C051CFC */  jal   func_801473F0
/* 0128C0 800374C0 00000000 */   nop   
/* 0128C4 800374C4 3C04800A */  lui   $a0, 0x800a
/* 0128C8 800374C8 2484A650 */  addiu $a0, $a0, -0x59b0
/* 0128CC 800374CC 2403FFF7 */  addiu $v1, $zero, -9
/* 0128D0 800374D0 8C820000 */  lw    $v0, ($a0)
/* 0128D4 800374D4 8E050000 */  lw    $a1, ($s0)
/* 0128D8 800374D8 00431024 */  and   $v0, $v0, $v1
/* 0128DC 800374DC 2403FFFD */  addiu $v1, $zero, -3
/* 0128E0 800374E0 00431024 */  and   $v0, $v0, $v1
/* 0128E4 800374E4 AC820000 */  sw    $v0, ($a0)
/* 0128E8 800374E8 3C038007 */  lui   $v1, 0x8007
/* 0128EC 800374EC 846379C0 */  lh    $v1, 0x79c0($v1)
/* 0128F0 800374F0 24020009 */  addiu $v0, $zero, 9
/* 0128F4 800374F4 1062000D */  beq   $v1, $v0, .L8003752C
/* 0128F8 800374F8 A4A0008E */   sh    $zero, 0x8e($a1)
/* 0128FC 800374FC 2862000A */  slti  $v0, $v1, 0xa
/* 012900 80037500 10400005 */  beqz  $v0, .L80037518
/* 012904 80037504 24020005 */   addiu $v0, $zero, 5
/* 012908 80037508 10620011 */  beq   $v1, $v0, .L80037550
/* 01290C 8003750C 2404000E */   addiu $a0, $zero, 0xe
/* 012910 80037510 0800DD64 */  j     .L80037590
/* 012914 80037514 00000000 */   nop   

.L80037518:
/* 012918 80037518 2402000A */  addiu $v0, $zero, 0xa
/* 01291C 8003751C 10620008 */  beq   $v1, $v0, .L80037540
/* 012920 80037520 00000000 */   nop   
/* 012924 80037524 0800DD64 */  j     .L80037590
/* 012928 80037528 00000000 */   nop   

.L8003752C:
/* 01292C 8003752C A0A000A8 */  sb    $zero, 0xa8($a1)
/* 012930 80037530 0C00CD3C */  jal   set_game_mode
/* 012934 80037534 24040010 */   addiu $a0, $zero, 0x10
/* 012938 80037538 0800DD64 */  j     .L80037590
/* 01293C 8003753C 00000000 */   nop   

.L80037540:
/* 012940 80037540 0C00CD3C */  jal   set_game_mode
/* 012944 80037544 24040011 */   addiu $a0, $zero, 0x11
/* 012948 80037548 0800DD64 */  j     .L80037590
/* 01294C 8003754C 00000000 */   nop   

.L80037550:
/* 012950 80037550 2402000B */  addiu $v0, $zero, 0xb
/* 012954 80037554 A4A00086 */  sh    $zero, 0x86($a1)
/* 012958 80037558 A4A2008C */  sh    $v0, 0x8c($a1)
/* 01295C 8003755C 0C00CD3C */  jal   set_game_mode
/* 012960 80037560 A4A0008E */   sh    $zero, 0x8e($a1)
/* 012964 80037564 0800DD64 */  j     .L80037590
/* 012968 80037568 00000000 */   nop   

.L8003756C:
/* 01296C 8003756C 3C02800A */  lui   $v0, 0x800a
/* 012970 80037570 8C42A650 */  lw    $v0, -0x59b0($v0)
/* 012974 80037574 30420008 */  andi  $v0, $v0, 8
/* 012978 80037578 14400005 */  bnez  $v0, .L80037590
/* 01297C 8003757C 00000000 */   nop   
/* 012980 80037580 0C00E64C */  jal   func_80039930
/* 012984 80037584 00000000 */   nop   
/* 012988 80037588 0C00B500 */  jal   update_cameras
/* 01298C 8003758C 00000000 */   nop   
.L80037590:
/* 012990 80037590 8FBF0020 */  lw    $ra, 0x20($sp)
/* 012994 80037594 8FB1001C */  lw    $s1, 0x1c($sp)
/* 012998 80037598 8FB00018 */  lw    $s0, 0x18($sp)
/* 01299C 8003759C 03E00008 */  jr    $ra
/* 0129A0 800375A0 27BD0028 */   addiu $sp, $sp, 0x28

/* 0129A4 800375A4 3C028007 */  lui   $v0, 0x8007
/* 0129A8 800375A8 8C42419C */  lw    $v0, 0x419c($v0)
/* 0129AC 800375AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0129B0 800375B0 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0129B4 800375B4 804300AC */  lb    $v1, 0xac($v0)
/* 0129B8 800375B8 2C620006 */  sltiu $v0, $v1, 6
/* 0129BC 800375BC 1040001B */  beqz  $v0, .L8003762C
/* 0129C0 800375C0 00031080 */   sll   $v0, $v1, 2
/* 0129C4 800375C4 3C01800A */  lui   $at, 0x800a
/* 0129C8 800375C8 00220821 */  addu  $at, $at, $v0
/* 0129CC 800375CC 8C2283C8 */  lw    $v0, -0x7c38($at)
/* 0129D0 800375D0 00400008 */  jr    $v0
/* 0129D4 800375D4 00000000 */   nop   
/* 0129D8 800375D8 3C018007 */  lui   $at, 0x8007
/* 0129DC 800375DC AC207A28 */  sw    $zero, 0x7a28($at)
/* 0129E0 800375E0 3C018007 */  lui   $at, 0x8007
/* 0129E4 800375E4 AC207A2C */  sw    $zero, 0x7a2c($at)
/* 0129E8 800375E8 3C018007 */  lui   $at, 0x8007
/* 0129EC 800375EC 0800DD89 */  j     .L80037624
/* 0129F0 800375F0 AC207A30 */   sw    $zero, 0x7a30($at)

/* 0129F4 800375F4 0C00DE58 */  jal   func_80037960
/* 0129F8 800375F8 00000000 */   nop   
/* 0129FC 800375FC 3C028007 */  lui   $v0, 0x8007
/* 012A00 80037600 8C42419C */  lw    $v0, 0x419c($v0)
/* 012A04 80037604 90420073 */  lbu   $v0, 0x73($v0)
/* 012A08 80037608 30420001 */  andi  $v0, $v0, 1
/* 012A0C 8003760C 10400007 */  beqz  $v0, .L8003762C
/* 012A10 80037610 00000000 */   nop   
/* 012A14 80037614 0C00DEF2 */  jal   func_80037BC8
/* 012A18 80037618 00000000 */   nop   
/* 012A1C 8003761C 0800DD8B */  j     .L8003762C
/* 012A20 80037620 00000000 */   nop   

.L80037624:
/* 012A24 80037624 0C00DE58 */  jal   func_80037960
/* 012A28 80037628 00000000 */   nop   
.L8003762C:
/* 012A2C 8003762C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 012A30 80037630 03E00008 */  jr    $ra
/* 012A34 80037634 27BD0018 */   addiu $sp, $sp, 0x18

/* 012A38 80037638 3C028007 */  lui   $v0, 0x8007
/* 012A3C 8003763C 8C42419C */  lw    $v0, 0x419c($v0)
/* 012A40 80037640 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 012A44 80037644 AFBF0030 */  sw    $ra, 0x30($sp)
/* 012A48 80037648 AFB7002C */  sw    $s7, 0x2c($sp)
/* 012A4C 8003764C AFB60028 */  sw    $s6, 0x28($sp)
/* 012A50 80037650 AFB50024 */  sw    $s5, 0x24($sp)
/* 012A54 80037654 AFB40020 */  sw    $s4, 0x20($sp)
/* 012A58 80037658 AFB3001C */  sw    $s3, 0x1c($sp)
/* 012A5C 8003765C AFB20018 */  sw    $s2, 0x18($sp)
/* 012A60 80037660 AFB10014 */  sw    $s1, 0x14($sp)
/* 012A64 80037664 AFB00010 */  sw    $s0, 0x10($sp)
/* 012A68 80037668 804300AC */  lb    $v1, 0xac($v0)
/* 012A6C 8003766C 2C620006 */  sltiu $v0, $v1, 6
/* 012A70 80037670 10400029 */  beqz  $v0, .L80037718
/* 012A74 80037674 00031080 */   sll   $v0, $v1, 2
/* 012A78 80037678 3C01800A */  lui   $at, 0x800a
/* 012A7C 8003767C 00220821 */  addu  $at, $at, $v0
/* 012A80 80037680 8C2283E0 */  lw    $v0, -0x7c20($at)
/* 012A84 80037684 00400008 */  jr    $v0
/* 012A88 80037688 00000000 */   nop   
/* 012A8C 8003768C 3C028007 */  lui   $v0, 0x8007
/* 012A90 80037690 8C42419C */  lw    $v0, 0x419c($v0)
/* 012A94 80037694 804300AF */  lb    $v1, 0xaf($v0)
/* 012A98 80037698 804200B0 */  lb    $v0, 0xb0($v0)
/* 012A9C 8003769C 44836000 */  mtc1  $v1, $f12
/* 012AA0 800376A0 00000000 */  nop   
/* 012AA4 800376A4 46806320 */  cvt.s.w $f12, $f12
/* 012AA8 800376A8 44820000 */  mtc1  $v0, $f0
/* 012AAC 800376AC 00000000 */  nop   
/* 012AB0 800376B0 46800020 */  cvt.s.w $f0, $f0
/* 012AB4 800376B4 0800DDC2 */  j     .L80037708
/* 012AB8 800376B8 46006303 */   div.s $f12, $f12, $f0

/* 012ABC 800376BC 44806000 */  mtc1  $zero, $f12
/* 012AC0 800376C0 0800DDC4 */  j     .L80037710
/* 012AC4 800376C4 00000000 */   nop   

/* 012AC8 800376C8 44806000 */  mtc1  $zero, $f12
/* 012ACC 800376CC 0800DDC4 */  j     .L80037710
/* 012AD0 800376D0 00000000 */   nop   

/* 012AD4 800376D4 3C038007 */  lui   $v1, 0x8007
/* 012AD8 800376D8 8C63419C */  lw    $v1, 0x419c($v1)
/* 012ADC 800376DC 806200AF */  lb    $v0, 0xaf($v1)
/* 012AE0 800376E0 806300B0 */  lb    $v1, 0xb0($v1)
/* 012AE4 800376E4 2442FFFF */  addiu $v0, $v0, -1
/* 012AE8 800376E8 00621023 */  subu  $v0, $v1, $v0
/* 012AEC 800376EC 44826000 */  mtc1  $v0, $f12
/* 012AF0 800376F0 00000000 */  nop   
/* 012AF4 800376F4 46806320 */  cvt.s.w $f12, $f12
/* 012AF8 800376F8 44830000 */  mtc1  $v1, $f0
/* 012AFC 800376FC 00000000 */  nop   
/* 012B00 80037700 46800020 */  cvt.s.w $f0, $f0
/* 012B04 80037704 46006303 */  div.s $f12, $f12, $f0
.L80037708:
/* 012B08 80037708 460C6302 */  mul.s $f12, $f12, $f12
/* 012B0C 8003770C 00000000 */  nop   
.L80037710:
/* 012B10 80037710 0C00DE5A */  jal   func_80037968
/* 012B14 80037714 46006386 */   mov.s $f14, $f12
.L80037718:
/* 012B18 80037718 3C03FF10 */  lui   $v1, 0xff10
/* 012B1C 8003771C 3463013F */  ori   $v1, $v1, 0x13f
/* 012B20 80037720 3C10800A */  lui   $s0, 0x800a
/* 012B24 80037724 2610A66C */  addiu $s0, $s0, -0x5994
/* 012B28 80037728 3C12E700 */  lui   $s2, 0xe700
/* 012B2C 8003772C 8E110000 */  lw    $s1, ($s0)
/* 012B30 80037730 3C04800A */  lui   $a0, 0x800a
/* 012B34 80037734 8C84A64C */  lw    $a0, -0x59b4($a0)
/* 012B38 80037738 0220102D */  daddu $v0, $s1, $zero
/* 012B3C 8003773C 26310008 */  addiu $s1, $s1, 8
/* 012B40 80037740 AE110000 */  sw    $s1, ($s0)
/* 012B44 80037744 AC520000 */  sw    $s2, ($v0)
/* 012B48 80037748 AC400004 */  sw    $zero, 4($v0)
/* 012B4C 8003774C 26220008 */  addiu $v0, $s1, 8
/* 012B50 80037750 AE020000 */  sw    $v0, ($s0)
/* 012B54 80037754 0C0187A4 */  jal   osVirtualToPhysical
/* 012B58 80037758 AE230000 */   sw    $v1, ($s1)
/* 012B5C 8003775C 3C060050 */  lui   $a2, 0x50
/* 012B60 80037760 34C603C0 */  ori   $a2, $a2, 0x3c0
/* 012B64 80037764 3C07E300 */  lui   $a3, 0xe300
/* 012B68 80037768 34E70A01 */  ori   $a3, $a3, 0xa01
/* 012B6C 8003776C 3C08D9C0 */  lui   $t0, 0xd9c0
/* 012B70 80037770 3508F9FA */  ori   $t0, $t0, 0xf9fa
/* 012B74 80037774 3C0AD9FF */  lui   $t2, 0xd9ff
/* 012B78 80037778 354AFFFF */  ori   $t2, $t2, 0xffff
/* 012B7C 8003777C 3C090022 */  lui   $t1, 0x22
/* 012B80 80037780 35290005 */  ori   $t1, $t1, 5
/* 012B84 80037784 3C0BDC08 */  lui   $t3, 0xdc08
/* 012B88 80037788 356B060A */  ori   $t3, $t3, 0x60a
/* 012B8C 8003778C 3C0CDC08 */  lui   $t4, 0xdc08
/* 012B90 80037790 358C090A */  ori   $t4, $t4, 0x90a
/* 012B94 80037794 3C0DD700 */  lui   $t5, 0xd700
/* 012B98 80037798 35AD0002 */  ori   $t5, $t5, 2
/* 012B9C 8003779C 3C0EE300 */  lui   $t6, 0xe300
/* 012BA0 800377A0 35CE0F00 */  ori   $t6, $t6, 0xf00
/* 012BA4 800377A4 3C0FE300 */  lui   $t7, 0xe300
/* 012BA8 800377A8 35EF0C00 */  ori   $t7, $t7, 0xc00
/* 012BAC 800377AC 3C13E300 */  lui   $s3, 0xe300
/* 012BB0 800377B0 36731201 */  ori   $s3, $s3, 0x1201
/* 012BB4 800377B4 3C14E300 */  lui   $s4, 0xe300
/* 012BB8 800377B8 36941801 */  ori   $s4, $s4, 0x1801
/* 012BBC 800377BC 3C15E300 */  lui   $s5, 0xe300
/* 012BC0 800377C0 36B50D01 */  ori   $s5, $s5, 0xd01
/* 012BC4 800377C4 3C16E300 */  lui   $s6, 0xe300
/* 012BC8 800377C8 36D61402 */  ori   $s6, $s6, 0x1402
/* 012BCC 800377CC 3C17E300 */  lui   $s7, 0xe300
/* 012BD0 800377D0 36F71700 */  ori   $s7, $s7, 0x1700
/* 012BD4 800377D4 3C18E200 */  lui   $t8, 0xe200
/* 012BD8 800377D8 37181E01 */  ori   $t8, $t8, 0x1e01
/* 012BDC 800377DC 8E030000 */  lw    $v1, ($s0)
/* 012BE0 800377E0 0000202D */  daddu $a0, $zero, $zero
/* 012BE4 800377E4 AE220004 */  sw    $v0, 4($s1)
/* 012BE8 800377E8 3C02ED00 */  lui   $v0, 0xed00
/* 012BEC 800377EC 0060282D */  daddu $a1, $v1, $zero
/* 012BF0 800377F0 24630008 */  addiu $v1, $v1, 8
/* 012BF4 800377F4 AE030000 */  sw    $v1, ($s0)
/* 012BF8 800377F8 ACA20000 */  sw    $v0, ($a1)
/* 012BFC 800377FC 24620008 */  addiu $v0, $v1, 8
/* 012C00 80037800 ACA60004 */  sw    $a2, 4($a1)
/* 012C04 80037804 AE020000 */  sw    $v0, ($s0)
/* 012C08 80037808 24620010 */  addiu $v0, $v1, 0x10
/* 012C0C 8003780C AC670000 */  sw    $a3, ($v1)
/* 012C10 80037810 AC600004 */  sw    $zero, 4($v1)
/* 012C14 80037814 AE020000 */  sw    $v0, ($s0)
/* 012C18 80037818 24620018 */  addiu $v0, $v1, 0x18
/* 012C1C 8003781C AC720008 */  sw    $s2, 8($v1)
/* 012C20 80037820 AC60000C */  sw    $zero, 0xc($v1)
/* 012C24 80037824 AE020000 */  sw    $v0, ($s0)
/* 012C28 80037828 24620020 */  addiu $v0, $v1, 0x20
/* 012C2C 8003782C AC680010 */  sw    $t0, 0x10($v1)
/* 012C30 80037830 AC600014 */  sw    $zero, 0x14($v1)
/* 012C34 80037834 AE020000 */  sw    $v0, ($s0)
/* 012C38 80037838 24620028 */  addiu $v0, $v1, 0x28
/* 012C3C 8003783C AC6A0018 */  sw    $t2, 0x18($v1)
/* 012C40 80037840 AC69001C */  sw    $t1, 0x1c($v1)
/* 012C44 80037844 AE020000 */  sw    $v0, ($s0)
/* 012C48 80037848 3C02DB02 */  lui   $v0, 0xdb02
/* 012C4C 8003784C AC620020 */  sw    $v0, 0x20($v1)
/* 012C50 80037850 24020018 */  addiu $v0, $zero, 0x18
/* 012C54 80037854 AC620024 */  sw    $v0, 0x24($v1)
/* 012C58 80037858 24620030 */  addiu $v0, $v1, 0x30
/* 012C5C 8003785C 3C058007 */  lui   $a1, 0x8007
/* 012C60 80037860 24A57A40 */  addiu $a1, $a1, 0x7a40
/* 012C64 80037864 AE020000 */  sw    $v0, ($s0)
/* 012C68 80037868 24620038 */  addiu $v0, $v1, 0x38
/* 012C6C 8003786C AC65002C */  sw    $a1, 0x2c($v1)
/* 012C70 80037870 24A5FFF8 */  addiu $a1, $a1, -8
/* 012C74 80037874 AC6B0028 */  sw    $t3, 0x28($v1)
/* 012C78 80037878 AE020000 */  sw    $v0, ($s0)
/* 012C7C 8003787C 24620040 */  addiu $v0, $v1, 0x40
/* 012C80 80037880 AC6C0030 */  sw    $t4, 0x30($v1)
/* 012C84 80037884 AC650034 */  sw    $a1, 0x34($v1)
/* 012C88 80037888 AE020000 */  sw    $v0, ($s0)
/* 012C8C 8003788C 2402FFFF */  addiu $v0, $zero, -1
/* 012C90 80037890 AC62003C */  sw    $v0, 0x3c($v1)
/* 012C94 80037894 24620048 */  addiu $v0, $v1, 0x48
/* 012C98 80037898 AC6D0038 */  sw    $t5, 0x38($v1)
/* 012C9C 8003789C AE020000 */  sw    $v0, ($s0)
/* 012CA0 800378A0 24620050 */  addiu $v0, $v1, 0x50
/* 012CA4 800378A4 AC6E0040 */  sw    $t6, 0x40($v1)
/* 012CA8 800378A8 AC600044 */  sw    $zero, 0x44($v1)
/* 012CAC 800378AC AE020000 */  sw    $v0, ($s0)
/* 012CB0 800378B0 3C020008 */  lui   $v0, 8
/* 012CB4 800378B4 AC6F0048 */  sw    $t7, 0x48($v1)
/* 012CB8 800378B8 AC62004C */  sw    $v0, 0x4c($v1)
/* 012CBC 800378BC 24620058 */  addiu $v0, $v1, 0x58
/* 012CC0 800378C0 AE020000 */  sw    $v0, ($s0)
/* 012CC4 800378C4 24022000 */  addiu $v0, $zero, 0x2000
/* 012CC8 800378C8 AC620054 */  sw    $v0, 0x54($v1)
/* 012CCC 800378CC 24620060 */  addiu $v0, $v1, 0x60
/* 012CD0 800378D0 AC730050 */  sw    $s3, 0x50($v1)
/* 012CD4 800378D4 AE020000 */  sw    $v0, ($s0)
/* 012CD8 800378D8 240200C0 */  addiu $v0, $zero, 0xc0
/* 012CDC 800378DC AC62005C */  sw    $v0, 0x5c($v1)
/* 012CE0 800378E0 24620068 */  addiu $v0, $v1, 0x68
/* 012CE4 800378E4 AC740058 */  sw    $s4, 0x58($v1)
/* 012CE8 800378E8 AE020000 */  sw    $v0, ($s0)
/* 012CEC 800378EC 24620070 */  addiu $v0, $v1, 0x70
/* 012CF0 800378F0 AC750060 */  sw    $s5, 0x60($v1)
/* 012CF4 800378F4 AC600064 */  sw    $zero, 0x64($v1)
/* 012CF8 800378F8 AE020000 */  sw    $v0, ($s0)
/* 012CFC 800378FC 24020C00 */  addiu $v0, $zero, 0xc00
/* 012D00 80037900 AC62006C */  sw    $v0, 0x6c($v1)
/* 012D04 80037904 24620078 */  addiu $v0, $v1, 0x78
/* 012D08 80037908 AC760068 */  sw    $s6, 0x68($v1)
/* 012D0C 8003790C AE020000 */  sw    $v0, ($s0)
/* 012D10 80037910 24620080 */  addiu $v0, $v1, 0x80
/* 012D14 80037914 AC770070 */  sw    $s7, 0x70($v1)
/* 012D18 80037918 AC600074 */  sw    $zero, 0x74($v1)
/* 012D1C 8003791C AE020000 */  sw    $v0, ($s0)
/* 012D20 80037920 AC780078 */  sw    $t8, 0x78($v1)
/* 012D24 80037924 0C00B5CF */  jal   render_frame
/* 012D28 80037928 AC60007C */   sw    $zero, 0x7c($v1)
/* 012D2C 8003792C 0C00B5CF */  jal   render_frame
/* 012D30 80037930 24040001 */   addiu $a0, $zero, 1
/* 012D34 80037934 8FBF0030 */  lw    $ra, 0x30($sp)
/* 012D38 80037938 8FB7002C */  lw    $s7, 0x2c($sp)
/* 012D3C 8003793C 8FB60028 */  lw    $s6, 0x28($sp)
/* 012D40 80037940 8FB50024 */  lw    $s5, 0x24($sp)
/* 012D44 80037944 8FB40020 */  lw    $s4, 0x20($sp)
/* 012D48 80037948 8FB3001C */  lw    $s3, 0x1c($sp)
/* 012D4C 8003794C 8FB20018 */  lw    $s2, 0x18($sp)
/* 012D50 80037950 8FB10014 */  lw    $s1, 0x14($sp)
/* 012D54 80037954 8FB00010 */  lw    $s0, 0x10($sp)
/* 012D58 80037958 03E00008 */  jr    $ra
/* 012D5C 8003795C 27BD0038 */   addiu $sp, $sp, 0x38
