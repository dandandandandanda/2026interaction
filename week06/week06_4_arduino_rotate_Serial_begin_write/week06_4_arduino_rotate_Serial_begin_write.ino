//week06_4_arduino_rotate_Serial_begin_write
//from week06_2_arduino_button_change_mode_LED_flow
int mode = 0; //0 is small to big and 1 is big to small
void setup() {
  Serial.begin(9600);
  pinMode(2, INPUT_PULLUP);
  for (int i=3; i<=13; i++) {
      pinMode(i, OUTPUT))
    }
    tone(8, 523, 100);delay(100);//Do
    tone(8, 784, 100);delay(100);//Mi
}
int prev = HIGH, now = 3;//button moments before and current glowing LED
void loop() {
  if ( prev == HIGH && digitalRead(2) == LOW ){
      if (mode==0){
        mode = 1;
       tone(8, 523, 100);delay(100);//Do
       tone(8, 784, 100);delay(100);//Mi
      }
      else{
        mode = 0;//1 to 0
        tone(8, 523, 100);delay(100);//Do
        tone(8, 784, 100);delay(100);//Mi
      }
        prev = LOW;//tone() Do Re Mi

        if(mode==1) Serial.write('1');
        if(mode==0) Serial.write('0');
    } else if ( prev == LOW && digitalRead(2) == HIGH ){
        prev = HIGH;
    }
    if (mode==0){//0:small to big
        now++;
        if (now>13) now = 3;//over range so back to 3
        digitalWrite(now, HIGH); //bright
        delay (100);
        digitalWrite(now, LOW);//dark
      } else{//1:big to small
          now--;
          if (now<3) now = 13;
          digitalWrite(now, HIGH); //bright
          delay (100);
          digitalWrite(now, LOW);//dark
        }//repeat digitalWrite() delay() digitalWrite() can be put outside
      

}
