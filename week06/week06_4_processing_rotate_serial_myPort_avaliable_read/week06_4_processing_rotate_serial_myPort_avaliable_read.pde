//week06_4_processing_rotate_serial_myPort_avaliable_read
//from week06_3_processing_rotate_translate_rotate_rect
import processing.serial.*;
Serial myPort;
void setup(){
  size(500, 500);
  myPort = new Serial(this, "COM4", 9600);
}
int now = 0;// current angle
int dd = 1;// now++ now-- use now+= dd be 1 or -1
void draw(){
  if (myPort.available()>0){
    if (myPort.read()=='1') dd = -1;
    else dd = 1;
  }
  background(0);
  translate(250, 250);
  now += dd;
  rotate( radians(now) );
  rect(-200, -200, 400, 400);
}
void mousePressed(){// mouse control
  if (dd==1) dd = -1;//+ to -
  else dd = 1;//- to +
}
