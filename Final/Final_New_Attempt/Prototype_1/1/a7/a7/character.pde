class character
{
  PVector p;
  int xpos;
  int ypos;
  int psize = 40;
  int x;
  int y;
  character(int x, int y)
  {
    xpos = floor((x)*mod);
    ypos = floor((y)*mod);
  }

  void form()
  {
    fill(#E8F71B);
    rect(xpos, ypos, psize/3, psize/3);
  }

  void input()
  { 
    if (upPressed)
    {ypos-=3;
    } else if (downPressed)
    {ypos+=3;
    } else if (rightPressed)
    {xpos+=3;
    } else if (leftPressed)
    {xpos-=3;
    }
  }
}