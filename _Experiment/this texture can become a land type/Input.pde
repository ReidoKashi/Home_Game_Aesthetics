//all push commands

// this button functionality works off of native methods keyReleased, and keyPressed
// it's a simple method of just switching the methods like an off on switch with the binary

void keyPressed(){
  if(keyCode == UP)
  {if(!upPressed)
  {upPressed = true; print("pressed");}
  }
  if(keyCode == DOWN)
  {if(!downPressed)
  {downPressed = true; print("pressed");}
  }
  if(keyCode == LEFT)
  {if(!leftPressed)
  {leftPressed = true; print("pressed");}
  }
  if(keyCode == RIGHT)
  {if(!rightPressed)
  {rightPressed = true; print("pressed");}
  }
  
}
  
  void keyReleased(){
  if(keyCode == UP)
  {if(upPressed = true)
  {upPressed = false; print("released");}
  }
  if(keyCode == DOWN)
  {if(downPressed = true)
  {downPressed = false; print("released");}
  }
  if(keyCode == LEFT)
  {if(leftPressed = true)
  {leftPressed = false; print("released");}
  }
  if(keyCode == RIGHT)
  {if(rightPressed = true)
  {rightPressed = false; print("released");}
  }

  
  
  
  
} 