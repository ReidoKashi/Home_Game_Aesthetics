final int mod = 40; // stands for modifier and will modify grid

int[][] forest = new int[][]
  {
  {1, 1, 2, 1, 2, 1, 2, 1, 1}, 
  {1, 1, 1, 1, 1, 3, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 2, 1, 1}, 
  {1, 3, 2, 1, 2, 3, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 2, 1, 1}, 
  {1, 1, 2, 1, 2, 1, 2, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 3, 2, 1, 2, 1, 2, 1, 1}, 
  {1, 1, 2, 1, 1, 1, 2, 1, 1}, 
  {1, 1, 2, 1, 2, 1, 1, 1, 1}}; 

int[][] col = new int[forest.length][forest[0].length];
void setup()
{
  size(400, 400);
  //________grid for forest
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
  //_____grid for forest


  //___grid for collectable___
  for (int o = 0; o<(forest.length); o++)
  {
    for (int n = 0; n<(forest[0].length); n++)

    {
      if(col[o][n] == 1)
      { fill(#F71B82);
       rect(((o+.45)*mod),((n+.45)*mod),(mod/4)/2,(mod/4)/2);
      }
    }
  }



//__end setup
}