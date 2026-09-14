//week02_2_Arduino_void_setup_pinMode_void_loop_digitalWrite
void setup() {
  // put your setup code here, to run once:
  pinMode(8, OUTPUT); //press 8 to buzz
}

void loop() { //first save then arrow button to upload into board
  // put your main code here, to run repeatedly:
  digitalWrite(8, HIGH); //high charge
  delay(1000); //1 sec 1000ms
  digitalWrite(8, LOW); //low charge
  delay(1000); //1 sec high frequency buzz if set only 1ms, 10 is loud, 2 is samll
}
