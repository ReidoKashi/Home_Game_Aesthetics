//tackle this one if you're comfortable with the others.

//this is a modified code to bryan ma's examples 


// 2d array called colums and rows

final int COLS = 50;
final int ROWS = 50;

float cellSize; //basically this is an algorythm that produces a huge grid illustrates the zoomed in 
boolean[][] cellmap = new boolean[COLS][ROWS]; // hallow 2d boolean array 

void setup() {
  size(500, 500);
  noStroke();
  cellSize = width/COLS;// illustrates a 2d grid that zooms in and out of the illustration 
  //bigger the number the further out smaller zoomed in, dividing by the actual width of canvas to
  //keep "gridular" with illustration
  initializeRandWorld(); //++1 procedual engine that creates hallow data array
  cellmap = generateMap(); //~~~~~~~~2dA method initzializer part1 
}

void draw() {
  drawWorld(); //++1 render to world
}

boolean[][] generateMap() { //~~~~~~~~2dA method initzializer part2
  int numberOfSteps = 6; //looped# 
  for (int i = 0; i < numberOfSteps; i++) {
    cellmap = doSimulationStep(); //++1 ~~~~~~nested 2dA method  
  }
  return cellmap; //2dA return
}

boolean[][] doSimulationStep() { //++2  _2dAf basically th
  int deathLimit = 4;// basically these two numbers are a ratio, that create the hallow arrow to store
  int birthLimit = 4; // 
  boolean[][] newMap = new boolean[COLS][ROWS]; // ~~ nested 2 array
  for (int x = 0; x < cellmap.length; x++) {///
    for (int y = 0; y < cellmap[0].length; y++) {
      int nbs = countAliveNeighbors(cellmap, x, y); // _method returning int ______why retu
      //if a cell is alive but has too few neighbors, kill it
      if (cellmap[x][y]) { //if alive
        if (nbs < deathLimit) { //++1 ratio actualized by putting it into action
          newMap[x][y] = false;
        } else {
          newMap[x][y] = true;
        }
        //otherwise if cell is dead, check if it has the right number of neighbors to be born
      } else {
        if (nbs > birthLimit) {//++2 ratio actualized by putting it into action
          newMap[x][y] = true;
        } else {
          newMap[x][y] = false;
        }
      }
    }
  }
  return newMap;
}

int countAliveNeighbors(boolean[][] map, int x, int y) { // basically this conversation is given the number nbs
  int count = 0;
  for (int i = -1; i < 2; i++) {
    for (int j = -1; j < 2; j++) {
      int neighborX = x+i;
      int neighborY = y+j;
      if (!(i == 0 && j == 0)) {
        if (neighborX < 0 || neighborY < 0 || neighborX >= map.length || neighborY >= map[0].length) {
          count = count + 1;
        } else if (map[neighborX][neighborY]) {
          count = count + 1;
        }
      }
    }
  }
  return count;
}
//called at start
void initializeRandWorld() {
  float aliveChance = 0.45;
  for (int x = 0; x < COLS; x++) {
    for (int y = 0; y < ROWS; y++) {
      if (random(1) < aliveChance) { // **math algorythm**  that  chooses between precentage of numbers ranging from .45 -.99 
      //basically the procedual engine
        cellmap[x][y] = true; // marks 2d array all true
      }
    }
  }
}

void drawWorld() { //basically this method draws the illustration to the board every frame
  for (int x = 0; x < COLS; x++) {
    for (int y = 0; y < ROWS; y++) {
      if (cellmap[x][y] == true) {
        fill(67, 56, 45);
      } else {
        fill(51, 98, 175);
      }
      rect(x * cellSize, y * cellSize, (x * cellSize) + cellSize, (y * cellSize) + cellSize); //1d gridergo algorythm
    }
  }
}