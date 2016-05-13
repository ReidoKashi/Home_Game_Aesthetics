boolean upPressed = false;
  boolean downPressed = false;
  boolean leftPressed = false;
  boolean rightPressed = false;

  
 
   
void keyReleased() 
{

  
    if (keyCode == UP)
  {
    if(upPressed)
    {upPressed = false;
     print("working");
    }
  }

  if (keyCode == DOWN)
  {
    if(downPressed)
    {downPressed = false;
    }
  }
  
  if (keyCode == LEFT)
  {
    if(leftPressed)
    {leftPressed = false;
    }
  }
  
  if (keyCode == RIGHT)
  {
    if(rightPressed)
    {rightPressed = false;
    }
  }
 
  
  //------------------

      
         
 
  
  
  
  //-----------------
  
  
  
  
  
  
} 

 
  
  
 void keyPressed()
 {
    //--------------
    
    if(keyCode == BACKSPACE)
    {
  
      if(numPic<(images.length - diff))
        {if(numPic == 5)
          {intro = false;
          print("pulse");
          }
        
          diff-=1;
          numPic+=1;
      
      }
      
    }
    
    
    
    //----------------
    
  
    if (keyCode == UP)
  {
    if(!upPressed)
    {upPressed = true;
     print("working");
    }
  }

  if (keyCode == DOWN)
  {
    if(!downPressed)
    {downPressed = true;
    }
  }
  
  if (keyCode == LEFT)
  {
    if(!leftPressed)
    {leftPressed = true;
    }
  }
  
  if (keyCode == RIGHT)
  {
    if(!rightPressed)
    {rightPressed = true;
    }
  }
 
 }
  

  