
//week02_5_processing_do_re_mi_import_serial_myPort_void_keyPressed_write
//google: 我想要把Arduino 和Processing結合 
//在Processing按下key 1 2 3鍵 對應 Arduino 的 DoReMi使用USB Serial
import processing.serial.*;//USB Serial 外掛
Serial myPort;//use myPort to sent data
void setup(){
  size(300,200);
  myPort = new Serial(this,"COM3", 9600);
}
void draw(){
  
}
void keyPressed(){
  if (key='1') myPort.write('1');
  if (key='2') myPort.write('2');
  if (key='3') myPort.write('3');
}
