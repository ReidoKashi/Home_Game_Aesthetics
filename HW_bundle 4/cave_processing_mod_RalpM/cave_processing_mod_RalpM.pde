
char[][] map;
int SIZE = 50;
int cellSize = 13;

int cLength = SIZE-2;     
int cRoughness = 90;  
int cWindyness = 60;  

int x, y;
int stepWidth;
int step;
int totalRuns;

void setup() {
  size(650, 640);
  noSmooth();
  textAlign(BOTTOM, LEFT);
  background(0);
  map = new char[SIZE][SIZE];//<-- array out of bounds error is caused
  //when the x corridinate dosent give enough memory to the program
  for (int i = 0; i < SIZE; i++) {
    for (int j = 0; j < SIZE; j++) {
      map[j][i] = 'p';
    }
  }

  x = 25; // when x is at 50 or above sketch is broken
  y = SIZE-1;
  map[x][y] = '_'; //this intially renders the field

 
}

void draw() {
  background(0);
  step();
  for (int i = 0; i < SIZE; i++) {
    for (int j = 0; j < SIZE; j++) {
      text(map[j][i], j*cellSize, i*cellSize); //engine for rendering sketch/partially
    }
  }
  if (step == cLength && totalRuns < 2) {
    totalRuns++;
    step = 0;
    x = SIZE/2;
    y = SIZE-2;
  }
}

void step() {
  if (step < cLength) {
    y--;
    if (random(100) <= cRoughness) {
      int r = 0;
      while (r == 0) {
        r = floor(random(-2, 3));
      }
      stepWidth += r;
      if (stepWidth < 3) {
        stepWidth = 3;
      } else if (stepWidth > SIZE) {
        stepWidth = SIZE;
      }
    }

    if (random(100) <= cWindyness) {
      int r = 0;
      while (r == 0) {
        r = floor(random(-2, 3));
      }
      x += r;
      if (x < 0) {
        x = 0;
      }
      if (x > SIZE-3) {
        x = SIZE-3;
      }
    }

    for (int i = -stepWidth/2; i < stepWidth/2; i++) {//basically this line is rendering each frame
      map[x+i][y] = '-';
    }
    step++;
  }
}



void reset() {
  for (int i = 0; i < SIZE; i++) {
    for (int j = 0; j < SIZE; j++) {
      map[j][i] = '#';//resets the rendered field
    }
  }

  x = SIZE/2 + floor(random(-5, 5));
  y = SIZE-1;
  
  map[x][y] = '.';
  totalRuns = 0;
  step = 0;
  
  stepWidth = floor(random(3,50));
  for (int i = -stepWidth/2; i < stepWidth/2; i++) {
    map[x+i][y] = '.';
  }
}

void keyReleased() {
  reset(); // button pressed resets the field +gridergo
}