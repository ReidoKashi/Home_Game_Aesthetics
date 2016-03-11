// This is the walker class
class Walker {
  //psuedo code for walls - 
  //Create Hitbox for Player that mirrors size of player
  //Then withinthe path that the walker creates, set
  //a boolean array that makes the whole canvas impossible to walk
  // then with the walker where ever the 'point' hits, set that to "true"
  // then have that role be the guiding princple for the player to walk in
  int x;
  int y;
  boolean canWalk = false;
  int maxTurns = 200;
  int steps;

  Walker()
  {
    x = maxW / 2;
    y = maxH / 2;
  }


  void display() {
    stroke(0);
    fill(0);
    
    //point(x,y);
  } 


  void step() {
    if (steps <= maxTurns)
    {
        steps++;
      int choice = floor(random(4)); 
      if (choice == 0) {
        
        if ( x+1 < maxW-1) {
          //print("up");
          x+=1;
        }
      } else if (choice == 1) {
        if ( x-1 > 0) {
          //print("down");
          x-=1;
        }
      } else if (choice == 2) {  
        if ( y+1 < maxH-1) {
          //print("right");
          y+=1;
        }
      } else {
        if ( y-1 > 0) {
          //print("left");
          y-=1;
        }
      }
    }
  }
}