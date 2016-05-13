class character
{
  PVector p;
  int xpos;
  int ypos;
  int psize = 40;
  int x;
  int y;
  int speed;
  boolean color_1;
  java.awt.Rectangle hitbox;
  RO _idle;
  character(int x, int y)
  {
    color_1 = false;
    p = new PVector(x, y);
    speed = 3;
    xpos = floor((x)*mod);
    ypos = floor((y)*mod);
    fill(#491DCE);
    _idle = new RO(5, 5, 20, 20);
    hitbox = new java.awt.Rectangle(xpos, ypos, psize+2, psize+2);
  }
  public void powerUp(int pass_i)
  {
    switch(pass_i)
    {
    case 0: 
      psize = 15;

      break;
    case 1:
      speed = 8;
      break;
    case 2: 
      color_1 = true;
      break;
    }
  }
  void updateHitBox()
  {
    stroke(#FA176E);
    this.hitbox.x = this.xpos;
    this.hitbox.y = this.ypos;
    //rect(this.hitbox.x,this.hitbox.y,(hitbox.width/2)-6,(hitbox.height/2)-7);
  }

  void rectHit()
  {
    //if (hitbox.intersects(_idle.idle))
    //{
    //  print("success");
    //}



    //for (int i = 0; i<cl.length; i++)
    //{
    //  if (hitbox.intersects(cl[i]))
    //  {
    //    print("success");
    //  }
    //}
  }

  public void updateItem(collect[] cl)
  {
    for (int i = 0; i<cl.length; i++)
    { 
      if (!cl[i].aquired)
      {

        if (dist(this.hitbox.x, this.hitbox.y, cl[i].position.x, cl[i].position.y)< 10)
        {
          cl[i].aquired = true;
          powerUp(i);
        }
      }
    }
  }

  void form()
  {
    if(!color_1)
    {
    fill(#E8F71B);
    } else 
    {fill(#49CE43);
    }
    rect(xpos, ypos, psize/3, psize/3);
  }

  void gridJump()

  {
    for (int g = 0; g<(forest.length); g++)
    {
      for (int p = 0; p<(forest[0].length); p++)

      {  
        stroke(#EFF563);

        //rect(g*mod, p*mod, mod, mod);
      }
    }
  }

  void input()
  { 
    if (upPressed)
    {
      ypos-=speed;
    } else if (downPressed)
    {
      ypos+=speed;
    } else if (rightPressed)
    {
      xpos+=speed;
    } else if (leftPressed)
    {
      xpos-=speed;
    }
  }
}
// some code was influnced from Prof Bryan Ma's DorkShop Excercise 