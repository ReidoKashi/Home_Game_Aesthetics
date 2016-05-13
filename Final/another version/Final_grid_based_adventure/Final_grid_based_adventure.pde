Player p;
Item i;
Intro _intro;

char [][] grid;



final int COLS = 50;
final int ROWS =50;
int[][] map = new int[COLS][ROWS];
int randNum = floor(random(100));
int chanceNum;
boolean step_1 = true;

void setup()
{

 // _intro = new Intro();
 size(800,800); 
 background(3);
 _intro = new
 p = new Player(50,50);
 i = new Item(height/2,width/2);
 noSmooth();
 textSize(25);
  // textAlign(LEFT,TOP);
 // background(114,114,114);
  

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
  
}




void draw()
{

  
   _intro.keyPressed();
  
  drawMap();
 // fill(255);
  p.form();
    p.input();
  i.form();
 
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