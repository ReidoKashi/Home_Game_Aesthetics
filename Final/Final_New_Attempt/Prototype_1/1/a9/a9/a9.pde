//__object classes
import java.awt.Rectangle;
character c;
forest f;
collect[] cl = new collect[3];
collide COLL;
RO te;

final int mod = 43; // stands for modifier and will modify grid
public int powerVar;
int[][] forest = new int[][]
  {
  {4, 4, 4, 4, 4, 4, 4, 4, 4}, 
  {4, 1, 1, 1, 1, 3, 1, 1, 4}, 
  {4, 1, 1, 1, 1, 1, 2, 1, 4}, 
  {4, 3, 2, 1, 2, 3, 1, 1, 4}, 
  {4, 1, 1, 1, 1, 1, 2, 1, 4}, 
  {4, 1, 2, 1, 2, 1, 2, 1, 4}, 
  {4, 1, 1, 1, 1, 1, 1, 1, 4}, 
  {4, 3, 2, 1, 2, 1, 2, 1, 4}, 
  {4, 1, 2, 1, 1, 1, 2, 1, 4}, 
  {4, 4, 4, 4, 4, 4, 4, 4, 4}}; 

int[][] col = new int[forest.length][forest[0].length];
void setup()
{
  powerVar = 0;
  size(430, 386,P2D);
  //COLL = new collide();
  cl[0] = new collect(370, 215);
  cl[1] = new collect(70, 100);
  cl[2] = new collect(200, 310);
  c = new character(1, 1);
  f = new forest();
  //te = new RO(5, 5, 20, 20);
}


void draw()

{
  f.form();
  //COLL.render();
  for (int i = 0; i < cl.length; i++)
  {
    //cl[i].form();
    cl[i].take();
     
  }
 c.updateItem(cl);
  c.input();
  c.updateHitBox();
  c.rectHit();
  //te.test();
  c.form();
  switch(powerVar)
  {case 0:
  text("", 165,26);
  break;
  case 1:
  fill(255);
  text("POWER UP: Shrink", 165,26);
  break;
  case 2:
  fill(255);
  text("POWER UP: Speed Up", 165,26);
  break;
  case 3:
  fill(255);
  text("POWER UP: Mutate", 165,26);
  break;
  }
}