///week05_1_arduino_do_re_mi_Serial
//modi from week02_5_processing_do_re_mi_import_serial_myPort_void_keyPressed_write
//google: 我想要把Arduino 和Processing結合 
//在Processing按下key 1 2 3鍵 對應 Arduino 的 DoReMi使用USB Serial
void setup(){
  Serial.begin(9600);//usb Serial
  tone(8, 523, 100);//Do
  delay(200);
  
  tone(8, 587, 100);//Re
  delay(200);
  
  tone(8, 659, 100);//Mi
}
void loop(){
  if (Serial.available()){
  char c = Serial.read();
  if (c='1') tone(8, 523, 100);
  if (c='2') tone(8, 587, 100);
  if (c='3') tone(8, 659, 100);
  }
}
