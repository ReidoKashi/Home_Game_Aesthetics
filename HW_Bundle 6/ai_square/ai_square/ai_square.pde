int[][] test = {
{1,1,1,1,1,1,1,1,1,1},
{1,3,2,2,2,2,2,2,3,1},
{1,2,1,1,1,1,1,1,2,1},
{1,2,1,1,1,1,1,1,2,1},
{1,2,1,1,1,1,1,1,2,1},
{1,2,1,1,1,1,1,1,2,1},
{1,2,1,1,1,1,1,1,2,1},
{1,2,1,1,1,1,1,1,2,1},
{1,3,2,2,2,2,2,2,3,1},
{1,1,1,1,1,1,1,1,1,1}
};


// form
final int ratioM = 80;

// artifacts
final int DC = 3; // decision cell
final int WC = 1; // wall cell
final int EC = 2; // empty cell

// ai

int aiX = 1;
int aiY = 3;



// player

int plX = 3;
int plY = 8;

void setup()
{
  size(800,800);
  
}


void draw()
{
  rendertest();
  aiRender();
  plRender();
}

void rendertest()
{
  // ratio test
  for (int r = 0; r < test[0].length;r++)
  {    for (int g = 0; g < test.length;g++)
      {
      
      // test render cells 1  as black
      if(test[g][r] == 1)
      {
        fill(1);
        
      } else 
      // test render cells 2  as white
      if(test[g][r] == 2)
      {
        fill(233);
      } else
      // test render cells 3  as gree
       {
        fill(233,233,4);
      }
      stroke(233);
      strokeWeight(.5);
      rect(r*ratioM  ,g*ratioM ,ratioM,ratioM);
      
       // test render cells 2  as white
    
      
      
      }
  }
  
 
  
}

// start ai logic
 void aiRender()
  {fill(233,8,22);
   rect(aiX*ratioM,aiY*ratioM,ratioM,ratioM); 
  }
  
  
  // start player logic
  void plRender()
  {fill(88,56,67);
   rect(plX*ratioM,plY*ratioM,ratioM,ratioM); 
  }
  
  
