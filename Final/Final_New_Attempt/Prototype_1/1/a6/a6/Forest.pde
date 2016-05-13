class forest
{
  forest()
  {
  }

  void form()
  {
    for (int f = 0; f<(forest.length); f++)
    {
      for (int j = 0; j<(forest[0].length); j++)

      {
        if (forest[f][j] == 1)
        {
          fill(#42FC82);
          noStroke();
          rect(f*mod, j*mod, mod, mod);
        }

        if (forest[f][j] == 2)
        {
          fill(#27934B);
          noStroke();
          rect(f*mod, j*mod, mod, mod);
        }

        if (forest[f][j] == 3)
        {
          fill(#13582A);
          noStroke();
          rect(f*mod, j*mod, mod, mod);
        }
        if (forest[f][j] == 3)
        { 
          col[f][j] = 1;
        }
      }
    }
  }
}