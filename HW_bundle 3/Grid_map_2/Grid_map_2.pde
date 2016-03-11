
  Player p;
  Walker w;
  int maxW = 64;
  int maxH = 36;

boolean[][] theMap = new boolean[maxW][maxH];

  void setup() {
    size(640, 360);
    frameRate(40);
    w = new Walker();
    p = new Player( width / 2,height / 2,2,2);
    background(0);
    for (int i = 0; i < maxW; i++) {
      for (int j = 0; j < maxH; j++) {
        theMap [i][j] = true;
      }
    }
  }


  void draw() {
    w.step();
    theMap[w.x][w.y] = false;
    rect(w.x*10, w.y*10, 10, 10);
    w.display();
    p.form();
    p.input();
   
  }
  