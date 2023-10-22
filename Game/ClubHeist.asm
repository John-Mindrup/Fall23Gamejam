;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module ClubHeist
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _danceOff
	.globl _EndScreen
	.globl _animateDancing
	.globl _gameover
	.globl _checkInput
	.globl _init
	.globl _level_two_init
	.globl _level_one_init
	.globl _animatePlayer
	.globl _init_bouncer
	.globl _init_cardboard
	.globl _init_character
	.globl _init_player
	.globl _updateSwitches
	.globl _rand
	.globl _initrand
	.globl _Run_Bouncer
	.globl _Destroy_Bouncer
	.globl _Move_Bouncer
	.globl _Destroy_Box
	.globl _Move_Box
	.globl _Destroy_Character
	.globl _Move_Character
	.globl _set_sprite_data
	.globl _set_win_tiles
	.globl _set_win_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _MoveCooldown
	.globl _PlayerState
	.globl _In_Loading_Screen
	.globl _spriteIndex
	.globl _tilesetIndex
	.globl _LevelTwoTutorial
	.globl _EndScreenMap
	.globl _ClubCharacterSprites
	.globl _LevelTwoMapB
	.globl _LevelTwoMapA
	.globl _LevelTwoStartMap
	.globl _GameOverMap
	.globl _LevelOneTutorialMap
	.globl _EmptyMap
	.globl _PressStartMap
	.globl _Alphabet
	.globl _MainCharacterFull
	.globl _MainCharacterFullMap
	.globl _ClubFront
	.globl _SpriteSet
	.globl _Tileset
	.globl _Dance_Master
	.globl _Bkg_Chars
	.globl _Bouncer
	.globl _Box
	.globl _Player
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_Player::
	.ds 11
_Box::
	.ds 12
_Bouncer::
	.ds 11
_Bkg_Chars::
	.ds 88
_Dance_Master::
	.ds 11
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_Tileset::
	.ds 1056
_SpriteSet::
	.ds 976
_ClubFront::
	.ds 360
_MainCharacterFullMap::
	.ds 24
_MainCharacterFull::
	.ds 400
_Alphabet::
	.ds 432
_PressStartMap::
	.ds 11
_EmptyMap::
	.ds 1024
_LevelOneTutorialMap::
	.ds 24
_GameOverMap::
	.ds 9
_LevelTwoStartMap::
	.ds 18
_LevelTwoMapA::
	.ds 360
_LevelTwoMapB::
	.ds 360
_ClubCharacterSprites::
	.ds 576
_EndScreenMap::
	.ds 44
_LevelTwoTutorial::
	.ds 100
_tilesetIndex::
	.ds 1
_spriteIndex::
	.ds 1
_In_Loading_Screen::
	.ds 1
_PlayerState::
	.ds 1
_MoveCooldown::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;Character.c:17: void Move_Character(struct Character* character){
;	---------------------------------
; Function Move_Character
; ---------------------------------
_Move_Character::
	add	sp, #-6
	ld	c, e
	ld	b, d
;Character.c:19: move_sprite(character->spriteids[0], character->x, character->y);
	ld	hl, #0x0008
	add	hl, bc
	inc	sp
	inc	sp
	ld	e, l
	ld	d, h
	push	de
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl), a
	ld	hl, #0x0007
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	inc	hl
	ld	d, a
	ld	a, (de)
	ld	(hl), a
	ld	a, (bc)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	(de), a
	inc	de
;Character.c:20: move_sprite(character->spriteids[1], character->x + SPRITE_WIDTH, character->y);
	ld	a, (hl-)
	ld	(de), a
	pop	de
	push	de
	ld	a, (de)
	ld	(hl-), a
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	inc	hl
	ld	d, a
	ld	a, (de)
	add	a, #0x08
	ld	(hl), a
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	(de), a
	inc	de
;Character.c:21: move_sprite(character->spriteids[2], character->x, character->y+ SPRITE_WIDTH);
	ld	a, (hl-)
	ld	(de), a
	pop	de
	push	de
	ld	a, (de)
	add	a, #0x08
	ld	(hl-), a
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	inc	hl
	ld	d, a
	ld	a, (de)
	ld	(hl), a
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;Character.c:22: move_sprite(character->spriteids[3], character->x + SPRITE_WIDTH, character->y + SPRITE_WIDTH);
	pop	de
	push	de
	ld	a, (de)
	add	a, #0x08
	ld	(hl-), a
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	add	a, #0x08
	ld	e, a
	inc	bc
	inc	bc
	inc	bc
	ld	a, (bc)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, a
	ld	bc, #_shadow_OAM+0
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ldhl	sp,	#5
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	ld	a, e
	ld	(bc), a
;Character.c:22: move_sprite(character->spriteids[3], character->x + SPRITE_WIDTH, character->y + SPRITE_WIDTH);
;Character.c:23: }
	add	sp, #6
	ret
;Character.c:24: void Destroy_Character(struct Character* bouncer){
;	---------------------------------
; Function Destroy_Character
; ---------------------------------
_Destroy_Character::
	push	de
;Character.c:25: for(int i = 0; i < 4; i++){
	ld	bc, #0x0000
00104$:
	ld	a, c
	sub	a, #0x04
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00106$
;Character.c:26: set_sprite_tile(bouncer->spriteids[i], 0x7F);
	pop	hl
	push	hl
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	e, a
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, e
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), #0x7f
;Character.c:25: for(int i = 0; i < 4; i++){
	inc	bc
	jr	00104$
00106$:
;Character.c:28: }
	inc	sp
	inc	sp
	ret
;CardboardBox.c:15: void Move_Box(struct CardboardBox* character){
;	---------------------------------
; Function Move_Box
; ---------------------------------
_Move_Box::
	add	sp, #-6
	ld	c, e
	ld	b, d
;CardboardBox.c:17: move_sprite(character->spriteids[0], character->x, character->y);
	ld	hl, #0x0009
	add	hl, bc
	inc	sp
	inc	sp
	ld	e, l
	ld	d, h
	push	de
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl), a
	ld	hl, #0x0008
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	inc	hl
	ld	d, a
	ld	a, (de)
	ld	(hl), a
	ld	a, (bc)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	(de), a
	inc	de
;CardboardBox.c:18: move_sprite(character->spriteids[1], character->x + SPRITE_WIDTH, character->y);
	ld	a, (hl-)
	ld	(de), a
	pop	de
	push	de
	ld	a, (de)
	ld	(hl-), a
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	inc	hl
	ld	d, a
	ld	a, (de)
	add	a, #0x08
	ld	(hl), a
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	(de), a
	inc	de
;CardboardBox.c:19: move_sprite(character->spriteids[2], character->x + SPRITE_WIDTH * 2, character->y);
	ld	a, (hl-)
	ld	(de), a
	pop	de
	push	de
	ld	a, (de)
	ld	(hl-), a
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	inc	hl
	ld	d, a
	ld	a, (de)
	add	a, #0x10
	ld	(hl), a
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	(de), a
	inc	de
;CardboardBox.c:20: move_sprite(character->spriteids[3], character->x, character->y + SPRITE_WIDTH);
	ld	a, (hl-)
	ld	(de), a
	pop	de
	push	de
	ld	a, (de)
	add	a, #0x08
	ld	(hl-), a
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	inc	hl
	ld	d, a
	ld	a, (de)
	ld	(hl), a
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	(de), a
	inc	de
;CardboardBox.c:21: move_sprite(character->spriteids[4], character->x + SPRITE_WIDTH, character->y + SPRITE_WIDTH);
	ld	a, (hl-)
	ld	(de), a
	pop	de
	push	de
	ld	a, (de)
	add	a, #0x08
	ld	(hl-), a
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	inc	hl
	ld	d, a
	ld	a, (de)
	add	a, #0x08
	ld	(hl), a
	ld	hl, #0x0004
	add	hl, bc
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;CardboardBox.c:22: move_sprite(character->spriteids[5], character->x + SPRITE_WIDTH * 2, character->y + SPRITE_WIDTH);
	pop	de
	push	de
	ld	a, (de)
	add	a, #0x08
	ld	(hl-), a
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	add	a, #0x10
	ld	e, a
	ld	hl, #0x0005
	add	hl, bc
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, (hl)
	ld	bc, #_shadow_OAM+0
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ldhl	sp,	#5
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	ld	a, e
	ld	(bc), a
;CardboardBox.c:22: move_sprite(character->spriteids[5], character->x + SPRITE_WIDTH * 2, character->y + SPRITE_WIDTH);
;CardboardBox.c:23: }
	add	sp, #6
	ret
