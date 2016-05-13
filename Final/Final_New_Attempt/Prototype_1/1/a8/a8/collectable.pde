class collect
{ 
  PVector position;
  boolean aquired;
  java.awt.Rectangle hit;
  Rectangle[] itemArray = new Rectangle[3];
  
  collect(int x, int y)
  {
    aquired = false;
    position = new PVector(x, y);
    hit = new java.awt.Rectangle();
    itemArray[0] = new Rectangle(100, 100, 5, 5);
    itemArray[1] = new Rectangle(300, 200, 5, 5);
    itemArray[2] = new Rectangle(400, 500, 5, 5);
  }


  void form()
  { 

    for (int o = 0; o<(forest.length); o++)
    {
      for (int n = 0; n<(forest[0].length); n++)

      {
        if (col[o][n] == 1)
        { 
          fill(#F71B82);
          rect(((o+.45)*mod), ((n+.45)*mod), (mod/4)/2, (mod/4)/2);
        }
      }
    }
  }

  void take()
  { 
    if (!aquired)
    {
      fill(#F76216);
      rect(position.x, position.y, 5, 5);
    }
  }

  
}