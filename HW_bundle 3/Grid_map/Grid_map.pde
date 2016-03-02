
  Player p;
  Walker w;

boolean[][] map = new boolean[width][height];
  void setup() {
    size(640, 360);
    frameRate(40);
    w = new Walker();
    p = new Player( width / 2,height / 2,2,2);
    background(255);
    map[width][height]
  }


  void draw() {
    
    w.step();
    w.display();
    p.form();
    p.input();
   
  }
  