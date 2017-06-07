class Collision{
   
  void ballCollide() {
    if (currentY >= platY && currentX >= platX1 && currentX <= platX1 + 100 && currentY <= platY+100) {
      currentY = platY-15;
      yChange += gravity;
    }
  }
  
  //creates timer
  void timer() {
    int time1= millis()/1000 - offset;
    a[0] = time1;
    textSize(28);
    fill(255, 0, 0);
    text("Score: ", 15, height - 15);
    if(GAMESTATE == 1)
      text(time1, 100, height - 15);
  }
  
  void Fall() {
      if (currentY+30 <= Platform+14) {
        if (currentY+30 >= platY && currentX >= platX1 && currentX <= platX1 + 100 && currentY+30 <= platY+100) {
          currentY = platY-15;
          yChange += gravity;
        }else{
          currentY += yChange;
          yChange += gravity;
        }
      }else {
        currentY = Platform - 1 - ballHeight/2;
        yChange = 0;
      }
  }
  void noFall() {
      if (currentY+30 <= Platform+14) {
        if (currentY+30 >= platY && currentX >= platX1 && currentX <= platX1 + 100 && currentY+30 <= platY+100) {
          currentY = platY-15;
          yChange += gravity;
        }
      }else {
        currentY = Platform - 1 - ballHeight/2;
        yChange = 0;
      }
  }
    
}
