//week06_1_arduino_pin_2_button_INPUT_PULLUP
void setup() {
  pinMode(2, INPUT_PULLUP);//default pin 2 as spreaker
  pinMode(8, OUTPUT);//default pin 8 as buzzer
  tone(8, 523, 100);//noise to make sure it's working
}

void loop() {
  if( digitalRead(2) == LOW ){
      tone(8, 523, 100);//0.1sec
      delay(100);
    }
}
