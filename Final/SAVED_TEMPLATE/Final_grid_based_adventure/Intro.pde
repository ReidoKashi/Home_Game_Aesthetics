class Intro
{
  public boolean imageControl = true;

  Intro()
  {
    images[0]=loadImage("1.png");
    images[1]=loadImage("2.png");
    images[2]=loadImage("3.png");
    images[3]=loadImage("4.png");
    images[4]=loadImage("5.png");
    images[5]=loadImage("6.png");
  }

  



  void loadUp()
  {
    image(images[numPic], 0, 0, 800, 800);
  }


}
// This code was a modification of Prof Bryan Mas Button Script