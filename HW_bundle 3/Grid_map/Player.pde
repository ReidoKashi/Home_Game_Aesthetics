//player class
class Player {
  
  PVector pos;
  PVector siz;
  int x;
  int y;
   int wi = 2;
  int he = 2;
  
  Player(int x,int y, int wi,int he) {
 siz = new PVector(wi,he);
 pos = new PVector(x,y);
  }

  void form() {
    rect(pos.x,pos.y, 20, 20);
    fill(200,77,45,22);
  }
void input(){
 if (upPressed)
 {pos.y--;
 }
 if (downPressed)
 {pos.y++;
 }
 if (leftPressed)
 {pos.x--;
 }
 if (rightPressed)
 {pos.x++;
 }
  
  
  
}
  
}