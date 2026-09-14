//week02_5_processing_do_re_mi_Serial_begin_availible_read_if_tone
//google: 我想要把Arduino 和Processing結合 
//在Processing按下key 1 2 3鍵 對應 Arduino 的 DoReMi使用USB Serial

void setup() {
  // 初始化序列埠，通訊速率設為 9600
  Serial.begin(9600);
}

void loop() {
  // 檢查是否有收到來自 Processing 的資料
  if (Serial.available()) {
    char c = Serial.read(); // 讀取一個字元
    if (c=='1') tone(8, 523, 1000);
    if (c=='2') tone(8, 587, 1000);
    if (c=='3') tone(8, 659, 1000);
  }
}
