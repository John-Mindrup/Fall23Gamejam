#include <gb/gb.h>

#define SPRITE_WIDTH 8
#define PLAYER_SPRITE_START 0
#define PLAYER_SPRITE_LENGTH 4
struct Character {
    UBYTE spriteids[4];
    uint8_t hasAnim;
    uint8_t curAnim;
    uint8_t animFrame;
    uint8_t x;
    uint8_t y;
    uint8_t width;
    uint8_t height;
};

void Move_Character(struct Character* character){
    
    move_sprite(character->spriteids[0], character->x, character->y);
    move_sprite(character->spriteids[1], character->x + SPRITE_WIDTH, character->y);
    move_sprite(character->spriteids[2], character->x, character->y+ SPRITE_WIDTH);
    move_sprite(character->spriteids[3], character->x + SPRITE_WIDTH, character->y + SPRITE_WIDTH);
}
void Destroy_Character(struct Character* bouncer){
    for(int i = 0; i < 4; i++){
        set_sprite_tile(bouncer->spriteids[i], 0x7F);
    }
}