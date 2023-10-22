#include <gb/gb.h>
#include "Tileset.c"
#include "SpriteSet.c"
#include "ClubFront.c"
#include "Character.c"
#include "MainCharacterFullMap.c"
#include "MainCharacterFullSize.c"
#include "Alphabet.c"
#include "PressStartMap.c"
#include "EmptyWindowMap.c"
#include "LevelOneTutorialMap.c"
#include "CardboardBox.c"
#include "Bouncer.c"
#include "GameOverMap.C"
#include "rand.h"
#include "LevelTwoStartMap.c"
#include "LevelTwoMapA.c"
#include "ClubCharacterSprites.c"
#include "DanceingDefines.c"
#include "EndScreenMap.c"
#include "LevelTwoTutorial.c"

int8_t tilesetIndex = 0;
int8_t spriteIndex = 0;
int8_t In_Loading_Screen = 0;
int8_t PlayerState = 0;
int8_t MoveCooldown = 0;
void updateSwitches(void){

	SHOW_BKG;
}

struct Character Player;
struct CardboardBox Box;
struct Bouncer Bouncer;
struct Character Bkg_Chars[8];
struct Character Dance_Master;

void init_player(void){
    Player.height = 16;
	Player.width = 16;
	Player.x = 16;
	Player.y = 88;
    Player.animFrame = 0;
	set_sprite_tile(spriteIndex, PLAYER_SPRITE_START);
	Player.spriteids[0] = spriteIndex++;
	set_sprite_tile(spriteIndex, PLAYER_SPRITE_START + 1);
	Player.spriteids[1] = spriteIndex++;
	set_sprite_tile(spriteIndex, PLAYER_SPRITE_START + 2);
	Player.spriteids[2] = spriteIndex++;
	set_sprite_tile(spriteIndex, PLAYER_SPRITE_START + 3);
	Player.spriteids[3] = spriteIndex++;
	Move_Character(&Player);
}

void init_character(int8_t spriteInd, struct Character *c, int8_t x, int8_t y){
    c->height = 16;
    c->width = 16;
    c->x = x;
    c->y = y;
    set_sprite_tile(spriteIndex, spriteInd);
	c->spriteids[0] = spriteIndex++;
	set_sprite_tile(spriteIndex, spriteInd + 1);
	c->spriteids[1] = spriteIndex++;
	set_sprite_tile(spriteIndex, spriteInd + 2);
	c->spriteids[2] = spriteIndex++;
	set_sprite_tile(spriteIndex, spriteInd + 3);
	c->spriteids[3] = spriteIndex++;
    Move_Character(c);
}

void init_cardboard(void){
    Box.height = 16;
	Box.width = 24;
	Box.x = 8;
	Box.y = 128;
	set_sprite_tile(0, BOX_SPRITE_INDEX);
	Box.spriteids[0] = 0;
	set_sprite_tile(1, BOX_SPRITE_INDEX + 1);
	Box.spriteids[1] = 1;
	set_sprite_tile(2, BOX_SPRITE_INDEX + 2);
	Box.spriteids[2] = 2;
	set_sprite_tile(3, BOX_SPRITE_INDEX + 3);
	Box.spriteids[3] = 3;
    set_sprite_tile(4, BOX_SPRITE_INDEX + 4);
	Box.spriteids[4] = 4;
    set_sprite_tile(5, BOX_SPRITE_INDEX + 5);
	Box.spriteids[5] = 5;
    spriteIndex += 6;
	Move_Box(&Box);
}

void init_bouncer(void){
    Bouncer.timer = rand();
    if(Bouncer.timer < 64)
        Bouncer.timer += 64;
    Bouncer.x = 96;
	Bouncer.y = 120;
	set_sprite_tile(spriteIndex, BOUNCER_SPRITE_INDEX);
	Bouncer.spriteids[0] = spriteIndex++;
	set_sprite_tile(spriteIndex, BOUNCER_SPRITE_INDEX + 1);
	Bouncer.spriteids[1] = spriteIndex++;
	set_sprite_tile(spriteIndex, BOUNCER_SPRITE_INDEX + 2);
	Bouncer.spriteids[2] = spriteIndex++;
	set_sprite_tile(spriteIndex, BOUNCER_SPRITE_INDEX + 3);
	Bouncer.spriteids[3] = spriteIndex++;
    set_sprite_tile(spriteIndex, BOUNCER_SPRITE_INDEX + 4);
	Bouncer.spriteids[4] = spriteIndex++;
    set_sprite_tile(spriteIndex, BOUNCER_SPRITE_INDEX + 5);
	Bouncer.spriteids[5] = spriteIndex++;
    set_sprite_tile(spriteIndex, 28);
    Bouncer.Noticeid = spriteIndex++;
	Move_Bouncer(&Bouncer);
}

