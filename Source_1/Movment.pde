class Movement{
  
   void Pos(){
      if (currentX+15 >= width-65)
        currentX = width-80;
      else if (currentX-15 <= 65)
        currentX = 80;
    }
    
    void Move(){
       //left and right movement  
      switch(result) {
      case EAST:
        currentX += 4;
        break;
      case WEST:
        currentX -= 4;
        break;
      }
    }

}
