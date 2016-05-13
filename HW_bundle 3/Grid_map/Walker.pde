// This is the walker class

class Walker 
{
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

Walker()
  {
  x = width / 2;
  y = height / 2;
  }


  void display() 
   {
    stroke(0);
    fill(0);
    rect(x,y,10,10);
    //point(x,y);
    
   } 


  void step() 
  {
    if(int i = 0,i > maxTurns,i++)
     {
    int choice = int(random(4)); 
    if (choice == 0) 
      {
      x+=2;
      } else if (choice == 1)
      {
      x-=2;
      } else if (choice == 2)
      {
      y+=2;
      } else 
      {
      y-=2;
      }
    }
  }
}