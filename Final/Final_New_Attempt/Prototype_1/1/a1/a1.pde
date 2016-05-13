final int mod = 40; // stands for modifier and will modify grid

int[][] forrest = new int[][]
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
int col[forrest.length][forrest[0].length];
void setup()
{
  size(400,400);
  for (int f = 0; f<(forrest.length); f++)
  {
    for (int j = 0; j<(forrest[0].length); j++)

    {
      if (forrest[f][j] == 1)
      {fill(#42FC82);
      noStroke();
        rect(f*mod,j*mod,mod,mod);
      }
      
      if (forrest[f][j] == 2)
      {fill(#27934B);
      noStroke();
        rect(f*mod,j*mod,mod,mod);
      }
      
        if (forrest[f][j] == 3)
      {fill(#13582A);
      noStroke();
        rect(f*mod,j*mod,mod,mod);
      }
    }
  }
}