//week01_4_painter_background_stroke_strokeWeight
//mspaint mouse extra
void setup(){
  size(500, 500);
  background(255);//white
  strokeWeight(5);//paint size
}

void draw(){
  if(mousePressed) {
    if(mouseButton==LEFT) stroke(0);
    if(mouseButton==RIGHT) stroke(255);//eraser
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
