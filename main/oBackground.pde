class OBackground {
  
  int rows,cols,size;
  int rowSize,colSize;
  Color defaultColor;
  
  Rect[][] screen;
  
  OBackground(int rows, int cols, int size, Color defaultColor) {
    this.rows = rows;
    this.cols = cols;
    this.size = size;
    this.rowSize = size/rows;
    this.colSize = size/cols;
    this.defaultColor = defaultColor;
    
    screen = new Rect[rows][cols];
    
    for (int r = 0; r < rows; r++)
      for (int c = 0; c < cols; c++)
        screen[r][c] = new Rect(r*rowSize, c*colSize, size, new Color(random(255), random(255),random(255)));
  }
  
  void update(ArrayList<Ball> balls){
    for (int r = 0; r < rows; r++)
      for (int c = 0; c < cols; c++)
        screen[r][c].setColor(defaultColor);
        
    for (Ball b : balls){
      //Rect screenSquare = screen[(int)b.getX() / rowSize][(int)b.getY() / colSize];
      screen[(int)b.getX() / rowSize][(int)b.getY() / colSize].setColor(new Color(255,255,255));
      // screen[(int)b.getX() / size][(int)b.getY() / size].setColor(defaultColor.averageColor(screenSquare.getColor()));
      // screenSquare.getColor().clearAverage();
    }
  }
}
