Item i;
Noise n;


//intro scripts____
Intro _intro;
int numPic = 0;
int diff; 
PImage[] images = new PImage[7];
boolean showImages = true;
boolean imageReady = true;
//------
final int COLS = 10;
final int ROWS =10;
int[][] grid = 
{
{1, 1, 1, 1, 1, 1, 1}, 
{1, 0, 0, 0, 0, 0, 1}, 
{1, 0, 0, 0, 0, 0, 1}, 
{1, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 1},
{1, 1, 1, 1, 1, 1, 1}
};
void setup()
{

diff = 5;
  size(800, 800); 
  background(3);
  noiseSeed(0);

  _intro = new Intro();
    i = new Item(height/2, width/2);
  n = new Noise();
  noSmooth();
  textSize(25);
  // textAlign(LEFT,TOP);
  // background(114,114,114);
  for (int i = 0; i < COLS; i++)
  {
    for (int w = 0; w < ROWS; w++)
    {
      collide[i][w]= false;
    }
  }

  for (int i = 0; i < COLS; i++)
  {
    for (int w = 0; w < ROWS; w++)
    {
      chanceNum = floor(random(100));
      noStroke();
      if (chanceNum <= 64)
      {
        map[i][w] =0;
      } else if (chanceNum >= 65 && chanceNum <= 89)
      {
        map[i][w] =1;
      } else if (chanceNum >= 90)
      {
        map[i][w] = 2;
      }
    }
  }

  collide[13][13]=true;
}




void draw()
{

  if (intro)
  {
    
  
    _intro.loadUp();
    imageReady = true;
    _intro.imageControl =true;
    
  } else {
    test();
    //noiseDetail(2, .2);
    //n.addNoise(.08);
    //drawMap();

    i.form();
    
   
  }
}



void test()
{
  for (int i = 0; i < COLS; i++) {
    for (int w = 0; w < ROWS; w++) {
      if (grid[i][w] == 1) {
        fill(107, 173, 47);
        text(grid[i][w], i*COLS, w*ROWS);
      } else if ( grid[i][w] == 0) {

        fill(2, 7, 8);
      }
      rect(i*30, w*30, 30, 30);
    }
  }
}