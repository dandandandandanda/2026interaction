///AI: Processing 怎麼用到 mouse wheel
///week01_5_google_gemini_mouse_wheel_void_mouseVoid_MouseEvent_getCount
//Copy
float circleSize = 50; // 宣告圓形初始大小

void setup() {
  size(400, 400);
}

void draw() {
  background(220);
  // 繪製圓形，大小由 circleSize 決定
  ellipse(width / 2, height / 2, circleSize, circleSize);
}

// 監聽滑鼠滾輪事件
void mouseWheel(MouseEvent event) {
  float e = event.getCount(); // 取得滾輪滾動量
  
  // 每次滾動改變圓形大小
  circleSize -= e * 5; 
  
  // 限制圓形大小的極限值，避免過大或消失
  circleSize = constrain(circleSize, 10, 300);
}
