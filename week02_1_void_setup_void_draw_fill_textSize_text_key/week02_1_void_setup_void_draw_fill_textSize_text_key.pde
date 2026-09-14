//week02_1_void_setup_void_draw_fill_textSize_text_key
//keyboard add mouse
void setup(){
  size(500, 500);
  size(500, 500);
}
void draw(){
  if(mousePressed) background(#A27171);
  else background(#3FD897);
  fill(0, 0, 255); //blue filling
  textSize(80);
  text("key: " + key, 200, 300); //off the chinese typing to function
}