;CardboardBox.c:25: void Destroy_Box(struct CardboardBox* bouncer){
;	---------------------------------
; Function Destroy_Box
; ---------------------------------
_Destroy_Box::
	push	de
;CardboardBox.c:26: for(int i = 0; i < 6; i++){
	ld	bc, #0x0000
00104$:
	ld	a, c
	sub	a, #0x06
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00106$
;CardboardBox.c:27: set_sprite_tile(bouncer->spriteids[i], 0x7F);
	pop	hl
	push	hl
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	e, a
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, e
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), #0x7f
;CardboardBox.c:26: for(int i = 0; i < 6; i++){
	inc	bc
	jr	00104$
00106$:
;CardboardBox.c:29: }
	inc	sp
	inc	sp
	ret
;Bouncer.c:14: void Move_Bouncer(struct Bouncer* character){
;	---------------------------------
; Function Move_Bouncer
; ---------------------------------
_Move_Bouncer::
	add	sp, #-7
	ld	c, e
	ld	b, d
;Bouncer.c:16: move_sprite(character->spriteids[0], character->x, character->y);
	ld	l, c
	ld	h, b
	inc	hl
	inc	sp
	inc	sp
	ld	e, l
	ld	d, h
	push	de
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
	ld	a, (bc)
	ld	(hl), a
	ld	hl, #0x0003
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (de)
	ld	(hl), a
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;Bouncer.c:17: move_sprite(character->spriteids[1], character->x + SPRITE_WIDTH, character->y);
	pop	de
	push	de
	ld	a, (de)
	ld	(hl), a
	ld	a, (bc)
	add	a, #0x08
	ldhl	sp,	#6
	ld	(hl-), a
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	inc	de
	ld	a, (de)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ldhl	sp,	#3
	ld	a, (hl)
	ld	(de), a
	inc	de
	ldhl	sp,	#6
	ld	a, (hl)
	ld	(de), a
;Bouncer.c:18: move_sprite(character->spriteids[2], character->x, character->y + SPRITE_WIDTH);
	pop	de
	push	de
	ld	a, (de)
	add	a, #0x08
	ld	e, a
	ld	a, (bc)
	ld	(hl-), a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	d, (hl)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	pop	de
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, e
	ld	(hl+), a
	ld	e, l
	ld	d, h
	ldhl	sp,	#6
	ld	a, (hl)
	ld	(de), a
;Bouncer.c:19: move_sprite(character->spriteids[3], character->x + SPRITE_WIDTH, character->y + SPRITE_WIDTH);
	pop	de
	push	de
	ld	a, (de)
	add	a, #0x08
	ld	e, a
	ld	a, (bc)
	add	a, #0x08
	ld	(hl-), a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	d, (hl)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	pop	de
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, e
	ld	(hl+), a
	ld	e, l
	ld	d, h
	ldhl	sp,	#6
	ld	a, (hl)
	ld	(de), a
;Bouncer.c:20: move_sprite(character->spriteids[4], character->x, character->y + SPRITE_WIDTH * 2);
	pop	de
	push	de
	ld	a, (de)
	add	a, #0x10
	ldhl	sp,	#3
	ld	(hl), a
	ld	a, (bc)
	ldhl	sp,	#6
	ld	(hl-), a
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ldhl	sp,	#3
	ld	a, (hl)
	ld	(de), a
	inc	de
	ldhl	sp,	#6
;Bouncer.c:21: move_sprite(character->spriteids[5], character->x + SPRITE_WIDTH, character->y + SPRITE_WIDTH * 2);
	ld	a, (hl-)
	dec	hl
	ld	(de), a
	pop	de
	push	de
	ld	a, (de)
	add	a, #0x10
	ld	d, a
	ld	a, (bc)
	add	a, #0x08
	ld	e, a
	push	de
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0005
	add	hl, de
	pop	de
	ld	c, l
	ld	b, h
	ld	a, (bc)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, d
	ld	(hl+), a
	ld	(hl), e
;Bouncer.c:21: move_sprite(character->spriteids[5], character->x + SPRITE_WIDTH, character->y + SPRITE_WIDTH * 2);
;Bouncer.c:22: }
	add	sp, #7
	ret
;Bouncer.c:24: void Destroy_Bouncer(struct Bouncer* bouncer){
;	---------------------------------
; Function Destroy_Bouncer
; ---------------------------------
_Destroy_Bouncer::
	dec	sp
	dec	sp
;Bouncer.c:25: for(int i = 0; i < 6; i++){
	inc	de
	inc	de
	inc	de
	inc	sp
	inc	sp
	push	de
	ld	bc, #0x0000
00104$:
	ld	a, c
	sub	a, #0x06
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00106$
;Bouncer.c:26: set_sprite_tile(bouncer->spriteids[i], 0x7F);
	pop	hl
	push	hl
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	e, a
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, e
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), #0x7f
;Bouncer.c:25: for(int i = 0; i < 6; i++){
	inc	bc
	jr	00104$
00106$:
;Bouncer.c:28: }
	inc	sp
	inc	sp
	ret
;Bouncer.c:30: void Run_Bouncer(struct Bouncer* character)
;	---------------------------------
; Function Run_Bouncer
; ---------------------------------
_Run_Bouncer::
	add	sp, #-8
	ldhl	sp,	#6
	ld	a, e
	ld	(hl+), a
;Bouncer.c:32: character->timer -= 1;
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	dec	a
	ld	c, a
	ld	(de), a
;Bouncer.c:34: move_sprite(character->Noticeid, character->x, character->y - 8);
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0009
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#5
	ld	(hl), a
;Bouncer.c:33: if(character->timer < 16){
	ld	a, c
	xor	a, #0x80
	sub	a, #0x90
	jr	NC, 00102$
;Bouncer.c:34: move_sprite(character->Noticeid, character->x, character->y - 8);
	inc	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	ld	a, (bc)
	add	a, #0xf8
	ldhl	sp,	#2
	ld	(hl), a
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#3
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	(hl+), a
	inc	hl
	ld	a, (hl-)
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), #0x00
	ld	a, #0x02
00115$:
	ldhl	sp,	#0
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00115$
	pop	de
	push	de
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#2
	ld	a, (hl+)
	inc	hl
	ld	(de), a
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl-)
	dec	hl
	ld	b, a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;Bouncer.c:34: move_sprite(character->Noticeid, character->x, character->y - 8);
	jr	00106$
00102$:
;Bouncer.c:37: move_sprite(character->Noticeid, 0, 0);
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ldhl	sp,	#5
	ld	a, (hl-)
	ld	(hl+), a
	ld	(hl), #0x00
	ld	a, #0x02
00116$:
	ldhl	sp,	#4
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00116$
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	a, (hl+)
	inc	hl
	ld	(hl-), a
	ld	a, (hl+)
	inc	hl
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	(hl-), a
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
;Bouncer.c:37: move_sprite(character->Noticeid, 0, 0);
00106$:
;Bouncer.c:39: }
	add	sp, #8
	ret
;ClubHeist.c:28: void updateSwitches(void){
;	---------------------------------
; Function updateSwitches
; ---------------------------------
_updateSwitches::
;ClubHeist.c:30: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:31: }
	ret
;ClubHeist.c:39: void init_player(void){
;	---------------------------------
; Function init_player
; ---------------------------------
_init_player::
;ClubHeist.c:40: Player.height = 16;
	ld	hl, #(_Player + 10)
	ld	(hl), #0x10
;ClubHeist.c:41: Player.width = 16;
	ld	hl, #(_Player + 9)
	ld	(hl), #0x10
;ClubHeist.c:42: Player.x = 16;
	ld	hl, #(_Player + 7)
	ld	(hl), #0x10
;ClubHeist.c:43: Player.y = 88;
	ld	hl, #(_Player + 8)
	ld	(hl), #0x58
;ClubHeist.c:44: Player.animFrame = 0;
	ld	hl, #(_Player + 6)
	ld	(hl), #0x00
;ClubHeist.c:45: set_sprite_tile(spriteIndex, PLAYER_SPRITE_START);
	ld	hl, #_spriteIndex
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
	ld	bc, #_shadow_OAM+0
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x00
;ClubHeist.c:46: Player.spriteids[0] = spriteIndex++;
	ld	hl, #_spriteIndex
	ld	c, (hl)
	inc	(hl)
	ld	hl, #_Player
	ld	(hl), c
;ClubHeist.c:47: set_sprite_tile(spriteIndex, PLAYER_SPRITE_START + 1);
	ld	hl, #_spriteIndex
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
	ld	bc, #_shadow_OAM+0
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x01
;ClubHeist.c:48: Player.spriteids[1] = spriteIndex++;
	ld	hl, #_spriteIndex
	ld	c, (hl)
	inc	(hl)
	ld	hl, #(_Player + 1)
	ld	(hl), c
;ClubHeist.c:49: set_sprite_tile(spriteIndex, PLAYER_SPRITE_START + 2);
	ld	hl, #_spriteIndex
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
	ld	bc, #_shadow_OAM+0
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x02
;ClubHeist.c:50: Player.spriteids[2] = spriteIndex++;
	ld	hl, #_spriteIndex
	ld	c, (hl)
	inc	(hl)
	ld	hl, #(_Player + 2)
	ld	(hl), c
;ClubHeist.c:51: set_sprite_tile(spriteIndex, PLAYER_SPRITE_START + 3);
	ld	hl, #_spriteIndex
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
	ld	bc, #_shadow_OAM+0
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x03
;ClubHeist.c:52: Player.spriteids[3] = spriteIndex++;
	ld	hl, #_spriteIndex
	ld	c, (hl)
	inc	(hl)
	ld	hl, #(_Player + 3)
	ld	(hl), c
;ClubHeist.c:53: Move_Character(&Player);
	ld	de, #_Player
;ClubHeist.c:54: }
	jp	_Move_Character
;ClubHeist.c:56: void init_character(int8_t spriteInd, struct Character *c, int8_t x, int8_t y){
;	---------------------------------
; Function init_character
; ---------------------------------
_init_character::
	dec	sp
	dec	sp
	ldhl	sp,	#1
	ld	(hl), a
;ClubHeist.c:57: c->height = 16;
	ld	hl, #0x000a
	add	hl, de
	ld	(hl), #0x10
;ClubHeist.c:58: c->width = 16;
	ld	hl, #0x0009
	add	hl, de
	ld	(hl), #0x10
;ClubHeist.c:59: c->x = x;
	ld	hl, #0x0007
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,	#4
	ld	a, (hl)
	ld	(bc), a
;ClubHeist.c:60: c->y = y;
	ld	hl, #0x0008
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,	#5
	ld	a, (hl)
	ld	(bc), a
;ClubHeist.c:61: set_sprite_tile(spriteIndex, spriteInd);
	ld	hl, #_spriteIndex
	ld	c, (hl)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	inc	hl
	inc	hl
	ld	c, l
	ld	b, h
	ldhl	sp,	#1
	ld	a, (hl)
	ld	(bc), a
;ClubHeist.c:62: c->spriteids[0] = spriteIndex++;
	ld	hl, #_spriteIndex
	ld	c, (hl)
	inc	(hl)
	ld	a, c
	ld	(de), a
;ClubHeist.c:63: set_sprite_tile(spriteIndex, spriteInd + 1);
	ldhl	sp,	#1
	ld	c, (hl)
	inc	c
	ld	hl, #_spriteIndex
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	pop	de
	ld	(hl), c
;ClubHeist.c:64: c->spriteids[1] = spriteIndex++;
	ld	c, e
	ld	b, d
	inc	bc
	ld	a, (#_spriteIndex)
	ldhl	sp,	#0
	ld	(hl), a
	ld	hl, #_spriteIndex
	inc	(hl)
	ldhl	sp,	#0
;ClubHeist.c:65: set_sprite_tile(spriteIndex, spriteInd + 2);
	ld	a, (hl+)
	ld	(bc), a
	ld	c, (hl)
	inc	c
	inc	c
	ld	hl, #_spriteIndex
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	pop	de
	ld	(hl), c
;ClubHeist.c:66: c->spriteids[2] = spriteIndex++;
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a, (#_spriteIndex)
	ldhl	sp,	#0
	ld	(hl), a
	ld	hl, #_spriteIndex
	inc	(hl)
	ldhl	sp,	#0
;ClubHeist.c:67: set_sprite_tile(spriteIndex, spriteInd + 3);
	ld	a, (hl+)
	ld	(bc), a
	ld	c, (hl)
	inc	c
	inc	c
	inc	c
	ld	hl, #_spriteIndex
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	pop	de
	ld	(hl), c
;ClubHeist.c:68: c->spriteids[3] = spriteIndex++;
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a, (#_spriteIndex)
	ldhl	sp,	#0
	ld	(hl), a
	ld	hl, #_spriteIndex
	inc	(hl)
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(bc), a
;ClubHeist.c:69: Move_Character(c);
;ClubHeist.c:70: }
	call	_Move_Character
	pop	hl
	pop	hl
	pop	af
	jp	(hl)
;ClubHeist.c:72: void init_cardboard(void){
;	---------------------------------
; Function init_cardboard
; ---------------------------------
_init_cardboard::
;ClubHeist.c:73: Box.height = 16;
	ld	bc, #_Box+0
	ld	hl, #(_Box + 11)
	ld	(hl), #0x10
;ClubHeist.c:74: Box.width = 24;
	ld	hl, #(_Box + 10)
	ld	(hl), #0x18
;ClubHeist.c:75: Box.x = 8;
	ld	hl, #(_Box + 8)
	ld	(hl), #0x08
;ClubHeist.c:76: Box.y = 128;
	ld	hl, #(_Box + 9)
	ld	(hl), #0x80
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0x10
;ClubHeist.c:78: Box.spriteids[0] = 0;
	xor	a, a
	ld	(bc), a
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 6)
	ld	(hl), #0x11
;ClubHeist.c:80: Box.spriteids[1] = 1;
	ld	hl, #(_Box + 1)
	ld	(hl), #0x01
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 10)
	ld	(hl), #0x12
;ClubHeist.c:82: Box.spriteids[2] = 2;
	ld	hl, #(_Box + 2)
	ld	(hl), #0x02
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), #0x13
;ClubHeist.c:84: Box.spriteids[3] = 3;
	ld	hl, #(_Box + 3)
	ld	(hl), #0x03
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 18)
	ld	(hl), #0x14
;ClubHeist.c:86: Box.spriteids[4] = 4;
	ld	hl, #(_Box + 4)
	ld	(hl), #0x04
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 22)
	ld	(hl), #0x15
;ClubHeist.c:88: Box.spriteids[5] = 5;
	ld	hl, #(_Box + 5)
	ld	(hl), #0x05
;ClubHeist.c:89: spriteIndex += 6;
	ld	hl, #_spriteIndex
	ld	a, (hl)
	add	a, #0x06
	ld	(hl), a
;ClubHeist.c:90: Move_Box(&Box);
	ld	e, c
	ld	d, b
;ClubHeist.c:91: }
	jp	_Move_Box
