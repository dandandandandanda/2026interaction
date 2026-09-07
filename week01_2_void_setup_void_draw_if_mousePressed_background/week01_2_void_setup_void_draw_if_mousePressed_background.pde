//week01_2_void_setup_void_draw_if_mousePressed_background
///interaction
void setup(){
  size(500,500);
}
void draw(){//draw 60 per sec 
  if(mousePressed) background(255, 0, 0);//press red
  else background(0, 255, 0);//green
}
