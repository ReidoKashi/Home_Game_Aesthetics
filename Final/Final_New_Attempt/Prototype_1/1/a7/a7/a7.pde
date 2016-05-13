//__object classes
character c;
forest f;
collect cl;
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
  cl = new collect();
  c = new character(1, 1);
  f = new forest();
}


void draw()

{
  f.form();
  cl.form();
  c.input();
  c.form();
}