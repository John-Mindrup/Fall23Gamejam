void setup_sprite(void){
    int ylayer = 0;
    for(int i = 0; i < 24; i++){
        set_sprite_tile(i, i);
        if(i != 0 && i % 4 == 0){
            ylayer += 8;
        }
        if(i % 4 == 0){
            move_sprite(i, 8, ylayer + 80);
        }
        else if(i % 4 == 1){
            move_sprite(i, 16, ylayer + 80);
        }
        else if(i % 4 == 2){
            move_sprite(i, 24, ylayer + 80);
        }
        else{
            move_sprite(i, 32, ylayer + 80);
        }
        
    }
}