void keyPressed(){  
  //controls taken from pacman_01 sketch
    boolean moved = false;
  
  if (keyCode == UP) {
    if (test[plY-1][plX] != WC) {
      //if there's space above, move up
      plY--;
      moved = true;
    }
  } 
  if (keyCode == DOWN) {
    if (test[plY+1][plX] != WC) {
      //if there's space below, move down
      plY++;
      moved = true;
    }
  }
  if (keyCode == LEFT) {
    if (plX == 0 && plY == 14) {
      //if the player is in the left portal, warp
      plX = 27;
      moved = true;
    } else {
      if (test[plY][plX-1] != WC) {
        //if there's space to the left, move left
        plX--;
        moved = true;
      }
    }
  }
  if (keyCode == RIGHT) {
    if (plX == 27 && plY == 14) {
      //if the player is in the right portal, warp
      plX = 0;
      moved = true;
    } else {
      if (test[plY][plX+1] != WC) {
        //if there's space to the right, move right
        plX++;
        moved = true;
      }
    }
  }
  
  /////// enemy ai 
  //taken from pacman sketch
  
  if (moved == true)
  {
    if (test[aiY][aiX] != DECISIONCELL && aiX != 0 && aiX != 27) {
    //----------------------------------------------------------------
    // if the ghost isn't at the "portal" on the left and right, and is not at a decision node
    //----------------------------------------------------------------
      if (test[aiY+ghostDirY][aiX+ghostDirX] == 1) {
      //if there is a wall in front at the current direction
        
        if (ghostDirX != 0) {
        //if the ghost is moving horizontally  
          if (test[aiY+1][aiX] != WALLCELL) {
            //if there is an empty space below the ghost, change direction to DOWN
            ghostDirY = 1;
            ghostDirX = 0;
          } else if (test[aiY-1][aiX] != WALLCELL) {  
            //if there is an empty space above the ghost, change direction to UP
            ghostDirY = -1;
            ghostDirX = 0;
          }
        } else if (ghostDirY != 0) {  
        //if the ghost is moving vertically
          if (test[aiY][aiX+1] != WALLCELL) {  
            //if there is an empty space to the right of the ghost, change direction to RIGHT
            ghostDirY = 0;
            ghostDirX = 1;
          } else if (test[aiY][aiX-1] != WALLCELL) {  
            //if there is an empty space to the left of the ghost, change direction to LEFT
            ghostDirY = 0;  //stop moving vertically
            ghostDirX = -1;  //move towards the left
          }
        }
      }
    } else {  
    //----------------------------------------------------------------
    //ghost is in a decision node: re-assess direction based on target
    //----------------------------------------------------------------
      if (aiX != 0 && aiX != 27) {
      //if ghost is not in "portal" locations
      
        if (ghostDirX != 0) { 
        //if the ghost is moving horizontally  
        
          boolean upFree = false;
          boolean downFree = false;
          boolean continueFree = false;
          float distDown = 0;
          float distUp = 0;
          float distCont = 0;

          // if space below ghost is free
          if (test[aiY+1][aiX] != WALLCELL) {
            downFree = true;
            distDown = dist(aiX, aiY+1, playerX, playerY);
          }
          // if space above ghost is free
          if (test[aiY-1][aiX] != WALLCELL) {
            upFree = true;
            distUp = dist(aiX, aiY-1, playerX, playerY);
          }
          // if continue direction space is free
          if (test[aiY][aiX+ghostDirX] != WALLCELL) {
            continueFree = true;
            distCont = dist(aiX+ghostDirX, aiY, playerX, playerY);
          }

          if (downFree && upFree && continueFree) {
            if (distDown < distUp && distDown < distCont) {
              //change direction to DOWN
              ghostDirX = 0; 
              ghostDirY = 1;
            } else if (distUp < distDown && distUp < distCont) {
              //change direction to UP
              ghostDirX = 0; 
              ghostDirY = -1;
            } else if (distCont < distUp && distCont < distDown) { 
              //keep going in current direction
            }
          } else if (downFree && upFree) {
            if (distDown < distUp) {
              // change direction to DOWN
              ghostDirX = 0; 
              ghostDirY = 1;
            } else {
              // change direction to UP
              ghostDirX = 0; 
              ghostDirY = -1;
            }
          } else if (downFree && continueFree) {
            if (distDown < distCont) {
              // change direction to DOWN
              ghostDirX = 0; 
              ghostDirY = 1;
            } else {
              // continue in same direction
            }
          } else if (upFree && continueFree) {
            if (distUp < distCont) {
              // change direction to UP
              ghostDirX = 0; 
              ghostDirY = -1;
            } else {
              // continue in same direction
            }
          }
        } else if (ghostDirY != 0) { 
        //ghost is moving in y direction
          boolean leftFree = false;
          boolean rightFree = false;
          boolean continueFree = false;
          float distLeft = 0;
          float distRight = 0;
          float distCont = 0;

          // if space to the right of ghost is free
          if (test[aiY][aiX+1] != WALLCELL) {
            rightFree = true;
            distRight = dist(aiX+1, aiY, playerX, playerY);
          }
          
          // if space to the left of ghost is free
          if (test[aiY][aiX-1] != WALLCELL) {
            leftFree = true;
            distLeft = dist(aiX-1, aiY, playerX, playerY);
          }
          
          // if space in current direction is free
          if (test[aiY+ghostDirY][aiX] != WALLCELL) {
            continueFree = true;
            distCont = dist(aiX, aiY+ghostDirY, playerX, playerY);
          }

          if (leftFree && rightFree && continueFree) {
            if (distLeft < distRight && distLeft < distCont) {
              //change direction to LEFT
              ghostDirX = -1; 
              ghostDirY = 0;
            } else if (distRight < distLeft && distRight < distCont) {
              //change direction to RIGHT
              ghostDirX = 1; 
              ghostDirY = 0;
            } else if (distCont < distLeft && distCont < distRight) { 
              //keep going in current direction
            }
          } else if (leftFree && rightFree) {
            if (distLeft < distRight) {
              // change direction to LEFT
              ghostDirX = -1; 
              ghostDirY = 0;
            } else {
              // change direction to RIGHT
              ghostDirX = 1; 
              ghostDirY = 0;
            }
          } else if (leftFree && continueFree) {
            if (distLeft < distCont) {
              // change direction to LEFT
              ghostDirX = -1; 
              ghostDirY = 0;
            } else {
              // continue in same direction
            }
          } else if (rightFree && continueFree) {
            if (distRight < distCont) {
              // change direction to RIGHT
              ghostDirX = 1; 
              ghostDirY = 0;
            } else {
              // continue in same direction
            }
          }
        }
      }
    }
    
    //----------------------------------------------------------------
    // direction has been decided, move ghost
    //----------------------------------------------------------------
    if (aiX == 0 && aiY == 14 && ghostDirX == -1) {
      // if ghost is in left portal, going left, warp to right side of the screen
      aiX = 27;
    } else if (aiX == 27 && aiY == 14 && ghostDirX == 1) {
      // if ghost is in right portal, going right, warp to left side of screen
      aiX = 0;
    } else {
      // add movement to ghost position
      aiX += ghostDirX;
      aiY += ghostDirY;
    }
  }

    
    
  }
  
  
  
  
  rendertest();
}