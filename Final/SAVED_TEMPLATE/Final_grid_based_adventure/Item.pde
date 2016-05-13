class Item {
  PImage pic;
 PVector pos; 
  
  Item(int x, int y)
  {
    pos = new PVector(x,y);
  }
  
  void form()
  {
   fill(#C32CE5);
   rect(pos.x,pos.y,5,5);
    
  }
  
  
}