void animatePlayer(void){
    switch(Player.animFrame){
        case 0:
            set_sprite_tile(Player.spriteids[0], PLAYER_SPRITE_START + 4);
            set_sprite_tile(Player.spriteids[1], PLAYER_SPRITE_START + 5);
            set_sprite_tile(Player.spriteids[2], PLAYER_SPRITE_START + 6);
            set_sprite_tile(Player.spriteids[3], PLAYER_SPRITE_START + 7);
            break;
        case 1:
            set_sprite_tile(Player.spriteids[0], PLAYER_SPRITE_START);
            set_sprite_tile(Player.spriteids[1], PLAYER_SPRITE_START + 1);
            set_sprite_tile(Player.spriteids[2], PLAYER_SPRITE_START + 2);
            set_sprite_tile(Player.spriteids[3], PLAYER_SPRITE_START + 3);
            break;
        case 2:
            set_sprite_tile(Player.spriteids[0], PLAYER_SPRITE_START + 8);
            set_sprite_tile(Player.spriteids[1], PLAYER_SPRITE_START + 9);
            set_sprite_tile(Player.spriteids[2], PLAYER_SPRITE_START + 10);
            set_sprite_tile(Player.spriteids[3], PLAYER_SPRITE_START + 11);
            break;
        case 3:
            set_sprite_tile(Player.spriteids[0], PLAYER_SPRITE_START);
            set_sprite_tile(Player.spriteids[1], PLAYER_SPRITE_START + 1);
            set_sprite_tile(Player.spriteids[2], PLAYER_SPRITE_START + 2);
            set_sprite_tile(Player.spriteids[3], PLAYER_SPRITE_START + 3);
            break;
    }
    Player.animFrame++;
    if(Player.animFrame == 4)
        Player.animFrame = 0;
}

void level_one_init(void){
    
    HIDE_SPRITES;
    PlayerState = 1;
    In_Loading_Screen = 1;
    set_win_tiles(0, 0, 32,32, EmptyMap);
    set_win_tiles(5, 7, 11, 1, PressStartMap);
    set_win_tiles(4, 4, 8, 3, LevelOneTutorialMap);
    init_cardboard();
    init_bouncer();
    SHOW_WIN;
    SHOW_BKG;
    while(In_Loading_Screen){
        if(joypad() & J_START){
        HIDE_WIN;
        SHOW_BKG;
        SHOW_SPRITES;
        initrand(DIV_REG);
        In_Loading_Screen = 0;
        }
    }
}

void level_two_init(void){
    HIDE_SPRITES;
    
    PlayerState = 2;
    In_Loading_Screen = 1;
    set_win_tiles(0, 0, 32,32, EmptyMap);
    set_win_tiles(4, 4, 9, 2, LevelTwoStartMap);
    set_win_tiles(0, 7, 20, 5, LevelTwoTutorial);
    set_bkg_tiles(0, 0, 20,18, LevelTwoMapA);
    init_player();
    init_character(61, Bkg_Chars, 64, 32);
    init_character(61, Bkg_Chars + 1, 80, 32);
    init_character(65, Bkg_Chars + 2, 96, 32);
    init_character(0x45, &Dance_Master, 96, 88);
    SHOW_WIN;
    SHOW_BKG;
    while(In_Loading_Screen){
        if(joypad() & J_START){
        HIDE_WIN;
        SHOW_BKG;
        SHOW_SPRITES;
        In_Loading_Screen = 0;
        }
    }
    int8_t animTimer = 0;
    while(Player.x < 64){
        
        for(int i = 0; i < 3; i++){
            if (i == 2){
                Player.x += 1;
                Move_Character(&Player);
                animTimer++;
                if(animTimer > 4)
                {
                    animatePlayer();
                    animTimer = 0;
                }
                    
            }
            
            updateSwitches();
            wait_vbl_done();
        }
    }
    while(Player.animFrame)
        animatePlayer();
}

void init(void){
    SHOW_WIN;
    DISPLAY_ON;
    set_win_data(tilesetIndex, 27, Alphabet);
    tilesetIndex += 27;
    
    set_bkg_data(tilesetIndex, 66, Tileset);
    tilesetIndex += 66;
    set_bkg_tiles(0,0,20,18,ClubFront);
    set_sprite_data(0, 61, SpriteSet);
    set_sprite_data(61, 36, ClubCharacterSprites);
    //init_player();
    level_one_init();
    //level_two_init();
    
}
void checkInput(void) {

    // if (joypad() & J_B) {
	// // Use the 'blankScreen' array to write background tiles starting at 0,0 (tile positions)
	// 	//  and for 20 tiles in width and 18 tiles in height
	// 	//set_bkg_tiles(0,0,20,18,blankScreen);
		
    // }

    if(PlayerState == 1){
        // RIGHT
        if (joypad() & J_RIGHT) {
            if(!MoveCooldown)
            {
                Box.x+= 1;
                MoveCooldown = 4;
            }
            
            
        }
        if (joypad() & J_LEFT) {
            if(Box.x > 8 && !MoveCooldown){
                Box.x--;
                MoveCooldown = 4;
            }
            
            
        }
        Move_Box(&Box);
    }

	// if (joypad() & J_UP) {
	// 	Player.y--;
		
	// }

	// // DOWN
	// if (joypad() & J_DOWN) {
	// 	Player.y++;
		
	// }

	// // LEFT
	// if (joypad() & J_LEFT) {
	// 	Player.x--;
		
	// }	
	
	// // RIGHT
	// if (joypad() & J_RIGHT) {
	// 	Player.x++;
		
	// }

    if(joypad() & J_START){
        HIDE_WIN;
    }
	
	// // Move the sprite in the first movable sprite list (0)
	// //  the the position of X (player[0]) and y (player[1])
	// Move_Character(&Player);

}

