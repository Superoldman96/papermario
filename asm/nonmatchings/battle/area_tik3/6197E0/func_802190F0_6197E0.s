.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802190F0_6197E0
/* 6197E0 802190F0 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 6197E4 802190F4 AFB00020 */  sw        $s0, 0x20($sp)
/* 6197E8 802190F8 0080802D */  daddu     $s0, $a0, $zero
/* 6197EC 802190FC AFBF0028 */  sw        $ra, 0x28($sp)
/* 6197F0 80219100 AFB10024 */  sw        $s1, 0x24($sp)
/* 6197F4 80219104 F7BE0058 */  sdc1      $f30, 0x58($sp)
/* 6197F8 80219108 F7BC0050 */  sdc1      $f28, 0x50($sp)
/* 6197FC 8021910C F7BA0048 */  sdc1      $f26, 0x48($sp)
/* 619800 80219110 F7B80040 */  sdc1      $f24, 0x40($sp)
/* 619804 80219114 F7B60038 */  sdc1      $f22, 0x38($sp)
/* 619808 80219118 F7B40030 */  sdc1      $f20, 0x30($sp)
/* 61980C 8021911C 8E02000C */  lw        $v0, 0xc($s0)
/* 619810 80219120 0C0B1EAF */  jal       get_variable
/* 619814 80219124 8C450000 */   lw       $a1, ($v0)
/* 619818 80219128 0040882D */  daddu     $s1, $v0, $zero
/* 61981C 8021912C 24040001 */  addiu     $a0, $zero, 1
/* 619820 80219130 1224002F */  beq       $s1, $a0, .L802191F0
/* 619824 80219134 AE110070 */   sw       $s1, 0x70($s0)
/* 619828 80219138 2A220002 */  slti      $v0, $s1, 2
/* 61982C 8021913C 10400005 */  beqz      $v0, .L80219154
/* 619830 80219140 24020002 */   addiu    $v0, $zero, 2
/* 619834 80219144 12200009 */  beqz      $s1, .L8021916C
/* 619838 80219148 2402008E */   addiu    $v0, $zero, 0x8e
/* 61983C 8021914C 0808653C */  j         .L802194F0
/* 619840 80219150 00000000 */   nop      
.L80219154:
/* 619844 80219154 12220085 */  beq       $s1, $v0, .L8021936C
/* 619848 80219158 24020003 */   addiu    $v0, $zero, 3
/* 61984C 8021915C 12220013 */  beq       $s1, $v0, .L802191AC
/* 619850 80219160 2403005B */   addiu    $v1, $zero, 0x5b
/* 619854 80219164 0808653C */  j         .L802194F0
/* 619858 80219168 00000000 */   nop      
.L8021916C:
/* 61985C 8021916C 3C01430E */  lui       $at, 0x430e
/* 619860 80219170 44812000 */  mtc1      $at, $f4
/* 619864 80219174 3C01C2EC */  lui       $at, 0xc2ec
/* 619868 80219178 4481F000 */  mtc1      $at, $f30
/* 61986C 8021917C 2403FF8A */  addiu     $v1, $zero, -0x76
/* 619870 80219180 AFA00014 */  sw        $zero, 0x14($sp)
/* 619874 80219184 E7A40010 */  swc1      $f4, 0x10($sp)
/* 619878 80219188 AE020090 */  sw        $v0, 0x90($s0)
/* 61987C 8021918C 2402002C */  addiu     $v0, $zero, 0x2c
/* 619880 80219190 AE02009C */  sw        $v0, 0x9c($s0)
/* 619884 80219194 24020003 */  addiu     $v0, $zero, 3
/* 619888 80219198 AE000094 */  sw        $zero, 0x94($s0)
/* 61988C 8021919C AE030098 */  sw        $v1, 0x98($s0)
/* 619890 802191A0 AE0300A0 */  sw        $v1, 0xa0($s0)
/* 619894 802191A4 08086478 */  j         .L802191E0
/* 619898 802191A8 AE0200A4 */   sw       $v0, 0xa4($s0)
.L802191AC:
/* 61989C 802191AC 3C0142B6 */  lui       $at, 0x42b6
/* 6198A0 802191B0 44812000 */  mtc1      $at, $f4
/* 6198A4 802191B4 3C01C2EC */  lui       $at, 0xc2ec
/* 6198A8 802191B8 4481F000 */  mtc1      $at, $f30
/* 6198AC 802191BC 2402FF8A */  addiu     $v0, $zero, -0x76
/* 6198B0 802191C0 AFA00014 */  sw        $zero, 0x14($sp)
/* 6198B4 802191C4 E7A40010 */  swc1      $f4, 0x10($sp)
/* 6198B8 802191C8 AE030090 */  sw        $v1, 0x90($s0)
/* 6198BC 802191CC AE000094 */  sw        $zero, 0x94($s0)
/* 6198C0 802191D0 AE020098 */  sw        $v0, 0x98($s0)
/* 6198C4 802191D4 AE03009C */  sw        $v1, 0x9c($s0)
/* 6198C8 802191D8 AE0200A0 */  sw        $v0, 0xa0($s0)
/* 6198CC 802191DC AE1100A4 */  sw        $s1, 0xa4($s0)
.L802191E0:
/* 6198D0 802191E0 AE0000A8 */  sw        $zero, 0xa8($s0)
/* 6198D4 802191E4 AE0000B0 */  sw        $zero, 0xb0($s0)
/* 6198D8 802191E8 0808653C */  j         .L802194F0
/* 6198DC 802191EC AE040070 */   sw       $a0, 0x70($s0)
.L802191F0:
/* 6198E0 802191F0 8E0200A8 */  lw        $v0, 0xa8($s0)
/* 6198E4 802191F4 8E0300A4 */  lw        $v1, 0xa4($s0)
/* 6198E8 802191F8 00431021 */  addu      $v0, $v0, $v1
/* 6198EC 802191FC AE0200A8 */  sw        $v0, 0xa8($s0)
/* 6198F0 80219200 2842002E */  slti      $v0, $v0, 0x2e
/* 6198F4 80219204 14400003 */  bnez      $v0, .L80219214
/* 6198F8 80219208 00000000 */   nop      
/* 6198FC 8021920C 2402002D */  addiu     $v0, $zero, 0x2d
/* 619900 80219210 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80219214:
/* 619904 80219214 C6040090 */  lwc1      $f4, 0x90($s0)
/* 619908 80219218 46802120 */  cvt.s.w   $f4, $f4
/* 61990C 8021921C E7A40010 */  swc1      $f4, 0x10($sp)
/* 619910 80219220 C6040094 */  lwc1      $f4, 0x94($s0)
/* 619914 80219224 46802120 */  cvt.s.w   $f4, $f4
/* 619918 80219228 E7A40014 */  swc1      $f4, 0x14($sp)
/* 61991C 8021922C C60C00A8 */  lwc1      $f12, 0xa8($s0)
/* 619920 80219230 46806320 */  cvt.s.w   $f12, $f12
/* 619924 80219234 3C0140C9 */  lui       $at, 0x40c9
/* 619928 80219238 34210FD0 */  ori       $at, $at, 0xfd0
/* 61992C 8021923C 4481D000 */  mtc1      $at, $f26
/* 619930 80219240 C61E0098 */  lwc1      $f30, 0x98($s0)
/* 619934 80219244 4680F7A0 */  cvt.s.w   $f30, $f30
/* 619938 80219248 461A6302 */  mul.s     $f12, $f12, $f26
/* 61993C 8021924C 00000000 */  nop       
/* 619940 80219250 C61C009C */  lwc1      $f28, 0x9c($s0)
/* 619944 80219254 4680E720 */  cvt.s.w   $f28, $f28
/* 619948 80219258 3C0143B4 */  lui       $at, 0x43b4
/* 61994C 8021925C 4481C000 */  mtc1      $at, $f24
/* 619950 80219260 C60400A0 */  lwc1      $f4, 0xa0($s0)
/* 619954 80219264 46802120 */  cvt.s.w   $f4, $f4
/* 619958 80219268 E7A40018 */  swc1      $f4, 0x18($sp)
/* 61995C 8021926C 0C00A85B */  jal       sin_rad
/* 619960 80219270 46186303 */   div.s    $f12, $f12, $f24
/* 619964 80219274 46000021 */  cvt.d.s   $f0, $f0
/* 619968 80219278 3C013FF0 */  lui       $at, 0x3ff0
/* 61996C 8021927C 4481B800 */  mtc1      $at, $f23
/* 619970 80219280 4480B000 */  mtc1      $zero, $f22
/* 619974 80219284 C7A40010 */  lwc1      $f4, 0x10($sp)
/* 619978 80219288 4620B001 */  sub.d     $f0, $f22, $f0
/* 61997C 8021928C 46002521 */  cvt.d.s   $f20, $f4
/* 619980 80219290 4620A502 */  mul.d     $f20, $f20, $f0
/* 619984 80219294 00000000 */  nop       
/* 619988 80219298 C60C00A8 */  lwc1      $f12, 0xa8($s0)
/* 61998C 8021929C 46806320 */  cvt.s.w   $f12, $f12
/* 619990 802192A0 461A6302 */  mul.s     $f12, $f12, $f26
/* 619994 802192A4 00000000 */  nop       
/* 619998 802192A8 0C00A85B */  jal       sin_rad
/* 61999C 802192AC 46186303 */   div.s    $f12, $f12, $f24
/* 6199A0 802192B0 4600E002 */  mul.s     $f0, $f28, $f0
/* 6199A4 802192B4 00000000 */  nop       
/* 6199A8 802192B8 8E0200A8 */  lw        $v0, 0xa8($s0)
/* 6199AC 802192BC 00021040 */  sll       $v0, $v0, 1
/* 6199B0 802192C0 44826000 */  mtc1      $v0, $f12
/* 6199B4 802192C4 00000000 */  nop       
/* 6199B8 802192C8 46806320 */  cvt.s.w   $f12, $f12
/* 6199BC 802192CC 461A6302 */  mul.s     $f12, $f12, $f26
/* 6199C0 802192D0 00000000 */  nop       
/* 6199C4 802192D4 46000021 */  cvt.d.s   $f0, $f0
/* 6199C8 802192D8 4620A500 */  add.d     $f20, $f20, $f0
/* 6199CC 802192DC 46186303 */  div.s     $f12, $f12, $f24
/* 6199D0 802192E0 4620A520 */  cvt.s.d   $f20, $f20
/* 6199D4 802192E4 0C00A85B */  jal       sin_rad
/* 6199D8 802192E8 E7B40010 */   swc1     $f20, 0x10($sp)
/* 6199DC 802192EC C60C00A8 */  lwc1      $f12, 0xa8($s0)
/* 6199E0 802192F0 46806320 */  cvt.s.w   $f12, $f12
/* 6199E4 802192F4 461A6302 */  mul.s     $f12, $f12, $f26
/* 6199E8 802192F8 00000000 */  nop       
/* 6199EC 802192FC 3C0142B4 */  lui       $at, 0x42b4
/* 6199F0 80219300 44811000 */  mtc1      $at, $f2
/* 6199F4 80219304 00000000 */  nop       
/* 6199F8 80219308 46020002 */  mul.s     $f0, $f0, $f2
/* 6199FC 8021930C 00000000 */  nop       
/* 619A00 80219310 C7A40014 */  lwc1      $f4, 0x14($sp)
/* 619A04 80219314 46002100 */  add.s     $f4, $f4, $f0
/* 619A08 80219318 46186303 */  div.s     $f12, $f12, $f24
/* 619A0C 8021931C 0C00A85B */  jal       sin_rad
/* 619A10 80219320 E7A40014 */   swc1     $f4, 0x14($sp)
/* 619A14 80219324 C60C00A8 */  lwc1      $f12, 0xa8($s0)
/* 619A18 80219328 46806320 */  cvt.s.w   $f12, $f12
/* 619A1C 8021932C 461A6302 */  mul.s     $f12, $f12, $f26
/* 619A20 80219330 00000000 */  nop       
/* 619A24 80219334 46000021 */  cvt.d.s   $f0, $f0
/* 619A28 80219338 4620B581 */  sub.d     $f22, $f22, $f0
/* 619A2C 8021933C 4600F521 */  cvt.d.s   $f20, $f30
/* 619A30 80219340 4636A502 */  mul.d     $f20, $f20, $f22
/* 619A34 80219344 00000000 */  nop       
/* 619A38 80219348 0C00A85B */  jal       sin_rad
/* 619A3C 8021934C 46186303 */   div.s    $f12, $f12, $f24
/* 619A40 80219350 C7A40018 */  lwc1      $f4, 0x18($sp)
/* 619A44 80219354 46002002 */  mul.s     $f0, $f4, $f0
/* 619A48 80219358 00000000 */  nop       
/* 619A4C 8021935C 46000021 */  cvt.d.s   $f0, $f0
/* 619A50 80219360 4620A500 */  add.d     $f20, $f20, $f0
/* 619A54 80219364 08086538 */  j         .L802194E0
/* 619A58 80219368 2402002D */   addiu    $v0, $zero, 0x2d
.L8021936C:
/* 619A5C 8021936C 8E0200A8 */  lw        $v0, 0xa8($s0)
/* 619A60 80219370 8E0300A4 */  lw        $v1, 0xa4($s0)
/* 619A64 80219374 00431021 */  addu      $v0, $v0, $v1
/* 619A68 80219378 AE0200A8 */  sw        $v0, 0xa8($s0)
/* 619A6C 8021937C 2842005B */  slti      $v0, $v0, 0x5b
/* 619A70 80219380 14400002 */  bnez      $v0, .L8021938C
/* 619A74 80219384 2402005A */   addiu    $v0, $zero, 0x5a
/* 619A78 80219388 AE0200A8 */  sw        $v0, 0xa8($s0)
.L8021938C:
/* 619A7C 8021938C C6040090 */  lwc1      $f4, 0x90($s0)
/* 619A80 80219390 46802120 */  cvt.s.w   $f4, $f4
/* 619A84 80219394 E7A40010 */  swc1      $f4, 0x10($sp)
/* 619A88 80219398 C6040094 */  lwc1      $f4, 0x94($s0)
/* 619A8C 8021939C 46802120 */  cvt.s.w   $f4, $f4
/* 619A90 802193A0 E7A40014 */  swc1      $f4, 0x14($sp)
/* 619A94 802193A4 C60C00A8 */  lwc1      $f12, 0xa8($s0)
/* 619A98 802193A8 46806320 */  cvt.s.w   $f12, $f12
/* 619A9C 802193AC 3C0140C9 */  lui       $at, 0x40c9
/* 619AA0 802193B0 34210FD0 */  ori       $at, $at, 0xfd0
/* 619AA4 802193B4 4481D000 */  mtc1      $at, $f26
/* 619AA8 802193B8 C61E0098 */  lwc1      $f30, 0x98($s0)
/* 619AAC 802193BC 4680F7A0 */  cvt.s.w   $f30, $f30
/* 619AB0 802193C0 461A6302 */  mul.s     $f12, $f12, $f26
/* 619AB4 802193C4 00000000 */  nop       
/* 619AB8 802193C8 C61C009C */  lwc1      $f28, 0x9c($s0)
/* 619ABC 802193CC 4680E720 */  cvt.s.w   $f28, $f28
/* 619AC0 802193D0 3C0143B4 */  lui       $at, 0x43b4
/* 619AC4 802193D4 4481C000 */  mtc1      $at, $f24
/* 619AC8 802193D8 C60400A0 */  lwc1      $f4, 0xa0($s0)
/* 619ACC 802193DC 46802120 */  cvt.s.w   $f4, $f4
/* 619AD0 802193E0 E7A40018 */  swc1      $f4, 0x18($sp)
/* 619AD4 802193E4 0C00A85B */  jal       sin_rad
/* 619AD8 802193E8 46186303 */   div.s    $f12, $f12, $f24
/* 619ADC 802193EC 46000021 */  cvt.d.s   $f0, $f0
/* 619AE0 802193F0 3C013FF0 */  lui       $at, 0x3ff0
/* 619AE4 802193F4 4481B800 */  mtc1      $at, $f23
/* 619AE8 802193F8 4480B000 */  mtc1      $zero, $f22
/* 619AEC 802193FC C7A40010 */  lwc1      $f4, 0x10($sp)
/* 619AF0 80219400 4620B001 */  sub.d     $f0, $f22, $f0
/* 619AF4 80219404 46002521 */  cvt.d.s   $f20, $f4
/* 619AF8 80219408 4620A502 */  mul.d     $f20, $f20, $f0
/* 619AFC 8021940C 00000000 */  nop       
/* 619B00 80219410 C60C00A8 */  lwc1      $f12, 0xa8($s0)
/* 619B04 80219414 46806320 */  cvt.s.w   $f12, $f12
/* 619B08 80219418 461A6302 */  mul.s     $f12, $f12, $f26
/* 619B0C 8021941C 00000000 */  nop       
/* 619B10 80219420 0C00A85B */  jal       sin_rad
/* 619B14 80219424 46186303 */   div.s    $f12, $f12, $f24
/* 619B18 80219428 4600E002 */  mul.s     $f0, $f28, $f0
/* 619B1C 8021942C 00000000 */  nop       
/* 619B20 80219430 8E0200A8 */  lw        $v0, 0xa8($s0)
/* 619B24 80219434 00021040 */  sll       $v0, $v0, 1
/* 619B28 80219438 44826000 */  mtc1      $v0, $f12
/* 619B2C 8021943C 00000000 */  nop       
/* 619B30 80219440 46806320 */  cvt.s.w   $f12, $f12
/* 619B34 80219444 461A6302 */  mul.s     $f12, $f12, $f26
/* 619B38 80219448 00000000 */  nop       
/* 619B3C 8021944C 46000021 */  cvt.d.s   $f0, $f0
/* 619B40 80219450 4620A500 */  add.d     $f20, $f20, $f0
/* 619B44 80219454 46186303 */  div.s     $f12, $f12, $f24
/* 619B48 80219458 4620A520 */  cvt.s.d   $f20, $f20
/* 619B4C 8021945C 0C00A85B */  jal       sin_rad
/* 619B50 80219460 E7B40010 */   swc1     $f20, 0x10($sp)
/* 619B54 80219464 C60C00A8 */  lwc1      $f12, 0xa8($s0)
/* 619B58 80219468 46806320 */  cvt.s.w   $f12, $f12
/* 619B5C 8021946C 461A6302 */  mul.s     $f12, $f12, $f26
/* 619B60 80219470 00000000 */  nop       
/* 619B64 80219474 3C0142B4 */  lui       $at, 0x42b4
/* 619B68 80219478 44811000 */  mtc1      $at, $f2
/* 619B6C 8021947C 00000000 */  nop       
/* 619B70 80219480 46020002 */  mul.s     $f0, $f0, $f2
/* 619B74 80219484 00000000 */  nop       
/* 619B78 80219488 C7A40014 */  lwc1      $f4, 0x14($sp)
/* 619B7C 8021948C 46002100 */  add.s     $f4, $f4, $f0
/* 619B80 80219490 46186303 */  div.s     $f12, $f12, $f24
/* 619B84 80219494 0C00A85B */  jal       sin_rad
/* 619B88 80219498 E7A40014 */   swc1     $f4, 0x14($sp)
/* 619B8C 8021949C C60C00A8 */  lwc1      $f12, 0xa8($s0)
/* 619B90 802194A0 46806320 */  cvt.s.w   $f12, $f12
/* 619B94 802194A4 461A6302 */  mul.s     $f12, $f12, $f26
/* 619B98 802194A8 00000000 */  nop       
/* 619B9C 802194AC 46000021 */  cvt.d.s   $f0, $f0
/* 619BA0 802194B0 4620B581 */  sub.d     $f22, $f22, $f0
/* 619BA4 802194B4 4600F521 */  cvt.d.s   $f20, $f30
/* 619BA8 802194B8 4636A502 */  mul.d     $f20, $f20, $f22
/* 619BAC 802194BC 00000000 */  nop       
/* 619BB0 802194C0 0C00A85B */  jal       sin_rad
/* 619BB4 802194C4 46186303 */   div.s    $f12, $f12, $f24
/* 619BB8 802194C8 C7A40018 */  lwc1      $f4, 0x18($sp)
/* 619BBC 802194CC 46002002 */  mul.s     $f0, $f4, $f0
/* 619BC0 802194D0 00000000 */  nop       
/* 619BC4 802194D4 46000021 */  cvt.d.s   $f0, $f0
/* 619BC8 802194D8 4620A500 */  add.d     $f20, $f20, $f0
/* 619BCC 802194DC 2402005A */  addiu     $v0, $zero, 0x5a
.L802194E0:
/* 619BD0 802194E0 8E0300A8 */  lw        $v1, 0xa8($s0)
/* 619BD4 802194E4 14620002 */  bne       $v1, $v0, .L802194F0
/* 619BD8 802194E8 4620A7A0 */   cvt.s.d  $f30, $f20
/* 619BDC 802194EC AE1100B0 */  sw        $s1, 0xb0($s0)
.L802194F0:
/* 619BE0 802194F0 C7A40010 */  lwc1      $f4, 0x10($sp)
/* 619BE4 802194F4 4600210D */  trunc.w.s $f4, $f4
/* 619BE8 802194F8 E6040084 */  swc1      $f4, 0x84($s0)
/* 619BEC 802194FC C7A40014 */  lwc1      $f4, 0x14($sp)
/* 619BF0 80219500 4600210D */  trunc.w.s $f4, $f4
/* 619BF4 80219504 E6040088 */  swc1      $f4, 0x88($s0)
/* 619BF8 80219508 4600F10D */  trunc.w.s $f4, $f30
/* 619BFC 8021950C E604008C */  swc1      $f4, 0x8c($s0)
/* 619C00 80219510 8FBF0028 */  lw        $ra, 0x28($sp)
/* 619C04 80219514 8FB10024 */  lw        $s1, 0x24($sp)
/* 619C08 80219518 8FB00020 */  lw        $s0, 0x20($sp)
/* 619C0C 8021951C D7BE0058 */  ldc1      $f30, 0x58($sp)
/* 619C10 80219520 D7BC0050 */  ldc1      $f28, 0x50($sp)
/* 619C14 80219524 D7BA0048 */  ldc1      $f26, 0x48($sp)
/* 619C18 80219528 D7B80040 */  ldc1      $f24, 0x40($sp)
/* 619C1C 8021952C D7B60038 */  ldc1      $f22, 0x38($sp)
/* 619C20 80219530 D7B40030 */  ldc1      $f20, 0x30($sp)
/* 619C24 80219534 24020002 */  addiu     $v0, $zero, 2
/* 619C28 80219538 03E00008 */  jr        $ra
/* 619C2C 8021953C 27BD0060 */   addiu    $sp, $sp, 0x60