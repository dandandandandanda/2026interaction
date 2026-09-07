//week01_3_painter_if_mousePressed_line_if_mouseButton_stroke
//mspaint mouse
void setup(){
  size(500, 500);
}

void draw(){
  if(mouseButton==LEFT) stroke(255, 0, 0);//red
  if(mouseButton==CENTER) stroke(0, 255, 0);//green
  if(mouseButton==RIGHT) stroke(0, 0, 255);//blue
  if(mousePressed) line(mouseX, mouseY, pmouseX, pmouseY);
  //draw when press
}
