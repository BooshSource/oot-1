glabel func_809F2254
/* 00774 809F2254 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00778 809F2258 AFB00030 */  sw      $s0, 0x0030($sp)
/* 0077C 809F225C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00780 809F2260 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 00784 809F2264 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00788 809F2268 AFA5003C */  sw      $a1, 0x003C($sp)
/* 0078C 809F226C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00790 809F2270 24840560 */  addiu   $a0, $a0, 0x0560           ## $a0 = 06000560
/* 00794 809F2274 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00798 809F2278 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 0079C 809F227C 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 007A0 809F2280 468021A0 */  cvt.s.w $f6, $f4
/* 007A4 809F2284 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 007A8 809F2288 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 007AC 809F228C 24A50560 */  addiu   $a1, $a1, 0x0560           ## $a1 = 06000560
/* 007B0 809F2290 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 007B4 809F2294 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 007B8 809F2298 4600320D */  trunc.w.s $f8, $f6
/* 007BC 809F229C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 007C0 809F22A0 440F4000 */  mfc1    $t7, $f8
/* 007C4 809F22A4 00000000 */  nop
/* 007C8 809F22A8 A60F0248 */  sh      $t7, 0x0248($s0)           ## 00000248
/* 007CC 809F22AC 86180248 */  lh      $t8, 0x0248($s0)           ## 00000248
/* 007D0 809F22B0 AFB90014 */  sw      $t9, 0x0014($sp)
/* 007D4 809F22B4 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 007D8 809F22B8 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 007DC 809F22BC 00000000 */  nop
/* 007E0 809F22C0 46805420 */  cvt.s.w $f16, $f10
/* 007E4 809F22C4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 007E8 809F22C8 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 007EC 809F22CC 2408000F */  addiu   $t0, $zero, 0x000F         ## $t0 = 0000000F
/* 007F0 809F22D0 24090005 */  addiu   $t1, $zero, 0x0005         ## $t1 = 00000005
/* 007F4 809F22D4 240A0014 */  addiu   $t2, $zero, 0x0014         ## $t2 = 00000014
/* 007F8 809F22D8 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 007FC 809F22DC 240C000A */  addiu   $t4, $zero, 0x000A         ## $t4 = 0000000A
/* 00800 809F22E0 AFAC0020 */  sw      $t4, 0x0020($sp)
/* 00804 809F22E4 AFAB001C */  sw      $t3, 0x001C($sp)
/* 00808 809F22E8 AFAA0018 */  sw      $t2, 0x0018($sp)
/* 0080C 809F22EC AFA90014 */  sw      $t1, 0x0014($sp)
/* 00810 809F22F0 AFA80010 */  sw      $t0, 0x0010($sp)
/* 00814 809F22F4 8FA4003C */  lw      $a0, 0x003C($sp)
/* 00818 809F22F8 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 0081C 809F22FC 3C0640C0 */  lui     $a2, 0x40C0                ## $a2 = 40C00000
/* 00820 809F2300 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00824 809F2304 0C00A5E9 */  jal     EffectSsHahen_SpawnBurst
/* 00828 809F2308 AFA00024 */  sw      $zero, 0x0024($sp)
/* 0082C 809F230C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00830 809F2310 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00834 809F2314 2405387C */  addiu   $a1, $zero, 0x387C         ## $a1 = 0000387C
/* 00838 809F2318 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0083C 809F231C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00840 809F2320 2405387D */  addiu   $a1, $zero, 0x387D         ## $a1 = 0000387D
/* 00844 809F2324 3C0D809F */  lui     $t5, %hi(func_809F2344)    ## $t5 = 809F0000
/* 00848 809F2328 25AD2344 */  addiu   $t5, $t5, %lo(func_809F2344) ## $t5 = 809F2344
/* 0084C 809F232C AE0D022C */  sw      $t5, 0x022C($s0)           ## 0000022C
/* 00850 809F2330 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 00854 809F2334 8FB00030 */  lw      $s0, 0x0030($sp)
/* 00858 809F2338 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0085C 809F233C 03E00008 */  jr      $ra
/* 00860 809F2340 00000000 */  nop
