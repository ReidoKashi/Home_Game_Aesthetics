//__object classes
character c;
forest f;
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
  c = new character(1, 1);
  f = new forest();

  //________grid for forest
 
  
  //_____grid for forest


  //___grid for collectable___
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
  
  //character class start
  
  

  //__end setup
}


void draw()

{f.form();
  c.input();
  c.form();
  
  
}