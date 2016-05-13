class character
{
  PVector p;
  float xpos;
  float ypos;
  int x;
  int y;
  character(int x, int y)
  {
    xpos = (x+.45)*mod;
    ypos = (y+.45)*mod;
  }

  void form()
  {
    fill(#E8F71B);
    rect(xpos, ypos, mod/3, mod/3);
  }

  void input()
  { 
    if (upPressed)
    {ypos--;
    print("pulse");
    } else if (downPressed)
    {ypos++;
    } else if (rightPressed)
    {xpos++;
    } else if (leftPressed)
    {xpos--;
    }
  }
}