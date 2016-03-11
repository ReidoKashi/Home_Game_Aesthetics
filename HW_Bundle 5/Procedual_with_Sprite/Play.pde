
class Play{
 //player class
 
 
 //creating position and image for character sprite
 PVector mov;
 PImage sprite;
 String fileName;
 int frmC;
 int y;
 int i;
 int j;

 Play(int x, int y, int frmC, String fileName){
  mov = new PVector(x,y);
  
  sprite = loadImage("s_b_l.png");
 
  
 
 }
  
  void spriteMov(){
   image(sprite,mov.x,mov.y); 
  
  }
  
  void input(){
    if(upPressed)
   { forAnim(); mov.y--; print(mov.x);
   } else if(downPressed)
   {mov.y++; 
   } else if(leftPressed)
   {mov.x--; 
   } else if(rightPressed)
   {mov.x++; 
   }
  }
  
  void forAnim(){
    
     imageMode(CORNERS);
  //sprite = loadImage("ss.png", i, j, k, l);
  }
  
  
  
}