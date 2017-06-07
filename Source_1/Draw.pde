class Drawn{
  
  void setb(){
    background(0);
      fill(250, 250, 250);
      noStroke();
      rect(0, Platform, width, 50, 7, 7, 0, 0);
      fill(250, 250, 250);
  }
  void drawTop() {
    int P1x = 0, P2x = 15, P3x = 30;
    for (int i = 0; i < 20; i++) {
      triangle(P1x, 0, P2x, 30, P3x, 0);
      P1x += 30;
      P2x += 30;
      P3x += 30;
    }
  }
  //draws circle background
  void drawCircle(int x, int radius, int level) {                    
    float tt = 126 * level/4;
    fill(tt, tt, tt);
    ellipse(x, height/2, radius*2, radius*2);      
    if (level > 1) {
      level -= 1;
      drawCircle(x - radius/2, radius/2, level);
      drawCircle(x + radius/2, radius/2, level);
    }
  }
  //draws ball
  void drawEgg() {
    /*fill(ballColor);
    stroke(0);
    strokeWeight(1);
    ellipse(currentX, currentY, ballWidth, ballHeight);*/
    if (currentY+30 >= platY && currentX >= platX1 && currentX <= platX1 + 100 && (currentY+30 <= platY+100)) {
      currentY -= 5;
      }
  }
  void drawGround(){
    fill(0);
    rect(0, height-45, width, 45);
  }
}
