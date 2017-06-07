Platforms _platform = new Platforms();
Movement _movement = new Movement();
Drawn _drawn = new Drawn();
Collision _collision = new Collision();
State _state = new State();


int numFrames = 6;
int frame = 0;
PImage[] image = new PImage[numFrames];
PImage bg;
PImage pbg;

PImage obj0;
PImage obj1;
PImage obj2;
PImage obj3;

final static int EAST = 2, WEST = 8;
color ballColor = color(250, 0, 0);
float Platform, TPos = 40, rectSpeed;
float ballWidth = 30, ballHeight = 30;
float currentX, currentY;
float xChange, yChange;
float gravity, toss, GravChange = .15, time, i = 0, imtime = 0;
float platX1, platX2, platY = Platform;
int offset = 0, runSpeed = 75;
int result = 0;
int GAMESTATE = 0;
int[] a = {0,0};
boolean Touch;

void setup() {
  size(400, 700);
  //frameRate(30);
  obj0 = loadImage("Monitor.png");
  obj1 = loadImage("Computer.png");
  obj2 = loadImage("Generator.png");
  obj3 = loadImage("Generator-Reverse.png");
  image[0] = loadImage("Second-Frame-Coloured.png");
  image[1] = loadImage("Third-Frame-Coloured.png");
  image[2] = loadImage("Fourth-Frame-Coloured.png");
  image[3] = loadImage("Third-Frame-Coloured.png");
  image[4] = loadImage("Second-Frame-Coloured.png");
  image[5] = loadImage("First-Frame-Coloured.png");
  bg = loadImage("BG12.png");
  pbg = loadImage("EBG.png");
  Platform = height-50;
  currentX = width/2;
  currentY = Platform - 1 - ballHeight/2;
  gravity = GravChange;
  toss = -6;
  xChange = 0;
  yChange = 0;
}

void draw() {
  switch(GAMESTATE){
    case 0:
        _state.startUP();
        mousePressed();
          break;
    case 1:
        //background(bg);
        //_drawn.setb();
        //_drawn.drawCircle(width/2, 200, 8);
        image(pbg, 0, 0, width, height);  
        
        if(i < -700)
          i = 0;
        
        if((millis()*1000)%2 == 0)
          i-=rectSpeed;
        
        image(bg, 0, i, width, height*2);
         
        
        _drawn.drawTop();
         
          for(int i = 0; i <= 5; i++){
            if(millis() >= imtime){
              imtime = millis() + runSpeed;
              frame = (frame+1) % numFrames; 
            }
            //runSpeed -= .5;
            image(image[frame], currentX-50, currentY-80, 100, 100);
          }
          
          
            
        _drawn.drawGround();    
        _drawn.drawEgg();
        _movement.Move();
        _movement.Pos();
        _platform.createRect();
        _collision.timer();
        _collision.ballCollide();
        //_collision.Fall();
        _collision.noFall();
        _state.gameOver();
          break;
    case 2:
        _state.reset();
  }
}

void mouseReleased(){
  if(mouseX > width/4-10 && mouseX < width/4+100 && mouseY < height/2*1.5 && mouseY > height/2*1.5 - 50 && GAMESTATE != 1 && GAMESTATE != 2){
    GAMESTATE++;
  }
   if(mouseX > width/4-10 && mouseX < width/4+100 && mouseY < height/2*1.5 && mouseY > height/2*1.5 - 50 && GAMESTATE != 1 && GAMESTATE != 0){
    GAMESTATE = 0;
  }
}

void keyPressed() {
  if (key == ' ') {
    yChange = toss;
  }
  switch(keyCode) {
    case(RIGHT):
      result |= EAST;
      break;
    case(LEFT):
      result |= WEST;
      break;
  }
}

void keyReleased() {  
  switch(keyCode) {
    case(RIGHT):
      result ^= EAST;
      break;
    case(LEFT):
      result ^= WEST;
      break;
  }
}

