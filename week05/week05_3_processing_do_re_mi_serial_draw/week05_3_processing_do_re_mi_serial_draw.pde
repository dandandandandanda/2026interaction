//week05_3_processing_do_re_mi_serial_draw
//modi from week05_2_processing_do_re_mi_serial_keyPressed_keyReleased
import processing.serial.*;//use usb serial extention
Serial myPort;
void setup(){
  size(300, 200);
  myPort = new Serial(this, "COM4", 9600);
}
void draw(){
  background(128);
  if(p1==1) fill(0);
  else fill(255);
  rect(0, 0, 100, 150);
  
  if(p2==1) fill(0);
  else fill(255);
  rect(100, 0, 100, 150);
  
  if(p3==1) fill(0);
  else fill(255);
  rect(200, 0, 100, 150);
  
  fill(255, 0, 0);//red circle
  if (now=='1') ellipse(50, 175, 50, 50);
  if (now=='2') ellipse(150, 175, 50, 50);
  if (now=='3') ellipse(250, 175, 50, 50);
}
char now = '0';//which button getting press
int p1 = 0, p2 = 0, p3 = 0;//變數紀錄按鍵
void keyPressed(){
  now = key;
  if(p1==0 && key=='1') myPort.write('1');
  if(p2==0 && key=='2') myPort.write('2');
  if(p3==0 && key=='3') myPort.write('3');
  if(p1==0 && key=='1') p1 = 1;
  if(p2==0 && key=='2') p1 = 2;
  if(p3==0 && key=='3') p1 = 3;
}
void keyReleased(){
  now = '0';
  if (key=='1') p1 = 0;
  if (key=='2') p2 = 0;
  if (key=='3') p3 = 0;
  myPort.write('0');//tell arduino no sound
}
