class Ball {
  int RANGE = 10; // Constant value that does not change. You can change to increase the movement of the ball
  
  Color c; // The color of the ball
  float x,y; // The x,y location of the ball
  int radius; // The radius of the ball
  
  // Constructor for a Ball object.
  /*
  * Creates a new ball at the specified x,y location with a specified radius and color.
  */
  Ball(float x, float y, int radius, Color c) {
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.c = c;
    
    fill(c.getR(), c.getG(), c.getB());
    ellipse(x,y,radius,radius);
  }
  
  // Will randomly move the ball within a provided range.
  void rMove() {
    this.x = this.x + random(-RANGE, RANGE); // Updating the x position of the ball
    this.y = this.y + random(-RANGE, RANGE); // Updating the y position of the ball
    fill(c.getR(), c.getG(), c.getB());
    ellipse(this.x, this.y, radius,radius);
  }
  
  // Moves the ball to the specified x,y coordinate
  void moveTo(float x, float y) {
    this.x = x; // Updates the x location of the ball
    this.y = y; // Updates the y location of the ball
    fill(c.getR(), c.getG(), c.getB());
    ellipse(x,y,radius,radius);
  }
  
  // Returns the color of the ball
  Color getColor() {
    return this.c;
  }
  
  // Returns the radius of the ball
  int getRadius() {
    return this.radius;
  }
  
  // Returns the x position of the ball
  float getX() {
    return this.x;
  }
  
  // Returns the y position of the ball
  float getY() {
    return this.y;
  }
}
