///week05_3_arudino_do_re_mi_serial_blink
//modi from week05_2_processing_do_re_mi_serial_tone_noTone
void setup(){
  pinMode(8, OUTPUT);//buzzer
  pinMode(10, OUTPUT);//0
  pinMode(11, OUTPUT);//1
  pinMode(12, OUTPUT);//2
  pinMode(13, OUTPUT);//3
  
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
  }
  for (int i=10; i<=13; i++) digitalWrite(i, LOW);//dark all
  if (c>='0' && c<='3') digitalWrite(c-'0'+10,HIGH);//大小寫換算
  if (c=='0') noTone(8);//no sound
  if (c=='1') tone(8, 523, 100);
  if (c=='2') tone(8, 587, 100);
  if (c=='3') tone(8, 659, 100);
}
