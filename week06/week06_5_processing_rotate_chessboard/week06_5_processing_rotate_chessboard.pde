//week06_5_processing_rotate_chessboard
//from week06_3_processing_rotate_translate_rotate_rect
//spinning maze/chess board
void setup(){
  size(500, 500);
}
void draw(){
  background(128);
  translate(250, 250);//暫時註解掉來實驗
  rotate( radians(frameCount) );
  rect(-200, -200, 400, 400);
  for (int i=0; i<8; i++){//left i y
        for (int j=0; j<8; j++){//right j x
        if ( (i+j)%2 == 1) fill(255);
        else fill(0);
        rect(j*50-200, i*50-200, 50, 50);//blocks
        }
     }
}
