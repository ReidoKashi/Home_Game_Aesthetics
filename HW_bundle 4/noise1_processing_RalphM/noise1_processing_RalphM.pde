//Notes in homework

int[][] grid;   //2D array of ints
int cellsize = 10;  //we're using cellsize to set how big our individual cells will be, and tell our grid how big to be

void setup() {
  size(640, 480);
  grid = new int[width/cellsize][height/cellsize];
  noiseSeed(0);
}

void draw() {
  background(0);
  noiseDetail(4, 0.7);  
  float increment = 0.08; 
  
 
  float xoff = 0.0;   //start counting in our "noise map" at x: 0
  for (int x = 0; x < width/cellsize; x++) {
    xoff += increment;
    float yoff = 0.0;   // For every xoff, start yoff at 0
    for (int y = 0; y < height/cellsize; y++) {
      yoff += increment;
      float brightness = noise(xoff, yoff) * 255;
      
      
      
      grid[x][y] = floor(brightness);
    }
  }
  
 
  int k = 33;
  int f = 10;
  for (int i = 0; i < height/cellsize; i++) {
    for (int j = 0; j < width/cellsize; j++) {
      fill(grid[j][k]); //added a new variable here so that it makes a 2 dimesional arrary within a 1 dimensional scope
      //gives it a gradial feel
      stroke(78); // intresting adding a stroke gives it a cool texture, especially between both rect and ellipse
      ellipse(j*cellsize, i*cellsize, cellsize, cellsize);
     // I checked the chars function and the noise texture didn't really do anything to it, will follow up
    }
  }
}