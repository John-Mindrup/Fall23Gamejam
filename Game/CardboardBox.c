#include <gb/gb.h>

#define SPRITE_WIDTH 8
#define BOX_SPRITE_INDEX 16
struct CardboardBox {
    UBYTE spriteids[6];
    uint8_t hasAnim;
    uint8_t curAnim;
    uint8_t x;
    uint8_t y;
    uint8_t width;
    uint8_t height;
};

void Move_Box(struct CardboardBox* character){
    
    move_sprite(character->spriteids[0], character->x, character->y);
    move_sprite(character->spriteids[1], character->x + SPRITE_WIDTH, character->y);
    move_sprite(character->spriteids[2], character->x + SPRITE_WIDTH * 2, character->y);
    move_sprite(character->spriteids[3], character->x, character->y + SPRITE_WIDTH);
    move_sprite(character->spriteids[4], character->x + SPRITE_WIDTH, character->y + SPRITE_WIDTH);
    move_sprite(character->spriteids[5], character->x + SPRITE_WIDTH * 2, character->y + SPRITE_WIDTH);
}

void Destroy_Box(struct CardboardBox* bouncer){
    for(int i = 0; i < 6; i++){
        set_sprite_tile(bouncer->spriteids[i], 0x7F);
    }
}