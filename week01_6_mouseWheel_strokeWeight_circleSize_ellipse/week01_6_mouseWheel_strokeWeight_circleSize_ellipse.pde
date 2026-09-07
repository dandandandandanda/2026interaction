//week01_6_mouseWheel_strokeWeight_circleSize_ellipse
//combine 05 and 04 to change size with mouseWheel

float circleSize = 5;
void setup(){
  size(500, 500);
  background(255);//white
}

void draw(){
    strokeWeight(circleSize);//paint size
    if(mousePressed) {
      if(mouseButton==LEFT) stroke(0);
      if(mouseButton==RIGHT) stroke(255);//eraser
      line(mouseX, mouseY, pmouseX, pmouseY);
  }
  noStroke();
  rect(0, 0, 100, 100);
  stroke(0);
  ellipse(50, 50, circleSize, circleSize);
}
void mouseWheel(MouseEvent e){
  circleSize = circleSize - e.getCount();
}
