class character
{
  PVector p;
  int xpos;
  int ypos;
  int x;
  int y;
  character(int x, int y)
  {
    xpos = x;
    ypos = y;
  }

  void form()
  {
    fill(#E8F71B);
    rect((x+.45)*mod, (y+.45)*mod, mod/3, mod/3);
  }

  void input()
  { 
    if (upPressed)
    {
    } else if (downPressed)
    {
    } else if (rightPressed)
    {
    } else if (leftPressed)
    {
    }
  }
}