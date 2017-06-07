class State{
  
   void startUP() {
    currentX = width/2;
    currentY = Platform - 1 - ballHeight/2;
    gravity = GravChange;
    toss = -6;
    xChange = 0;
    yChange = 0;
    offset = millis()/1000;
    rectSpeed = 5;
    background(255);
    fill(255);
    stroke(0);
    rect(width /4-20, height/2*1.5-35, 100, 40, 7);
    textSize(40);
    fill(0);
    text("Runner Guy", width/4-35, height/2/2 );
    text("Start", width/4-15, height/2*1.5);
  } 
  
  void gameOver(){
  if (currentY-15 <= 30) {
      GAMESTATE++;
    }
  }
  
  void reset() {
      
      offset = millis()/1000;  
      
      if(a[0] > a[1]){
        a[1] = a[0];
      }
    
      fill(0, 0, 0, 150);
      stroke(0);
      rect(0, 0, width, height);
      
      fill(255, 255, 255);
      textSize(45);
      text("Score: ", width/4-35, height/2-40);
      text(a[0], width/2+35, height/2-40);
      text("Best: ", width/4-8, height/2+20);
      text(a[1], width/2+35, height/2+20);
      text("GAME OVER", width/4-35, height/4+20);
      
      fill(0);
      stroke(255);
      rect(width /4-20, height/2*1.5-35, 100, 40, 7);
      
      fill(255);
      textSize(27);
      text("Again?", width/4-15, height/2*1.5-5);
  }
}
