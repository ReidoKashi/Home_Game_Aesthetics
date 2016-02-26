
  Player p;
  Walker w;


  void setup() {
    size(640, 360);
    frameRate(9999);
    w = new Walker();
    p = new Player( width / 2,height / 2,2,2);
    background(0);
  }


  void draw() {
    w.step();
    w.display();
    p.form();
    p.input();
   
  }
  