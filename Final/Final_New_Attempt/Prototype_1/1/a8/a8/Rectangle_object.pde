public class RO
{

  public java.awt.Rectangle idle;

  
  //importing java recangle object
 public RO(int x, int y, int w, int h)
  {
   
   idle = new java.awt.Rectangle(x, y, w, h);
 
  }
  void test()
  { 
    fill(#FA176E);
    rect(this.idle.x,this.idle.y,this.idle.width,this.idle.height);
    
    rect(this.idle.x,this.idle.y,this.idle.width,this.idle.height);
    
    
    
    fill(#491DCE);
    rect(width/2, height/2, 20, 20);
  }
}