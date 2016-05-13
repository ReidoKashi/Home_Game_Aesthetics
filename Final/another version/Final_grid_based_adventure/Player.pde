
class Player {
PVector pos;
PVector siz;
int Px;
int Py;
int wi = 2;
int he = 2;
int size = 20;
Player (int x, int y) 
{

  pos = new PVector(x,y);


}

void form() 
 {fill(1);
   rect(pos.x,pos.y, 20, 20);
    
 }
 
 void input()
 {
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
  

  
  void spellBig(){
  size += 20; 
   size += 20; 
    
  }
  
  
  
  
  
}
 