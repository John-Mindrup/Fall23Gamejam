#include <gb/gb.h>

#define SPRITE_WIDTH 8
#define BOUNCER_SPRITE_INDEX 22
struct Bouncer{
    int8_t x;
    int8_t y;
    int8_t looking;
    UBYTE spriteids[6];
    UBYTE Noticeid;
    int8_t timer;
};

void Move_Bouncer(struct Bouncer* character){
    
    move_sprite(character->spriteids[0], character->x, character->y);
    move_sprite(character->spriteids[1], character->x + SPRITE_WIDTH, character->y);
    move_sprite(character->spriteids[2], character->x, character->y + SPRITE_WIDTH);
    move_sprite(character->spriteids[3], character->x + SPRITE_WIDTH, character->y + SPRITE_WIDTH);
    move_sprite(character->spriteids[4], character->x, character->y + SPRITE_WIDTH * 2);
    move_sprite(character->spriteids[5], character->x + SPRITE_WIDTH, character->y + SPRITE_WIDTH * 2);
}

void Destroy_Bouncer(struct Bouncer* bouncer){
    for(int i = 0; i < 6; i++){
        set_sprite_tile(bouncer->spriteids[i], 0x7F);
    }
}

void Run_Bouncer(struct Bouncer* character)
{
    character->timer -= 1;
    if(character->timer < 16){
        move_sprite(character->Noticeid, character->x, character->y - 8);
    }
    else{
        move_sprite(character->Noticeid, 0, 0);
    }
}
