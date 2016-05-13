//__object classes
import java.awt.Rectangle;
character c;
forest f;
collect[] cl = new collect[3];
collide COLL;
RO te;
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
  //COLL = new collide();
  cl[0] = new collect(370, 215);
  cl[1] = new collect(70, 100);
  cl[2] = new collect(20, 300);
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
}