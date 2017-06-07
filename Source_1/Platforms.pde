class Platforms{
  
  float obj = 0;
  
  void createRect() {
    /*fill(ballColor);
    stroke(0);
    strokeWeight(1);
    rect(platX1, platY, 100, 5);*/
    if (platY <= 20) {  
      platY = Platform - 5;
      platX1 = random(65, width-165);
      obj = random(0, 3); 
    }
    switch(int(obj)){
          case 0:
            
            image(obj0, platX1, platY, 100, 50);
            break;
          case 1:
            
            image(obj1, platX1, platY, 120, 75);
            break;
          case 2:
            platX1 = width-165;
            image(obj2, platX1, platY, 120, 75);
            break;
          case 3:
            platX1 = width-635;
            image(obj3, platX1, platY, 120, 75);
            break;
        }
    
    
    platY -= rectSpeed;
    if(millis() >= time){
      time = millis() + 2500;
      rectSpeed += .5;
    }
    /*if (platY <= 20) {  
      platY = Platform - 5;
      platX1 = random(65, width-165);
      
      platY = Platform - 5;
      platX1 = random(65, width-165);
      platX2 = platX1 - 100;*/
    }
  }