;ClubHeist.c:93: void init_bouncer(void){
;	---------------------------------
; Function init_bouncer
; ---------------------------------
_init_bouncer::
;ClubHeist.c:94: Bouncer.timer = rand();
	ld	hl, #_Bouncer + 10
	push	hl
	call	_rand
	pop	hl
	ld	(hl), e
;ClubHeist.c:95: if(Bouncer.timer < 64)
	ld	c, (hl)
	ld	a, c
	xor	a, #0x80
	sub	a, #0xc0
	jr	NC, 00102$
;ClubHeist.c:96: Bouncer.timer += 64;
	ld	a, c
	add	a, #0x40
	ld	(hl), a
00102$:
;ClubHeist.c:97: Bouncer.x = 96;
	ld	hl, #_Bouncer
	ld	(hl), #0x60
;ClubHeist.c:98: Bouncer.y = 120;
	ld	hl, #(_Bouncer + 1)
	ld	(hl), #0x78
;ClubHeist.c:99: set_sprite_tile(spriteIndex, BOUNCER_SPRITE_INDEX);
	ld	hl, #_spriteIndex
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
	ld	bc, #_shadow_OAM+0
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x16
;ClubHeist.c:100: Bouncer.spriteids[0] = spriteIndex++;
	ld	hl, #_spriteIndex
	ld	c, (hl)
	inc	(hl)
	ld	hl, #(_Bouncer + 3)
	ld	(hl), c
;ClubHeist.c:101: set_sprite_tile(spriteIndex, BOUNCER_SPRITE_INDEX + 1);
	ld	hl, #_spriteIndex
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
	ld	bc, #_shadow_OAM+0
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x17
;ClubHeist.c:102: Bouncer.spriteids[1] = spriteIndex++;
	ld	hl, #_spriteIndex
	ld	c, (hl)
	inc	(hl)
	ld	hl, #(_Bouncer + 4)
	ld	(hl), c
;ClubHeist.c:103: set_sprite_tile(spriteIndex, BOUNCER_SPRITE_INDEX + 2);
	ld	hl, #_spriteIndex
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
	ld	bc, #_shadow_OAM+0
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x18
;ClubHeist.c:104: Bouncer.spriteids[2] = spriteIndex++;
	ld	hl, #_spriteIndex
	ld	c, (hl)
	inc	(hl)
	ld	hl, #(_Bouncer + 5)
	ld	(hl), c
;ClubHeist.c:105: set_sprite_tile(spriteIndex, BOUNCER_SPRITE_INDEX + 3);
	ld	hl, #_spriteIndex
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
	ld	bc, #_shadow_OAM+0
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x19
;ClubHeist.c:106: Bouncer.spriteids[3] = spriteIndex++;
	ld	hl, #_spriteIndex
	ld	c, (hl)
	inc	(hl)
	ld	hl, #(_Bouncer + 6)
	ld	(hl), c
;ClubHeist.c:107: set_sprite_tile(spriteIndex, BOUNCER_SPRITE_INDEX + 4);
	ld	hl, #_spriteIndex
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
	ld	bc, #_shadow_OAM+0
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x1a
;ClubHeist.c:108: Bouncer.spriteids[4] = spriteIndex++;
	ld	hl, #_spriteIndex
	ld	c, (hl)
	inc	(hl)
	ld	hl, #(_Bouncer + 7)
	ld	(hl), c
;ClubHeist.c:109: set_sprite_tile(spriteIndex, BOUNCER_SPRITE_INDEX + 5);
	ld	hl, #_spriteIndex
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
	ld	bc, #_shadow_OAM+0
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x1b
;ClubHeist.c:110: Bouncer.spriteids[5] = spriteIndex++;
	ld	hl, #_spriteIndex
	ld	c, (hl)
	inc	(hl)
	ld	hl, #(_Bouncer + 8)
	ld	(hl), c
;ClubHeist.c:111: set_sprite_tile(spriteIndex, 28);
	ld	hl, #_spriteIndex
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
	ld	bc, #_shadow_OAM+0
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x1c
;ClubHeist.c:112: Bouncer.Noticeid = spriteIndex++;
	ld	hl, #_spriteIndex
	ld	c, (hl)
	inc	(hl)
	ld	hl, #(_Bouncer + 9)
	ld	(hl), c
;ClubHeist.c:113: Move_Bouncer(&Bouncer);
	ld	de, #_Bouncer
;ClubHeist.c:114: }
	jp	_Move_Bouncer
;ClubHeist.c:116: void animatePlayer(void){
;	---------------------------------
; Function animatePlayer
; ---------------------------------
_animatePlayer::
;ClubHeist.c:117: switch(Player.animFrame){
	ld	hl, #(_Player + 6)
	ld	c, (hl)
	ld	a, c
	or	a, a
	jr	Z, 00101$
	ld	a, c
	dec	a
	jr	Z, 00102$
	ld	a, c
	sub	a, #0x02
	jp	Z,00103$
	ld	a, c
	sub	a, #0x03
	jp	Z,00104$
	jp	00105$
;ClubHeist.c:118: case 0:
00101$:
;ClubHeist.c:119: set_sprite_tile(Player.spriteids[0], PLAYER_SPRITE_START + 4);
	ld	hl, #_Player
	ld	c, (hl)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), #0x04
;ClubHeist.c:120: set_sprite_tile(Player.spriteids[1], PLAYER_SPRITE_START + 5);
	ld	hl, #(_Player + 1)
	ld	c, (hl)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), #0x05
;ClubHeist.c:121: set_sprite_tile(Player.spriteids[2], PLAYER_SPRITE_START + 6);
	ld	hl, #(_Player + 2)
	ld	c, (hl)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), #0x06
;ClubHeist.c:122: set_sprite_tile(Player.spriteids[3], PLAYER_SPRITE_START + 7);
	ld	hl, #(_Player + 3)
	ld	c, (hl)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), #0x07
;ClubHeist.c:123: break;
	jp	00105$
;ClubHeist.c:124: case 1:
00102$:
;ClubHeist.c:125: set_sprite_tile(Player.spriteids[0], PLAYER_SPRITE_START);
	ld	hl, #_Player
	ld	c, (hl)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), #0x00
;ClubHeist.c:126: set_sprite_tile(Player.spriteids[1], PLAYER_SPRITE_START + 1);
	ld	hl, #(_Player + 1)
	ld	c, (hl)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), #0x01
;ClubHeist.c:127: set_sprite_tile(Player.spriteids[2], PLAYER_SPRITE_START + 2);
	ld	hl, #(_Player + 2)
	ld	c, (hl)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), #0x02
;ClubHeist.c:128: set_sprite_tile(Player.spriteids[3], PLAYER_SPRITE_START + 3);
	ld	hl, #(_Player + 3)
	ld	c, (hl)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), #0x03
;ClubHeist.c:129: break;
	jp	00105$
;ClubHeist.c:130: case 2:
00103$:
;ClubHeist.c:131: set_sprite_tile(Player.spriteids[0], PLAYER_SPRITE_START + 8);
	ld	hl, #_Player
	ld	c, (hl)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), #0x08
;ClubHeist.c:132: set_sprite_tile(Player.spriteids[1], PLAYER_SPRITE_START + 9);
	ld	hl, #(_Player + 1)
	ld	c, (hl)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), #0x09
;ClubHeist.c:133: set_sprite_tile(Player.spriteids[2], PLAYER_SPRITE_START + 10);
	ld	hl, #(_Player + 2)
	ld	c, (hl)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), #0x0a
;ClubHeist.c:134: set_sprite_tile(Player.spriteids[3], PLAYER_SPRITE_START + 11);
	ld	hl, #(_Player + 3)
	ld	c, (hl)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), #0x0b
;ClubHeist.c:135: break;
	jr	00105$
;ClubHeist.c:136: case 3:
00104$:
;ClubHeist.c:137: set_sprite_tile(Player.spriteids[0], PLAYER_SPRITE_START);
	ld	hl, #_Player
	ld	c, (hl)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), #0x00
;ClubHeist.c:138: set_sprite_tile(Player.spriteids[1], PLAYER_SPRITE_START + 1);
	ld	hl, #(_Player + 1)
	ld	c, (hl)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), #0x01
;ClubHeist.c:139: set_sprite_tile(Player.spriteids[2], PLAYER_SPRITE_START + 2);
	ld	hl, #(_Player + 2)
	ld	c, (hl)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), #0x02
;ClubHeist.c:140: set_sprite_tile(Player.spriteids[3], PLAYER_SPRITE_START + 3);
	ld	hl, #(_Player + 3)
	ld	c, (hl)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), #0x03
;ClubHeist.c:142: }
00105$:
;ClubHeist.c:143: Player.animFrame++;
	ld	a, (#(_Player + 6) + 0)
	inc	a
	ld	hl, #(_Player + 6)
	ld	(hl), a
;ClubHeist.c:144: if(Player.animFrame == 4)
;ClubHeist.c:145: Player.animFrame = 0;
	sub	a,#0x04
	ret	NZ
	ld	(hl),a
;ClubHeist.c:146: }
	ret
