//week05_2_processing_do_re_mi_serial_keyPressed_keyReleased
//modi from week05_1_arduino_do_re_mi_Serial
import processing.serial.*;//use usb serial extention
Serial myPort;
void setup(){
  size(300, 200);
  myPort = new Serial(this, "COM4", 9600);
}
void draw(){
  
}
int p1 = 0, p2 = 0, p3 = 0;//變數紀錄按鍵
void keyPressed(){
  if(p1==0 && key=='1') myPort.write('1');
  if(p1==0 && key=='2') myPort.write('2');
  if(p1==0 && key=='3') myPort.write('3');
  if(p1==0 && key=='1') p1 = 1;
  if(p1==0 && key=='2') p1 = 2;
  if(p1==0 && key=='3') p1 = 3;
}
void keyReleased(){
  if (key=='1') p1 = 0;
  if (key=='2') p2 = 0;
  if (key=='3') p3 = 0;
  myPort.write('0');//tell arduino no sound
}
