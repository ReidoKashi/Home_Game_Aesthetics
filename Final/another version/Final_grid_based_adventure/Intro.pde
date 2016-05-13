class Intro
{
int numPic = 0;
  PImage[] images = new PImage[6];
 boolean showImages = true;
  boolean imageReady = false;
  
  Intro()
  {

    
  }
  void keyPressed()
  
 {
   if(keyCode == BACKSPACE)
     { print(numPic);
       if(imageReady)
         {
         numPic+=1;
         imageReady = false;
         }
      } 
   
 }
 
 
 void keyReleased()
 {
  if(keyCode == BACKSPACE)
      { 
      imageReady = true;
       }
     
   
   
 }
  
  
}