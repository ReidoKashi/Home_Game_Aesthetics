Player p;
Item i;



//intro scripts____
Intro _intro;
int numPic = 0;
PImage[] images = new PImage[6];
 boolean showImages = true;
  boolean imageReady = true;
//------

char [][] grid;



final int COLS = 50;
final int ROWS =50;
int[][] map = new int[COLS][ROWS];
boolean[][] collide = new boolean[COLS][ROWS];
int randNum = floor(random(100));
int chanceNum;
boolean step_1 = true;
boolean intro = true;
void setup()
{


 size(800,800); 
 background(3);
 noiseSeed(0);
 
 _intro = new Intro();
 p = new Player(50,50);
 i = new Item(height/2,width/2);

 noSmooth();
 textSize(25);
  // textAlign(LEFT,TOP);
 // background(114,114,114);
  for(int i = 0;i < COLS; i++)
  {
    for(int w = 0;w < ROWS; w++)
    {collide[i][w]= false;
    }
  }

  for(int i = 0;i < COLS; i++)
{for(int w = 0;w < ROWS; w++)
  {chanceNum = floor(random(100));
  noStroke();
    if(chanceNum <= 64)
    {map[i][w] =0;
    

    } else if(chanceNum >= 65 && chanceNum <= 89)
    {
      map[i][w] =1;
    }else if(chanceNum >= 90)
    {
      map[i][w] = 2;
    }
   
  }
}
  
  collide[25][25]=true;
}




void draw()
{

  if(intro)
  {
   _intro.keyPressed();
   _intro.keyReleased();
  _intro.loadUp();
  
  }
  else{
   // test();
 
 //drawMap();
 
  p.form();
    p.input();
  i.form();
  // noiseDetail(2,.2);

  }
 
  }



void test()
{
for(int i = 0;i < COLS; i++){
     for(int w = 0;w < ROWS; w++){
        if (collide[i][w] == false){
          fill(107,173,47);
          text(map[i][w],i*COLS,w*ROWS);
    } else if( collide[i][w] == true){
    
    fill(2,7,8);
    }
     rect(i*30, w*30,30,30);
  }
   }
}


void drawMap(){
   for(int i = 0;i < COLS; i++){
     for(int w = 0;w < ROWS; w++){
        if (map[i][w] == 0){
          fill(107,173,47);
          text(map[i][w],i*COLS,w*ROWS);
    } else if( map[i][w] == 1){
      fill(201,161,96);
      text(map[i][w],i*COLS,w*ROWS);
    }else if(map[i][w] == 2){
      fill(70,107,35);
      text(map[i][w],i*COLS,w*ROWS);
    }
    
     rect(i*30, w*30,30,30);
  }
   }
}