;ClubHeist.c:148: void level_one_init(void){
;	---------------------------------
; Function level_one_init
; ---------------------------------
_level_one_init::
;ClubHeist.c:150: HIDE_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:151: PlayerState = 1;
	ld	hl, #_PlayerState
	ld	(hl), #0x01
;ClubHeist.c:152: In_Loading_Screen = 1;
	ld	hl, #_In_Loading_Screen
	ld	(hl), #0x01
;ClubHeist.c:153: set_win_tiles(0, 0, 32,32, EmptyMap);
	ld	de, #_EmptyMap
	push	de
	ld	hl, #0x2020
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_win_tiles
	add	sp, #6
;ClubHeist.c:154: set_win_tiles(5, 7, 11, 1, PressStartMap);
	ld	de, #_PressStartMap
	push	de
	ld	hl, #0x10b
	push	hl
	ld	hl, #0x705
	push	hl
	call	_set_win_tiles
	add	sp, #6
;ClubHeist.c:155: set_win_tiles(4, 4, 8, 3, LevelOneTutorialMap);
	ld	de, #_LevelOneTutorialMap
	push	de
	ld	hl, #0x308
	push	hl
	ld	hl, #0x404
	push	hl
	call	_set_win_tiles
	add	sp, #6
;ClubHeist.c:156: init_cardboard();
	call	_init_cardboard
;ClubHeist.c:157: init_bouncer();
	call	_init_bouncer
;ClubHeist.c:158: SHOW_WIN;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x20
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:159: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:160: while(In_Loading_Screen){
00103$:
	ld	a, (#_In_Loading_Screen)
	or	a, a
	ret	Z
;ClubHeist.c:161: if(joypad() & J_START){
	call	_joypad
	rlca
	jr	NC, 00103$
;ClubHeist.c:162: HIDE_WIN;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xdf
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:163: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:164: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:165: initrand(DIV_REG);
	ldh	a, (_DIV_REG + 0)
	ld	b, #0x00
	ld	c, a
	push	bc
	call	_initrand
	pop	hl
;ClubHeist.c:166: In_Loading_Screen = 0;
	ld	hl, #_In_Loading_Screen
	ld	(hl), #0x00
;ClubHeist.c:169: }
	jr	00103$
;ClubHeist.c:171: void level_two_init(void){
;	---------------------------------
; Function level_two_init
; ---------------------------------
_level_two_init::
;ClubHeist.c:172: HIDE_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:174: PlayerState = 2;
	ld	hl, #_PlayerState
	ld	(hl), #0x02
;ClubHeist.c:175: In_Loading_Screen = 1;
	ld	hl, #_In_Loading_Screen
	ld	(hl), #0x01
;ClubHeist.c:176: set_win_tiles(0, 0, 32,32, EmptyMap);
	ld	de, #_EmptyMap
	push	de
	ld	hl, #0x2020
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_win_tiles
	add	sp, #6
;ClubHeist.c:177: set_win_tiles(4, 4, 9, 2, LevelTwoStartMap);
	ld	de, #_LevelTwoStartMap
	push	de
	ld	hl, #0x209
	push	hl
	ld	hl, #0x404
	push	hl
	call	_set_win_tiles
	add	sp, #6
;ClubHeist.c:178: set_win_tiles(0, 7, 20, 5, LevelTwoTutorial);
	ld	de, #_LevelTwoTutorial
	push	de
	ld	hl, #0x514
	push	hl
	ld	hl, #0x700
	push	hl
	call	_set_win_tiles
	add	sp, #6
;ClubHeist.c:179: set_bkg_tiles(0, 0, 20,18, LevelTwoMapA);
	ld	de, #_LevelTwoMapA
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;ClubHeist.c:180: init_player();
	call	_init_player
;ClubHeist.c:181: init_character(61, Bkg_Chars, 64, 32);
	ld	hl, #0x2040
	push	hl
	ld	de, #_Bkg_Chars
	ld	a, #0x3d
	call	_init_character
;ClubHeist.c:182: init_character(61, Bkg_Chars + 1, 80, 32);
	ld	hl, #0x2050
	push	hl
	ld	de, #(_Bkg_Chars + 11)
	ld	a, #0x3d
	call	_init_character
;ClubHeist.c:183: init_character(65, Bkg_Chars + 2, 96, 32);
	ld	hl, #0x2060
	push	hl
	ld	de, #(_Bkg_Chars + 22)
	ld	a, #0x41
	call	_init_character
;ClubHeist.c:184: init_character(0x45, &Dance_Master, 96, 88);
	ld	hl, #0x5860
	push	hl
	ld	de, #_Dance_Master
	ld	a, #0x45
	call	_init_character
;ClubHeist.c:185: SHOW_WIN;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x20
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:186: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:187: while(In_Loading_Screen){
00103$:
	ld	a, (#_In_Loading_Screen)
	or	a, a
	jr	Z, 00105$
;ClubHeist.c:188: if(joypad() & J_START){
	call	_joypad
	rlca
	jr	NC, 00103$
;ClubHeist.c:189: HIDE_WIN;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xdf
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:190: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:191: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:192: In_Loading_Screen = 0;
	ld	hl, #_In_Loading_Screen
	ld	(hl), #0x00
	jr	00103$
00105$:
;ClubHeist.c:195: int8_t animTimer = 0;
	ld	c, #0x00
;ClubHeist.c:196: while(Player.x < 64){
00111$:
	ld	a, (#(_Player + 7) + 0)
	sub	a, #0x40
	jr	NC, 00132$
;ClubHeist.c:198: for(int i = 0; i < 3; i++){
	ld	b, #0x00
00118$:
;ClubHeist.c:199: if (i == 2){
	ld	a,b
	cp	a,#0x03
	jr	NC, 00111$
	sub	a, #0x02
	jr	NZ, 00109$
;ClubHeist.c:200: Player.x += 1;
	ld	a, (#(_Player + 7) + 0)
	inc	a
	ld	(#(_Player + 7)),a
;ClubHeist.c:201: Move_Character(&Player);
	push	bc
	ld	de, #_Player
	call	_Move_Character
	pop	bc
;ClubHeist.c:202: animTimer++;
	inc	c
;ClubHeist.c:203: if(animTimer > 4)
	ld	e, c
	ld	a,#0x04
	ld	d,a
	sub	a, c
	bit	7, e
	jr	Z, 00202$
	bit	7, d
	jr	NZ, 00203$
	cp	a, a
	jr	00203$
00202$:
	bit	7, d
	jr	Z, 00203$
	scf
00203$:
	jr	NC, 00109$
;ClubHeist.c:205: animatePlayer();
	push	bc
	call	_animatePlayer
	pop	bc
;ClubHeist.c:206: animTimer = 0;
	ld	c, #0x00
00109$:
;ClubHeist.c:211: updateSwitches();
	push	bc
	call	_updateSwitches
	pop	bc
;ClubHeist.c:212: wait_vbl_done();
	call	_wait_vbl_done
;ClubHeist.c:198: for(int i = 0; i < 3; i++){
	inc	b
	jr	00118$
;ClubHeist.c:215: while(Player.animFrame)
00132$:
00114$:
	ld	a, (#(_Player + 6) + 0)
	or	a, a
	ret	Z
;ClubHeist.c:216: animatePlayer();
	call	_animatePlayer
;ClubHeist.c:217: }
	jr	00114$
;ClubHeist.c:219: void init(void){
;	---------------------------------
; Function init
; ---------------------------------
_init::
;ClubHeist.c:220: SHOW_WIN;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x20
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:221: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:222: set_win_data(tilesetIndex, 27, Alphabet);
	ld	de, #_Alphabet
	push	de
	ld	a, #0x1b
	push	af
	inc	sp
	ld	a, (#_tilesetIndex)
	push	af
	inc	sp
	call	_set_win_data
	add	sp, #4
;ClubHeist.c:223: tilesetIndex += 27;
	ld	hl, #_tilesetIndex
	ld	a, (hl)
	add	a, #0x1b
	ld	(hl), a
;ClubHeist.c:225: set_bkg_data(tilesetIndex, 66, Tileset);
	ld	de, #_Tileset
	push	de
	ld	a, #0x42
	push	af
	inc	sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_set_bkg_data
	add	sp, #4
;ClubHeist.c:226: tilesetIndex += 66;
	ld	hl, #_tilesetIndex
	ld	a, (hl)
	add	a, #0x42
	ld	(hl), a
;ClubHeist.c:227: set_bkg_tiles(0,0,20,18,ClubFront);
	ld	de, #_ClubFront
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;ClubHeist.c:228: set_sprite_data(0, 61, SpriteSet);
	ld	de, #_SpriteSet
	push	de
	ld	hl, #0x3d00
	push	hl
	call	_set_sprite_data
	add	sp, #4
;ClubHeist.c:229: set_sprite_data(61, 36, ClubCharacterSprites);
	ld	de, #_ClubCharacterSprites
	push	de
	ld	a, #0x24
	push	af
	inc	sp
	ld	a, #0x3d
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
;ClubHeist.c:231: level_one_init();
;ClubHeist.c:234: }
	jp	_level_one_init
;ClubHeist.c:235: void checkInput(void) {
;	---------------------------------
; Function checkInput
; ---------------------------------
_checkInput::
;ClubHeist.c:244: if(PlayerState == 1){
	ld	a, (#_PlayerState)
	dec	a
	jr	NZ, 00111$
;ClubHeist.c:246: if (joypad() & J_RIGHT) {
	call	_joypad
	rrca
	jr	NC, 00104$
;ClubHeist.c:247: if(!MoveCooldown)
	ld	hl, #_MoveCooldown
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
;ClubHeist.c:249: Box.x+= 1;
	ld	bc, #_Box+8
	ld	a, (bc)
	inc	a
	ld	(bc), a
;ClubHeist.c:250: MoveCooldown = 4;
	ld	(hl), #0x04
00104$:
;ClubHeist.c:255: if (joypad() & J_LEFT) {
	call	_joypad
	bit	1, a
	jr	Z, 00109$
;ClubHeist.c:256: if(Box.x > 8 && !MoveCooldown){
	ld	bc, #_Box+8
	ld	a, (bc)
	ld	e, a
	ld	a, #0x08
	sub	a, e
	jr	NC, 00109$
	ld	hl, #_MoveCooldown
	ld	a, (hl)
	or	a, a
	jr	NZ, 00109$
;ClubHeist.c:257: Box.x--;
	ld	a, e
	dec	a
	ld	(bc), a
;ClubHeist.c:258: MoveCooldown = 4;
	ld	(hl), #0x04
00109$:
;ClubHeist.c:263: Move_Box(&Box);
	ld	de, #_Box
	call	_Move_Box
00111$:
;ClubHeist.c:289: if(joypad() & J_START){
	call	_joypad
	rlca
	ret	NC
;ClubHeist.c:290: HIDE_WIN;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xdf
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:297: }
	ret
;ClubHeist.c:299: void gameover(void){
;	---------------------------------
; Function gameover
; ---------------------------------
_gameover::
;ClubHeist.c:301: HIDE_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:302: set_win_tiles(0, 0, 32,32, EmptyMap);
	ld	de, #_EmptyMap
	push	de
	ld	hl, #0x2020
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_win_tiles
	add	sp, #6
;ClubHeist.c:303: set_win_tiles(5, 7, 9, 1, GameOverMap);  
	ld	de, #_GameOverMap
	push	de
	ld	hl, #0x109
	push	hl
	ld	hl, #0x705
	push	hl
	call	_set_win_tiles
	add	sp, #6
;ClubHeist.c:304: SHOW_WIN;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x20
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:305: while(1){
00102$:
;ClubHeist.c:306: updateSwitches();
	call	_updateSwitches
;ClubHeist.c:308: }
	jr	00102$
;ClubHeist.c:310: void animateDancing(struct Character* Character, int8_t spriteNum)
;	---------------------------------
; Function animateDancing
; ---------------------------------
_animateDancing::
	dec	sp
	ldhl	sp,	#0
	ld	(hl), a
;ClubHeist.c:312: set_sprite_tile(Character->spriteids[0], spriteNum);
	ld	a, (de)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	inc	hl
	inc	hl
	ld	c, l
	ld	b, h
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(bc), a
;ClubHeist.c:313: set_sprite_tile(Character->spriteids[1], spriteNum + 1);
	ld	c, (hl)
	inc	c
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	pop	de
	ld	(hl), c
;ClubHeist.c:314: set_sprite_tile(Character->spriteids[2], spriteNum + 2);
	ldhl	sp,	#0
	ld	c, (hl)
	inc	c
	inc	c
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	pop	de
	ld	(hl), c
;ClubHeist.c:315: set_sprite_tile(Character->spriteids[3], spriteNum + 3);
	ldhl	sp,	#0
	ld	c, (hl)
	inc	c
	inc	c
	inc	c
	inc	de
	inc	de
	inc	de
	ld	a, (de)
;c:\users\john\gbdk-win64\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, a
	ld	de, #_shadow_OAM+0
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;ClubHeist.c:315: set_sprite_tile(Character->spriteids[3], spriteNum + 3);
;ClubHeist.c:316: }
	inc	sp
	ret
;ClubHeist.c:318: void EndScreen(void)
;	---------------------------------
; Function EndScreen
; ---------------------------------
_EndScreen::
;ClubHeist.c:320: HIDE_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:321: set_win_tiles(0, 0, 32,32, EmptyMap);
	ld	de, #_EmptyMap
	push	de
	ld	hl, #0x2020
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_win_tiles
	add	sp, #6
;ClubHeist.c:322: set_win_tiles(5, 6, 11,4, EndScreenMap);  
	ld	de, #_EndScreenMap
	push	de
	ld	hl, #0x40b
	push	hl
	ld	hl, #0x605
	push	hl
	call	_set_win_tiles
	add	sp, #6
;ClubHeist.c:323: SHOW_WIN;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x20
	ldh	(_LCDC_REG + 0), a
;ClubHeist.c:324: while(1){
00102$:
;ClubHeist.c:325: updateSwitches();
	call	_updateSwitches
;ClubHeist.c:327: }
	jr	00102$
;ClubHeist.c:329: void danceOff(void){
;	---------------------------------
; Function danceOff
; ---------------------------------
_danceOff::
	add	sp, #-15
;ClubHeist.c:330: animateDancing(&Player, PLAYERBASE);
	ld	a, #0x1d
	ld	de, #_Player
	call	_animateDancing
;ClubHeist.c:334: int8_t incorrect = 0;
	ldhl	sp,	#8
	ld	(hl), #0x00
;ClubHeist.c:335: while(Round < 5){
	ldhl	sp,	#14
	ld	(hl), #0x01
00141$:
	ldhl	sp,	#14
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x85
	jp	NC, 00143$
;ClubHeist.c:337: for(int j = 0; j < Round + 3; j++){
	dec	hl
	dec	hl
	xor	a, a
	ld	(hl+), a
	ld	(hl), a
00148$:
	ldhl	sp,	#14
	ld	a, (hl)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	inc	bc
	inc	bc
	inc	bc
	ldhl	sp,	#9
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	ldhl	sp,	#12
	ld	e, l
	ld	d, h
	ldhl	sp,	#9
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00356$
	bit	7, d
	jr	NZ, 00357$
	cp	a, a
	jr	00357$
00356$:
	bit	7, d
	jr	Z, 00357$
	scf
00357$:
	jp	NC, 00108$
;ClubHeist.c:339: int8_t r = rand() %5;
	call	_rand
	ld	d, #0x00
	ld	bc, #0x0005
	call	__modsint
;ClubHeist.c:340: moves[j] = r;
	push	hl
	ld	hl, #2
	add	hl, sp
	ld	e, l
	ld	d, h
	pop	hl
	ldhl	sp,	#12
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, c
	ld	(de), a
;ClubHeist.c:341: switch(r){
	ld	a, c
	or	a, a
	jr	Z, 00101$
	ld	a, c
	dec	a
	jr	Z, 00102$
	ld	a,c
	cp	a,#0x02
	jr	Z, 00103$
	cp	a,#0x03
	jr	Z, 00104$
	sub	a, #0x04
	jr	Z, 00105$
	jr	00164$
;ClubHeist.c:342: case 0:
00101$:
;ClubHeist.c:343: animateDancing(&Dance_Master, MASTERRIGHT);
	ld	a, #0x49
	ld	de, #_Dance_Master
	call	_animateDancing
;ClubHeist.c:344: break;
	jr	00164$
;ClubHeist.c:345: case 1:
00102$:
;ClubHeist.c:346: animateDancing(&Dance_Master, MASTERLEFT);
	ld	a, #0x4d
	ld	de, #_Dance_Master
	call	_animateDancing
;ClubHeist.c:347: break;
	jr	00164$
;ClubHeist.c:348: case 2:
00103$:
;ClubHeist.c:349: animateDancing(&Dance_Master, MASTERDOWN);
	ld	a, #0x51
	ld	de, #_Dance_Master
	call	_animateDancing
;ClubHeist.c:350: break;
	jr	00164$
;ClubHeist.c:351: case 3:
00104$:
;ClubHeist.c:352: animateDancing(&Dance_Master, MASTERUP);
	ld	a, #0x55
	ld	de, #_Dance_Master
	call	_animateDancing
;ClubHeist.c:353: break;
	jr	00164$
;ClubHeist.c:354: case 4:
00105$:
;ClubHeist.c:355: animateDancing(&Dance_Master, MASTERA);
	ld	a, #0x5d
	ld	de, #_Dance_Master
	call	_animateDancing
;ClubHeist.c:358: for(int i = 0; i < 60; i++){
00164$:
	xor	a, a
	ldhl	sp,	#10
	ld	(hl+), a
	ld	(hl), a
00145$:
	ldhl	sp,	#10
	ld	a, (hl+)
	sub	a, #0x3c
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a, #0x00
	bit	7,a
	jr	Z, 00363$
	bit	7, d
	jr	NZ, 00364$
	cp	a, a
	jr	00364$
00363$:
	bit	7, d
	jr	Z, 00364$
	scf
00364$:
	jr	NC, 00149$
;ClubHeist.c:359: wait_vbl_done();
	call	_wait_vbl_done
;ClubHeist.c:358: for(int i = 0; i < 60; i++){
	ldhl	sp,	#10
	inc	(hl)
	jr	NZ, 00145$
	inc	hl
	inc	(hl)
	jr	00145$
00149$:
;ClubHeist.c:337: for(int j = 0; j < Round + 3; j++){
	ldhl	sp,	#12
	inc	(hl)
	jp	NZ,00148$
	inc	hl
	inc	(hl)
	jp	00148$
00108$:
;ClubHeist.c:363: int8_t movesMade = 0;
;ClubHeist.c:364: int8_t playerDancing = 0;
	ld	bc, #0x0
;ClubHeist.c:365: while(movesMade < Round + 3){
00138$:
	ld	a, c
	ldhl	sp,	#12
	ld	(hl+), a
	rlca
	sbc	a, a
	ld	(hl), a
	ldhl	sp,	#12
	ld	e, l
	ld	d, h
	ldhl	sp,	#9
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00367$
	bit	7, d
	jr	NZ, 00368$
	cp	a, a
	jr	00368$
00367$:
	bit	7, d
	jr	Z, 00368$
	scf
00368$:
	jp	NC, 00140$
;ClubHeist.c:367: int8_t input = joypad();
	call	_joypad
	ldhl	sp,	#11
;ClubHeist.c:373: if(moves[movesMade++] != move){
	ld	(hl+), a
	ld	a, c
	inc	a
	ld	(hl), a
;ClubHeist.c:374: incorrect++;
	ldhl	sp,	#8
	ld	a, (hl)
	inc	a
	ldhl	sp,	#13
	ld	(hl), a
;ClubHeist.c:369: if (input & J_RIGHT) 
	push	hl
	dec	hl
	dec	hl
	bit	0, (hl)
	pop	hl
	jr	Z, 00131$
;ClubHeist.c:372: animateDancing(&Player, PLAYERRIGHT);
	push	bc
	ld	a, #0x29
	ld	de, #_Player
	call	_animateDancing
	pop	bc
;ClubHeist.c:373: if(moves[movesMade++] != move){
	ld	a, c
	ldhl	sp,	#12
	ld	c, (hl)
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	Z, 00110$
;ClubHeist.c:374: incorrect++;
	ldhl	sp,	#13
	ld	a, (hl)
	ldhl	sp,	#8
	ld	(hl), a
00110$:
;ClubHeist.c:376: playerDancing = 1;
	ld	b, #0x01
	jp	00179$
00131$:
;ClubHeist.c:378: else if (input & J_LEFT) 
	push	hl
	ldhl	sp,	#13
	bit	1, (hl)
	pop	hl
	jr	Z, 00128$
;ClubHeist.c:381: animateDancing(&Player, PLAYERLEFT);
	push	bc
	ld	a, #0x2d
	ld	de, #_Player
	call	_animateDancing
	pop	bc
;ClubHeist.c:383: if(moves[movesMade++] != move){
	ld	a, c
	ldhl	sp,	#12
	ld	c, (hl)
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	dec	a
	jr	Z, 00112$
;ClubHeist.c:384: incorrect++;
	ldhl	sp,	#13
	ld	a, (hl)
	ldhl	sp,	#8
	ld	(hl), a
00112$:
;ClubHeist.c:386: playerDancing = 1;
	ld	b, #0x01
	jp	00179$
00128$:
;ClubHeist.c:388: else if (input & J_DOWN) 
	push	hl
	ldhl	sp,	#13
	bit	3, (hl)
	pop	hl
	jr	Z, 00125$
;ClubHeist.c:391: animateDancing(&Player, PLAYERDOWN);
	push	bc
	ld	a, #0x31
	ld	de, #_Player
	call	_animateDancing
	pop	bc
;ClubHeist.c:392: if(moves[movesMade++] != move){
	ld	a, c
	ldhl	sp,	#12
	ld	c, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	b, a
	ld	e, l
	ld	d, b
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	sub	a, #0x02
	jr	Z, 00114$
;ClubHeist.c:393: incorrect++;
	ldhl	sp,	#13
	ld	a, (hl)
	ldhl	sp,	#8
	ld	(hl), a
00114$:
;ClubHeist.c:395: playerDancing = 1;
	ld	b, #0x01
	jr	00179$
00125$:
;ClubHeist.c:397: else if (input & J_UP) 
	push	hl
	ldhl	sp,	#13
	bit	2, (hl)
	pop	hl
	jr	Z, 00122$
;ClubHeist.c:400: animateDancing(&Player, PLAYERUP);
	push	bc
	ld	a, #0x35
	ld	de, #_Player
	call	_animateDancing
	pop	bc
;ClubHeist.c:401: if(moves[movesMade++] != move){
	ld	a, c
	ldhl	sp,	#12
	ld	c, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	b, a
	ld	e, l
	ld	d, b
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	sub	a, #0x03
	jr	Z, 00116$
;ClubHeist.c:402: incorrect++;
	ldhl	sp,	#13
	ld	a, (hl)
	ldhl	sp,	#8
	ld	(hl), a
00116$:
;ClubHeist.c:404: playerDancing = 1;
	ld	b, #0x01
	jr	00179$
00122$:
;ClubHeist.c:406: else if (input & J_A) 
	push	hl
	ldhl	sp,	#13
	bit	4, (hl)
	pop	hl
	jr	Z, 00179$
;ClubHeist.c:409: animateDancing(&Player, PLAYERA);
	push	bc
	ld	a, #0x39
	ld	de, #_Player
	call	_animateDancing
	pop	bc
;ClubHeist.c:410: if(moves[movesMade++] != move){
	ld	a, c
	ldhl	sp,	#12
	ld	c, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	b, a
	ld	e, l
	ld	d, b
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	sub	a, #0x04
	jr	Z, 00118$
;ClubHeist.c:411: incorrect++;
	ldhl	sp,	#13
	ld	a, (hl)
	ldhl	sp,	#8
	ld	(hl), a
00118$:
;ClubHeist.c:413: playerDancing = 1;
	ld	b, #0x01
;ClubHeist.c:415: for(int i = 0; i < 40 && playerDancing; i++){
00179$:
	xor	a, a
	ldhl	sp,	#12
	ld	(hl+), a
	ld	(hl), a
00152$:
	ldhl	sp,	#12
	ld	a, (hl+)
	sub	a, #0x28
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a, #0x00
	bit	7,a
	jr	Z, 00379$
	bit	7, d
	jr	NZ, 00380$
	cp	a, a
	jr	00380$
00379$:
	bit	7, d
	jr	Z, 00380$
	scf
00380$:
	jr	NC, 00133$
	ld	a, b
	or	a, a
	jr	Z, 00133$
;ClubHeist.c:416: wait_vbl_done();
	call	_wait_vbl_done
;ClubHeist.c:415: for(int i = 0; i < 40 && playerDancing; i++){
	ldhl	sp,	#12
	inc	(hl)
	jr	NZ, 00152$
	inc	hl
	inc	(hl)
	jr	00152$
00133$:
;ClubHeist.c:418: if(playerDancing)
	ld	a, b
	or	a, a
	jr	Z, 00135$
;ClubHeist.c:420: playerDancing = 0;
	ld	b, #0x00
00135$:
;ClubHeist.c:422: animateDancing(&Player, PLAYERBASE);
	push	bc
	ld	a, #0x1d
	ld	de, #_Player
	call	_animateDancing
	pop	bc
;ClubHeist.c:423: if(incorrect > 2){
	ldhl	sp,	#8
	ld	e, (hl)
	ld	a,#0x02
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00382$
	bit	7, d
	jr	NZ, 00383$
	cp	a, a
	jr	00383$
00382$:
	bit	7, d
	jr	Z, 00383$
	scf
00383$:
	jp	NC, 00138$
;ClubHeist.c:424: gameover();
	push	bc
	call	_gameover
	pop	bc
	jp	00138$
00140$:
;ClubHeist.c:427: Round++;
	ldhl	sp,	#14
	inc	(hl)
	jp	00141$
00143$:
;ClubHeist.c:429: EndScreen();
	call	_EndScreen
;ClubHeist.c:430: }
	add	sp, #15
	ret
;ClubHeist.c:432: void main(void) {
;	---------------------------------
; Function main
; ---------------------------------
_main::
;ClubHeist.c:433: init();
	call	_init
;ClubHeist.c:440: while(1) {
00113$:
;ClubHeist.c:442: checkInput();
	call	_checkInput
;ClubHeist.c:443: updateSwitches();
	call	_updateSwitches
;ClubHeist.c:444: wait_vbl_done();
	call	_wait_vbl_done
;ClubHeist.c:446: if(MoveCooldown != 0)
	ld	hl, #_MoveCooldown
	ld	a, (hl)
	or	a, a
	jr	Z, 00102$
;ClubHeist.c:448: MoveCooldown--;
	dec	(hl)
00102$:
;ClubHeist.c:450: if(PlayerState == 1)
	ld	a, (#_PlayerState)
	dec	a
	jr	NZ, 00109$
;ClubHeist.c:452: Run_Bouncer(&Bouncer);
	ld	de, #_Bouncer
	call	_Run_Bouncer
;ClubHeist.c:453: if(Bouncer.timer <= 1 && MoveCooldown > 0){
	ld	hl, #(_Bouncer + 10)
	ld	c, (hl)
	ld	e, c
	ld	a,#0x01
	ld	d,a
	sub	a, c
	bit	7, e
	jr	Z, 00168$
	bit	7, d
	jr	NZ, 00169$
	cp	a, a
	jr	00169$
00168$:
	bit	7, d
	jr	Z, 00169$
	scf
00169$:
	jr	C, 00104$
	ld	hl, #_MoveCooldown
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00170$
	bit	7, d
	jr	NZ, 00171$
	cp	a, a
	jr	00171$
00170$:
	bit	7, d
	jr	Z, 00171$
	scf
00171$:
	jr	NC, 00104$
;ClubHeist.c:454: gameover();
	call	_gameover
00104$:
;ClubHeist.c:456: if(Box.x >= 64)
	ld	a, (#(_Box + 8) + 0)
	sub	a, #0x40
	jr	C, 00109$
;ClubHeist.c:458: Destroy_Bouncer(&Bouncer);
	ld	de, #_Bouncer
	call	_Destroy_Bouncer
;ClubHeist.c:459: Destroy_Box(&Box);
	ld	de, #_Box
	call	_Destroy_Box
;ClubHeist.c:460: spriteIndex -= 12;
	ld	hl, #_spriteIndex
	ld	a, (hl)
	add	a, #0xf4
	ld	(hl), a
;ClubHeist.c:461: level_two_init();
	call	_level_two_init
00109$:
;ClubHeist.c:464: if(PlayerState == 2){
	ld	a, (#_PlayerState)
	sub	a, #0x02
	jr	NZ, 00113$
;ClubHeist.c:465: danceOff();
	call	_danceOff
;ClubHeist.c:469: }
	jr	00113$
	.area _CODE
	.area _INITIALIZER
__xinit__Tileset:
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x9f	; 159
	.db #0x7f	; 127
	.db #0xdb	; 219
	.db #0x7f	; 127
	.db #0xf1	; 241
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xdd	; 221
	.db #0xff	; 255
	.db #0x19	; 25
	.db #0xff	; 255
	.db #0xb3	; 179
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xf9	; 249
	.db #0xfe	; 254
	.db #0xdb	; 219
	.db #0xfe	; 254
	.db #0x8f	; 143
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0x88	; 136
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0xf7	; 247
	.db #0x88	; 136
	.db #0xf7	; 247
	.db #0x88	; 136
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x88	; 136
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0xf7	; 247
	.db #0x88	; 136
	.db #0xf7	; 247
	.db #0x88	; 136
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0xf7	; 247
	.db #0x88	; 136
	.db #0xf7	; 247
	.db #0x88	; 136
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0xf7	; 247
	.db #0x88	; 136
	.db #0xf7	; 247
	.db #0x88	; 136
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0xf7	; 247
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xe7	; 231
	.db #0x00	; 0
	.db #0xdb	; 219
	.db #0x00	; 0
	.db #0xbd	; 189
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0xbd	; 189
	.db #0x00	; 0
	.db #0xdb	; 219
	.db #0x00	; 0
	.db #0xe7	; 231
	.db #0x00	; 0
	.db #0xe7	; 231
	.db #0x00	; 0
	.db #0xdb	; 219
	.db #0x00	; 0
	.db #0xbd	; 189
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xe7	; 231
	.db #0x80	; 128
	.db #0xdb	; 219
	.db #0x80	; 128
	.db #0xbd	; 189
	.db #0x80	; 128
	.db #0xfe	; 254
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xe7	; 231
	.db #0x01	; 1
	.db #0xdb	; 219
	.db #0x01	; 1
	.db #0xbd	; 189
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0x00	; 0
	.db #0xdb	; 219
	.db #0x00	; 0
	.db #0xe7	; 231
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x11	; 17
	.db #0xef	; 239
	.db #0x11	; 17
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x11	; 17
	.db #0xef	; 239
	.db #0x11	; 17
	.db #0xef	; 239
	.db #0x11	; 17
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x11	; 17
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x11	; 17
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x11	; 17
	.db #0xef	; 239
	.db #0x11	; 17
	.db #0xef	; 239
	.db #0x11	; 17
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x11	; 17
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xba	; 186
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xdd	; 221
	.db #0xff	; 255
	.db #0xbb	; 187
	.db #0xff	; 255
	.db #0xee	; 238
	.db #0xff	; 255
	.db #0x7b	; 123
	.db #0xff	; 255
	.db #0xb6	; 182
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x11	; 17
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x11	; 17
	.db #0xef	; 239
	.db #0x11	; 17
	.db #0xef	; 239
	.db #0x11	; 17
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x11	; 17
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xe7	; 231
	.db #0x80	; 128
	.db #0xdb	; 219
	.db #0x80	; 128
	.db #0xbd	; 189
	.db #0x80	; 128
	.db #0xfe	; 254
	.db #0x80	; 128
	.db #0xfe	; 254
	.db #0x80	; 128
	.db #0xbd	; 189
	.db #0x80	; 128
	.db #0xdb	; 219
	.db #0x80	; 128
	.db #0xe7	; 231
	.db #0x80	; 128
	.db #0xe7	; 231
	.db #0x01	; 1
	.db #0xdb	; 219
	.db #0x01	; 1
	.db #0xbd	; 189
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0xbd	; 189
	.db #0x01	; 1
	.db #0xdb	; 219
	.db #0x01	; 1
	.db #0xe7	; 231
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0x01	; 1
	.db #0xdb	; 219
	.db #0x01	; 1
	.db #0xe7	; 231
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0x80	; 128
	.db #0xdb	; 219
	.db #0x80	; 128
	.db #0xe7	; 231
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xbf	; 191
	.db #0xc0	; 192
	.db #0xbf	; 191
	.db #0xcf	; 207
	.db #0xb0	; 176
	.db #0xcf	; 207
	.db #0xb0	; 176
	.db #0xcf	; 207
	.db #0xb0	; 176
	.db #0xcf	; 207
	.db #0xb0	; 176
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0xcf	; 207
	.db #0x30	; 48	'0'
	.db #0xcf	; 207
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xf3	; 243
	.db #0x0c	; 12
	.db #0xf3	; 243
	.db #0x0c	; 12
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0xc3	; 195
	.db #0x3c	; 60
	.db #0xc3	; 195
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0xfd	; 253
	.db #0x03	; 3
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xcc	; 204
	.db #0xb3	; 179
	.db #0xcc	; 204
	.db #0xb3	; 179
	.db #0xcf	; 207
	.db #0xb0	; 176
	.db #0xcf	; 207
	.db #0xb0	; 176
	.db #0xc0	; 192
	.db #0xbf	; 191
	.db #0xe0	; 224
	.db #0x9f	; 159
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x30	; 48	'0'
	.db #0xcf	; 207
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x3c	; 60
	.db #0xc3	; 195
	.db #0x3c	; 60
	.db #0xc3	; 195
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0xfd	; 253
	.db #0x03	; 3
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0x81	; 129
	.db #0xfe	; 254
	.db #0x81	; 129
	.db #0xfe	; 254
	.db #0x81	; 129
	.db #0xfe	; 254
	.db #0x81	; 129
	.db #0xfe	; 254
	.db #0x81	; 129
	.db #0xfe	; 254
	.db #0x81	; 129
	.db #0xfe	; 254
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x81	; 129
	.db #0x7f	; 127
	.db #0x81	; 129
	.db #0x7f	; 127
	.db #0x81	; 129
	.db #0x7f	; 127
	.db #0x81	; 129
	.db #0x7f	; 127
	.db #0x81	; 129
	.db #0x7f	; 127
	.db #0x81	; 129
	.db #0x7f	; 127
	.db #0x81	; 129
	.db #0xfe	; 254
	.db #0x81	; 129
	.db #0xfe	; 254
	.db #0x81	; 129
	.db #0xfe	; 254
	.db #0x81	; 129
	.db #0xfe	; 254
	.db #0x81	; 129
	.db #0xfe	; 254
	.db #0x81	; 129
	.db #0xfe	; 254
	.db #0x81	; 129
	.db #0xfe	; 254
	.db #0x81	; 129
	.db #0xfe	; 254
	.db #0x81	; 129
	.db #0x7f	; 127
	.db #0x81	; 129
	.db #0x7f	; 127
	.db #0x81	; 129
	.db #0x7f	; 127
	.db #0x81	; 129
	.db #0x7f	; 127
	.db #0x81	; 129
	.db #0x7f	; 127
	.db #0x81	; 129
	.db #0x7f	; 127
	.db #0x81	; 129
	.db #0x7f	; 127
	.db #0x81	; 129
	.db #0x7f	; 127
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xe7	; 231
	.db #0x99	; 153
	.db #0xe7	; 231
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0xe7	; 231
	.db #0x99	; 153
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0x99	; 153
	.db #0xe7	; 231
	.db #0x99	; 153
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x99	; 153
	.db #0xe7	; 231
	.db #0x99	; 153
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0x99	; 153
	.db #0xe7	; 231
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0xe7	; 231
	.db #0x99	; 153
	.db #0xe7	; 231
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x99	; 153
	.db #0x81	; 129
	.db #0xa5	; 165
	.db #0x81	; 129
	.db #0xbd	; 189
	.db #0x81	; 129
	.db #0xa5	; 165
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x7a	; 122	'z'
	.db #0x81	; 129
	.db #0xa5	; 165
	.db #0x81	; 129
	.db #0xb9	; 185
	.db #0x81	; 129
	.db #0xa5	; 165
	.db #0x81	; 129
	.db #0xb9	; 185
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x17	; 23
	.db #0x1f	; 31
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xec	; 236
	.db #0xec	; 236
	.db #0x19	; 25
	.db #0x1e	; 30
	.db #0x29	; 41
	.db #0x3e	; 62
	.db #0x39	; 57	'9'
	.db #0x2e	; 46
	.db #0x19	; 25
	.db #0x1e	; 30
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x96	; 150
	.db #0x7a	; 122	'z'
	.db #0x94	; 148
	.db #0x7c	; 124
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0x90	; 144
	.db #0x70	; 112	'p'
	.db #0xd0	; 208
	.db #0x30	; 48	'0'
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0x68	; 104	'h'
	.db #0x78	; 120	'x'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x17	; 23
	.db #0x1f	; 31
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0x1e	; 30
	.db #0x29	; 41
	.db #0x3e	; 62
	.db #0x39	; 57	'9'
	.db #0x2e	; 46
	.db #0x19	; 25
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x1c	; 28
	.db #0x21	; 33
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0x94	; 148
	.db #0x7c	; 124
	.db #0x9c	; 156
	.db #0x74	; 116	't'
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0x38	; 56	'8'
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x17	; 23
	.db #0x1f	; 31
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x37	; 55	'7'
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xec	; 236
	.db #0xec	; 236
	.db #0x69	; 105	'i'
	.db #0x5e	; 94
	.db #0x29	; 41
	.db #0x3e	; 62
	.db #0x19	; 25
	.db #0x1e	; 30
	.db #0x09	; 9
	.db #0x0e	; 14
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x96	; 150
	.db #0x7a	; 122	'z'
	.db #0x94	; 148
	.db #0x7c	; 124
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0x90	; 144
	.db #0x70	; 112	'p'
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x17	; 23
	.db #0x1f	; 31
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x37	; 55	'7'
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xec	; 236
	.db #0xec	; 236
	.db #0x69	; 105	'i'
	.db #0x5e	; 94
	.db #0x29	; 41
	.db #0x3e	; 62
	.db #0x19	; 25
	.db #0x1e	; 30
	.db #0x09	; 9
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x13	; 19
	.db #0x1f	; 31
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x96	; 150
	.db #0x7a	; 122	'z'
	.db #0x94	; 148
	.db #0x7c	; 124
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0x90	; 144
	.db #0x70	; 112	'p'
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0x48	; 72	'H'
	.db #0x78	; 120	'x'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x17	; 23
	.db #0x1f	; 31
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x37	; 55	'7'
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x69	; 105	'i'
	.db #0x5e	; 94
	.db #0x29	; 41
	.db #0x3e	; 62
	.db #0x19	; 25
	.db #0x1e	; 30
	.db #0x09	; 9
	.db #0x0e	; 14
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x16	; 22
	.db #0x1e	; 30
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0x94	; 148
	.db #0x7c	; 124
	.db #0x9c	; 156
	.db #0x74	; 116	't'
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__SpriteSet:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x17	; 23
	.db #0x19	; 25
	.db #0x17	; 23
	.db #0x1a	; 26
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x38	; 56	'8'
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x0b	; 11
	.db #0x0e	; 14
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x50	; 80	'P'
	.db #0xf0	; 240
	.db #0xd0	; 208
	.db #0x70	; 112	'p'
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x17	; 23
	.db #0x19	; 25
	.db #0x17	; 23
	.db #0x1a	; 26
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x38	; 56	'8'
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x0b	; 11
	.db #0x0e	; 14
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x50	; 80	'P'
	.db #0xf0	; 240
	.db #0xd0	; 208
	.db #0x70	; 112	'p'
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x17	; 23
	.db #0x19	; 25
	.db #0x17	; 23
	.db #0x1a	; 26
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x38	; 56	'8'
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x0b	; 11
	.db #0x0e	; 14
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x50	; 80	'P'
	.db #0xf0	; 240
	.db #0xd0	; 208
	.db #0x70	; 112	'p'
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x0b	; 11
	.db #0x0e	; 14
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x50	; 80	'P'
	.db #0xf0	; 240
	.db #0xd0	; 208
	.db #0x70	; 112	'p'
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x0b	; 11
	.db #0x0e	; 14
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x50	; 80	'P'
	.db #0xf0	; 240
	.db #0xd0	; 208
	.db #0x70	; 112	'p'
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0x28	; 40
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0x38	; 56	'8'
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x3f	; 63
	.db #0x30	; 48	'0'
	.db #0x5f	; 95
	.db #0x50	; 80	'P'
	.db #0x9f	; 159
	.db #0x90	; 144
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xe8	; 232
	.db #0x38	; 56	'8'
	.db #0xe8	; 232
	.db #0x38	; 56	'8'
	.db #0xe8	; 232
	.db #0x38	; 56	'8'
	.db #0xe8	; 232
	.db #0x38	; 56	'8'
	.db #0xe8	; 232
	.db #0x38	; 56	'8'
	.db #0xe8	; 232
	.db #0x38	; 56	'8'
	.db #0xee	; 238
	.db #0x3e	; 62
	.db #0xf1	; 241
	.db #0x3f	; 63
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x1c	; 28
	.db #0x23	; 35
	.db #0x3e	; 62
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xa0	; 160
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0xf8	; 248
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0x38	; 56	'8'
	.db #0xc4	; 196
	.db #0x7c	; 124
	.db #0x31	; 49	'1'
	.db #0x3f	; 63
	.db #0x18	; 24
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x17	; 23
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x19	; 25
	.db #0x1f	; 31
	.db #0x21	; 33
	.db #0x3f	; 63
	.db #0x21	; 33
	.db #0x3f	; 63
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x98	; 152
	.db #0xf8	; 248
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x17	; 23
	.db #0x1f	; 31
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x19	; 25
	.db #0x1e	; 30
	.db #0x29	; 41
	.db #0x3e	; 62
	.db #0x39	; 57	'9'
	.db #0x2e	; 46
	.db #0x19	; 25
	.db #0x1e	; 30
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0x94	; 148
	.db #0x7c	; 124
	.db #0x9c	; 156
	.db #0x74	; 116	't'
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x17	; 23
	.db #0x1f	; 31
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x19	; 25
	.db #0x1e	; 30
	.db #0x29	; 41
	.db #0x3e	; 62
	.db #0x39	; 57	'9'
	.db #0x2e	; 46
	.db #0x17	; 23
	.db #0x14	; 20
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x94	; 148
	.db #0x7c	; 124
	.db #0x9c	; 156
	.db #0x74	; 116	't'
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xd0	; 208
	.db #0x30	; 48	'0'
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x17	; 23
	.db #0x1f	; 31
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x29	; 41
	.db #0x3e	; 62
	.db #0x39	; 57	'9'
	.db #0x2e	; 46
	.db #0x19	; 25
	.db #0x1e	; 30
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0x94	; 148
	.db #0x7c	; 124
	.db #0x9c	; 156
	.db #0x74	; 116	't'
	.db #0xe8	; 232
	.db #0x28	; 40
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x17	; 23
	.db #0x1f	; 31
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xec	; 236
	.db #0xec	; 236
	.db #0x19	; 25
	.db #0x1e	; 30
	.db #0x29	; 41
	.db #0x3e	; 62
	.db #0x39	; 57	'9'
	.db #0x2e	; 46
	.db #0x19	; 25
	.db #0x1e	; 30
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x96	; 150
	.db #0x7a	; 122	'z'
	.db #0x94	; 148
	.db #0x7c	; 124
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0x90	; 144
	.db #0x70	; 112	'p'
	.db #0xd0	; 208
	.db #0x30	; 48	'0'
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0x68	; 104	'h'
	.db #0x78	; 120	'x'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x17	; 23
	.db #0x1f	; 31
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x37	; 55	'7'
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x69	; 105	'i'
	.db #0x5e	; 94
	.db #0x29	; 41
	.db #0x3e	; 62
	.db #0x19	; 25
	.db #0x1e	; 30
	.db #0x09	; 9
	.db #0x0e	; 14
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x16	; 22
	.db #0x1e	; 30
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0x94	; 148
	.db #0x7c	; 124
	.db #0x9c	; 156
	.db #0x74	; 116	't'
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x17	; 23
	.db #0x1f	; 31
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0x1e	; 30
	.db #0x29	; 41
	.db #0x3e	; 62
	.db #0x39	; 57	'9'
	.db #0x2e	; 46
	.db #0x19	; 25
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x1c	; 28
	.db #0x21	; 33
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0x94	; 148
	.db #0x7c	; 124
	.db #0x9c	; 156
	.db #0x74	; 116	't'
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0x38	; 56	'8'
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x17	; 23
	.db #0x1f	; 31
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x37	; 55	'7'
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xec	; 236
	.db #0xec	; 236
	.db #0x69	; 105	'i'
	.db #0x5e	; 94
	.db #0x29	; 41
	.db #0x3e	; 62
	.db #0x19	; 25
	.db #0x1e	; 30
	.db #0x09	; 9
	.db #0x0e	; 14
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x96	; 150
	.db #0x7a	; 122	'z'
	.db #0x94	; 148
	.db #0x7c	; 124
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0x90	; 144
	.db #0x70	; 112	'p'
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x17	; 23
	.db #0x1f	; 31
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x37	; 55	'7'
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xec	; 236
	.db #0xec	; 236
	.db #0x69	; 105	'i'
	.db #0x5e	; 94
	.db #0x29	; 41
	.db #0x3e	; 62
	.db #0x19	; 25
	.db #0x1e	; 30
	.db #0x09	; 9
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x13	; 19
	.db #0x1f	; 31
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x96	; 150
	.db #0x7a	; 122	'z'
	.db #0x94	; 148
	.db #0x7c	; 124
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0x90	; 144
	.db #0x70	; 112	'p'
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0x48	; 72	'H'
	.db #0x78	; 120	'x'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
__xinit__ClubFront:
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x34	; 52	'4'
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x33	; 51	'3'
	.db #0x31	; 49	'1'
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x32	; 50	'2'
	.db #0x24	; 36
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x25	; 37
	.db #0x1f	; 31
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x29	; 41
	.db #0x20	; 32
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x28	; 40
	.db #0x20	; 32
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x28	; 40
	.db #0x20	; 32
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x28	; 40
	.db #0x20	; 32
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x28	; 40
	.db #0x20	; 32
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x39	; 57	'9'
	.db #0x3a	; 58
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x28	; 40
	.db #0x20	; 32
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x28	; 40
	.db #0x20	; 32
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x28	; 40
	.db #0x20	; 32
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x3d	; 61
	.db #0x3e	; 62
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x28	; 40
	.db #0x20	; 32
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x28	; 40
	.db #0x20	; 32
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x28	; 40
	.db #0x1e	; 30
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x30	; 48	'0'
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
__xinit__MainCharacterFullMap:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
__xinit__MainCharacterFull:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0xda	; 218
	.db #0xe7	; 231
	.db #0xa5	; 165
	.db #0x7b	; 123
	.db #0x52	; 82	'R'
	.db #0xbd	; 189
	.db #0x2f	; 47
	.db #0xdc	; 220
	.db #0x93	; 147
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xd0	; 208
	.db #0x30	; 48	'0'
	.db #0x68	; 104	'h'
	.db #0x98	; 152
	.db #0xd4	; 212
	.db #0xec	; 236
	.db #0x4a	; 74	'J'
	.db #0xf6	; 246
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xde	; 222
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xbe	; 190
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x3e	; 62
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xf1	; 241
	.db #0xff	; 255
	.db #0x87	; 135
	.db #0x79	; 121	'y'
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0xcf	; 207
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0xe7	; 231
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x43	; 67	'C'
	.db #0x7f	; 127
	.db #0x43	; 67	'C'
	.db #0x7f	; 127
	.db #0x43	; 67	'C'
	.db #0x7f	; 127
	.db #0x43	; 67	'C'
	.db #0x7f	; 127
	.db #0x43	; 67	'C'
	.db #0x7f	; 127
	.db #0x43	; 67	'C'
	.db #0x7f	; 127
	.db #0x43	; 67	'C'
	.db #0x7f	; 127
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x87	; 135
	.db #0xf9	; 249
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf9	; 249
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf9	; 249
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xdf	; 223
	.db #0x3f	; 63
	.db #0xe3	; 227
	.db #0x3f	; 63
	.db #0xd5	; 213
	.db #0x3f	; 63
	.db #0xc9	; 201
	.db #0x3f	; 63
	.db #0xc1	; 193
	.db #0x3f	; 63
	.db #0xc1	; 193
	.db #0x3f	; 63
	.db #0xc1	; 193
	.db #0x3f	; 63
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x43	; 67	'C'
	.db #0x7f	; 127
	.db #0x43	; 67	'C'
	.db #0x7f	; 127
	.db #0x43	; 67	'C'
	.db #0x7f	; 127
	.db #0x43	; 67	'C'
	.db #0x7f	; 127
	.db #0x43	; 67	'C'
	.db #0x7f	; 127
	.db #0x43	; 67	'C'
	.db #0x7f	; 127
	.db #0x43	; 67	'C'
	.db #0x7f	; 127
	.db #0x43	; 67	'C'
	.db #0x7f	; 127
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf9	; 249
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf9	; 249
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0xc1	; 193
	.db #0x3f	; 63
	.db #0xc1	; 193
	.db #0x3f	; 63
	.db #0xc1	; 193
	.db #0x3f	; 63
	.db #0xc1	; 193
	.db #0x3f	; 63
	.db #0xc1	; 193
	.db #0x3f	; 63
	.db #0xc1	; 193
	.db #0x3f	; 63
	.db #0xc1	; 193
	.db #0x3f	; 63
	.db #0xc1	; 193
	.db #0x3f	; 63
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x43	; 67	'C'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x5b	; 91
	.db #0x7f	; 127
	.db #0x43	; 67	'C'
	.db #0x3d	; 61
	.db #0x25	; 37
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0xf9	; 249
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0x78	; 120	'x'
	.db #0x48	; 72	'H'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__Alphabet:
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x5c	; 92
	.db #0x5c	; 92
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x6c	; 108	'l'
	.db #0x6c	; 108	'l'
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0xc2	; 194
	.db #0xc2	; 194
	.db #0xa2	; 162
	.db #0xa2	; 162
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x8a	; 138
	.db #0x8a	; 138
	.db #0x86	; 134
	.db #0x86	; 134
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x46	; 70	'F'
	.db #0x46	; 70	'F'
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x28	; 40
	.db #0xee	; 238
	.db #0xfe	; 254
	.db #0xc6	; 198
	.db #0xba	; 186
	.db #0xee	; 238
	.db #0xfe	; 254
	.db #0x38	; 56	'8'
	.db #0x28	; 40
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
__xinit__PressStartMap:
	.db #0x0f	; 15
	.db #0x11	; 17
	.db #0x04	; 4
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x7f	; 127
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x13	; 19
__xinit__EmptyMap:
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
__xinit__LevelOneTutorialMap:
	.db #0x1a	; 26
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x15	; 21
	.db #0x04	; 4
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x12	; 18
	.db #0x0d	; 13
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x0d	; 13
__xinit__GameOverMap:
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x7f	; 127
	.db #0x0e	; 14
	.db #0x15	; 21
	.db #0x04	; 4
	.db #0x11	; 17
__xinit__LevelTwoStartMap:
	.db #0x0b	; 11
	.db #0x04	; 4
	.db #0x15	; 21
	.db #0x04	; 4
	.db #0x0b	; 11
	.db #0x7f	; 127
	.db #0x13	; 19
	.db #0x16	; 22
	.db #0x0e	; 14
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x0d	; 13
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x7f	; 127
	.db #0x0e	; 14
	.db #0x05	; 5
	.db #0x05	; 5
__xinit__LevelTwoMapA:
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x2e	; 46
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
__xinit__LevelTwoMapB:
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x2e	; 46
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x2e	; 46
__xinit__ClubCharacterSprites:
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x1f	; 31
	.db #0x08	; 8
	.db #0x1f	; 31
	.db #0x0a	; 10
	.db #0x1f	; 31
	.db #0x08	; 8
	.db #0x37	; 55	'7'
	.db #0x04	; 4
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x34	; 52	'4'
	.db #0x3b	; 59
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0x20	; 32
	.db #0xf0	; 240
	.db #0xa0	; 160
	.db #0xf0	; 240
	.db #0x20	; 32
	.db #0xd8	; 216
	.db #0x40	; 64
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x58	; 88	'X'
	.db #0xb8	; 184
	.db #0x50	; 80	'P'
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xb0	; 176
	.db #0x50	; 80	'P'
	.db #0x5f	; 95
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x71	; 113	'q'
	.db #0x7f	; 127
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x14	; 20
	.db #0xfc	; 252
	.db #0xfe	; 254
	.db #0x1a	; 26
	.db #0x14	; 20
	.db #0xf4	; 244
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x1c	; 28
	.db #0xfc	; 252
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x0b	; 11
	.db #0x0e	; 14
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x1d	; 29
	.db #0x1e	; 30
	.db #0x72	; 114	'r'
	.db #0x7d	; 125
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x70	; 112	'p'
	.db #0xf0	; 240
	.db #0x9c	; 156
	.db #0x7c	; 124
	.db #0x91	; 145
	.db #0xfe	; 254
	.db #0x91	; 145
	.db #0xfe	; 254
	.db #0x71	; 113	'q'
	.db #0x5e	; 94
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x12	; 18
	.db #0xfe	; 254
	.db #0x12	; 18
	.db #0xfe	; 254
	.db #0x1c	; 28
	.db #0xf4	; 244
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x71	; 113	'q'
	.db #0x4e	; 78	'N'
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xb8	; 184
	.db #0x78	; 120	'x'
	.db #0x1c	; 28
	.db #0xe4	; 228
	.db #0xf1	; 241
	.db #0x8f	; 143
	.db #0xf1	; 241
	.db #0xbf	; 191
	.db #0xf1	; 241
	.db #0xbf	; 191
	.db #0x51	; 81	'Q'
	.db #0x5f	; 95
	.db #0x13	; 19
	.db #0x1f	; 31
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0xe2	; 226
	.db #0x1e	; 30
	.db #0xfa	; 250
	.db #0x1e	; 30
	.db #0xfa	; 250
	.db #0x14	; 20
	.db #0xf4	; 244
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x71	; 113	'q'
	.db #0x4e	; 78	'N'
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xc4	; 196
	.db #0x44	; 68	'D'
	.db #0xbe	; 190
	.db #0x7a	; 122	'z'
	.db #0x1f	; 31
	.db #0xe1	; 225
	.db #0xf1	; 241
	.db #0x8f	; 143
	.db #0xf1	; 241
	.db #0xbf	; 191
	.db #0xf1	; 241
	.db #0xbf	; 191
	.db #0x51	; 81	'Q'
	.db #0x5f	; 95
	.db #0x13	; 19
	.db #0x1f	; 31
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0xe2	; 226
	.db #0x1c	; 28
	.db #0xfc	; 252
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0x48	; 72	'H'
	.db #0x78	; 120	'x'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x4f	; 79	'O'
	.db #0x48	; 72	'H'
	.db #0xe7	; 231
	.db #0xa4	; 164
	.db #0xfb	; 251
	.db #0xbc	; 188
	.db #0xf1	; 241
	.db #0x8e	; 142
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xb8	; 184
	.db #0x78	; 120	'x'
	.db #0x1c	; 28
	.db #0xe4	; 228
	.db #0x71	; 113	'q'
	.db #0x4f	; 79	'O'
	.db #0x31	; 49	'1'
	.db #0x3f	; 63
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x13	; 19
	.db #0x1f	; 31
	.db #0x22	; 34
	.db #0x3e	; 62
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x1e	; 30
	.db #0xe2	; 226
	.db #0x1e	; 30
	.db #0xfa	; 250
	.db #0x1e	; 30
	.db #0xfa	; 250
	.db #0x14	; 20
	.db #0xf4	; 244
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x71	; 113	'q'
	.db #0x4e	; 78	'N'
	.db #0xf1	; 241
	.db #0x8f	; 143
	.db #0xf1	; 241
	.db #0xbf	; 191
	.db #0xf1	; 241
	.db #0xbf	; 191
	.db #0x71	; 113	'q'
	.db #0x7f	; 127
	.db #0x43	; 67	'C'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0xb8	; 184
	.db #0x78	; 120	'x'
	.db #0x1c	; 28
	.db #0xe4	; 228
	.db #0x1e	; 30
	.db #0xe2	; 226
	.db #0x1e	; 30
	.db #0xfa	; 250
	.db #0x1e	; 30
	.db #0xfa	; 250
	.db #0x1c	; 28
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x47	; 71	'G'
	.db #0x44	; 68	'D'
	.db #0xfb	; 251
	.db #0xbc	; 188
	.db #0xf1	; 241
	.db #0x8e	; 142
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xc4	; 196
	.db #0x44	; 68	'D'
	.db #0xbe	; 190
	.db #0x7a	; 122	'z'
	.db #0x1e	; 30
	.db #0xe2	; 226
	.db #0x71	; 113	'q'
	.db #0x4f	; 79	'O'
	.db #0x31	; 49	'1'
	.db #0x3f	; 63
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x13	; 19
	.db #0x1f	; 31
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0xe6	; 230
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x38	; 56	'8'
	.db #0x3f	; 63
	.db #0x70	; 112	'p'
	.db #0x4f	; 79	'O'
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x38	; 56	'8'
	.db #0xf8	; 248
	.db #0x1c	; 28
	.db #0xe4	; 228
	.db #0xf0	; 240
	.db #0x8f	; 143
	.db #0xf0	; 240
	.db #0xbf	; 191
	.db #0xf0	; 240
	.db #0xbf	; 191
	.db #0x50	; 80	'P'
	.db #0x5f	; 95
	.db #0x13	; 19
	.db #0x1f	; 31
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0xe2	; 226
	.db #0x1e	; 30
	.db #0xfa	; 250
	.db #0x1e	; 30
	.db #0xfa	; 250
	.db #0x14	; 20
	.db #0xf4	; 244
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x47	; 71	'G'
	.db #0x44	; 68	'D'
	.db #0xfb	; 251
	.db #0xbc	; 188
	.db #0xf1	; 241
	.db #0x8e	; 142
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xc4	; 196
	.db #0x44	; 68	'D'
	.db #0xbe	; 190
	.db #0x7a	; 122	'z'
	.db #0x1e	; 30
	.db #0xe2	; 226
	.db #0x71	; 113	'q'
	.db #0x4f	; 79	'O'
	.db #0x31	; 49	'1'
	.db #0x3f	; 63
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x13	; 19
	.db #0x1f	; 31
	.db #0x22	; 34
	.db #0x3e	; 62
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x1e	; 30
	.db #0xe6	; 230
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0x48	; 72	'H'
	.db #0x78	; 120	'x'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
__xinit__EndScreenMap:
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x18	; 24
	.db #0x0e	; 14
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x04	; 4
	.db #0x7f	; 127
	.db #0x13	; 19
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x02	; 2
	.db #0x0b	; 11
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x0a	; 10
	.db #0x08	; 8
	.db #0x0d	; 13
	.db #0x06	; 6
	.db #0x7f	; 127
__xinit__LevelTwoTutorial:
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x43	; 67	'C'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x44	; 68	'D'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x45	; 69	'E'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x46	; 70	'F'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x47	; 71	'G'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x4a	; 74	'J'
	.db #0x7f	; 127
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x7f	; 127
	.db #0x59	; 89	'Y'
	.db #0x5a	; 90	'Z'
	.db #0x7f	; 127
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x7f	; 127
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x4b	; 75	'K'
	.db #0x4c	; 76	'L'
	.db #0x7f	; 127
	.db #0x4f	; 79	'O'
	.db #0x50	; 80	'P'
	.db #0x7f	; 127
	.db #0x5b	; 91
	.db #0x5c	; 92
	.db #0x7f	; 127
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x7f	; 127
	.db #0x57	; 87	'W'
	.db #0x58	; 88	'X'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
__xinit__tilesetIndex:
	.db #0x00	;  0
__xinit__spriteIndex:
	.db #0x00	;  0
__xinit__In_Loading_Screen:
	.db #0x00	;  0
__xinit__PlayerState:
	.db #0x00	;  0
__xinit__MoveCooldown:
	.db #0x00	;  0
	.area _CABS (ABS)
