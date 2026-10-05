///week05_2_processing_do_re_mi_serial_tone_noTone
//modi from week05_1_arduino_do_re_mi_Serial
void setup(){
  Serial.begin(9600);//usb Serial
  tone(8, 523, 100); delay(200);//Do
  tone(8, 587, 100); delay(200);//Re
  tone(8, 659, 100); delay(200);//Mi
  tone(8, 587, 100); delay(200);//Re
  tone(8, 523, 100); delay(200);//Do
}
char c = '0';//no sound
void loop(){
  if (Serial.available()){
  char c = Serial.read();
  if (c=='0') noTone(8);//no sound
  if (c=='1') tone(8, 523, 100);
  if (c=='2') tone(8, 587, 100);
  if (c=='3') tone(8, 659, 100);
  }
}
