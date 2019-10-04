class Rect {
  
  int x,y,size;
  Color c;
  
  Rect(int x, int y, int size, Color c) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.c = c;
    
    fill(c.getR(), c.getG(), c.getB());
    rect(x,y,size,size);
  }
   
   void setColor(Color c) {
     this.c = c;
     fill(c.getR(), c.getG(), c.getB());
     rect(x,y,size,size);
   }
   
   Color getColor() {
     return this.c;
   }
  
}