void gameover(void){
    
    HIDE_SPRITES;
    set_win_tiles(0, 0, 32,32, EmptyMap);
    set_win_tiles(5, 7, 9, 1, GameOverMap);  
    SHOW_WIN;
    while(1){
        updateSwitches();
    }
}

void animateDancing(struct Character* Character, int8_t spriteNum)
{
    set_sprite_tile(Character->spriteids[0], spriteNum);
    set_sprite_tile(Character->spriteids[1], spriteNum + 1);
    set_sprite_tile(Character->spriteids[2], spriteNum + 2);
    set_sprite_tile(Character->spriteids[3], spriteNum + 3);
}

void EndScreen(void)
{
    HIDE_SPRITES;
    set_win_tiles(0, 0, 32,32, EmptyMap);
    set_win_tiles(5, 6, 11,4, EndScreenMap);  
    SHOW_WIN;
    while(1){
        updateSwitches();
    }
}

void danceOff(void){
    animateDancing(&Player, PLAYERBASE);
    int8_t masterDancing = 1;
    int8_t moves[8];
    int8_t Round = 1;
    int8_t incorrect = 0;
    while(Round < 5){
        masterDancing = 1;
        for(int j = 0; j < Round + 3; j++){
            
            int8_t r = rand() %5;
            moves[j] = r;
            switch(r){
                case 0:
                    animateDancing(&Dance_Master, MASTERRIGHT);
                    break;
                case 1:
                    animateDancing(&Dance_Master, MASTERLEFT);
                    break;
                case 2:
                    animateDancing(&Dance_Master, MASTERDOWN);
                    break;
                case 3:
                    animateDancing(&Dance_Master, MASTERUP);
                    break;
                case 4:
                    animateDancing(&Dance_Master, MASTERA);
                    break;
            }
            for(int i = 0; i < 60; i++){
                wait_vbl_done();
            }
        }
        masterDancing = 0;
        int8_t movesMade = 0;
        int8_t playerDancing = 0;
        while(movesMade < Round + 3){
            int8_t move = 0;
            int8_t input = joypad();
            
            if (input & J_RIGHT) 
            {
                move = 0;
                animateDancing(&Player, PLAYERRIGHT);
                if(moves[movesMade++] != move){
                    incorrect++;
                }
                playerDancing = 1;
            }
            else if (input & J_LEFT) 
            {
                move = 1;
                animateDancing(&Player, PLAYERLEFT);
                
                if(moves[movesMade++] != move){
                    incorrect++;
                }
                playerDancing = 1;
            }
            else if (input & J_DOWN) 
            {
                move = 2;
                animateDancing(&Player, PLAYERDOWN);
                if(moves[movesMade++] != move){
                    incorrect++;
                }
                playerDancing = 1;
            }
            else if (input & J_UP) 
            {
                move = 3;
                animateDancing(&Player, PLAYERUP);
                if(moves[movesMade++] != move){
                    incorrect++;
                }
                playerDancing = 1;
            }
            else if (input & J_A) 
            {
                move = 4;
                animateDancing(&Player, PLAYERA);
                if(moves[movesMade++] != move){
                    incorrect++;
                }
                playerDancing = 1;
            }
            for(int i = 0; i < 40 && playerDancing; i++){
                wait_vbl_done();
            }
            if(playerDancing)
            {
                playerDancing = 0;
            }
            animateDancing(&Player, PLAYERBASE);
            if(incorrect > 2){
                gameover();
            }
        }
        Round++;
    }
    EndScreen();
}

void main(void) {
	init();
	// start_screen();
	// initrand(DIV_REG);
	//init_player();
    
    
	
	while(1) {
        
		checkInput();
		updateSwitches();
		wait_vbl_done();
		// Game code here
        if(MoveCooldown != 0)
        {
            MoveCooldown--;
        }
        if(PlayerState == 1)
        {
            Run_Bouncer(&Bouncer);
            if(Bouncer.timer <= 1 && MoveCooldown > 0){
                gameover();
            }
            if(Box.x >= 64)
            {
                Destroy_Bouncer(&Bouncer);
                Destroy_Box(&Box);
                spriteIndex -= 12;
                level_two_init();
            }
        }
        if(PlayerState == 2){
            danceOff();
        }
	}
	
}