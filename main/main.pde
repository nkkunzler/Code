int SCREEN_SIZE = 800; // The screen size
int BG_ROWS = 20; // Number of rows and columsn in background
int MIN_RADIUS = 45; // The minimum size of the Ball
int MAX_RADIUS = 50; // The maximum size of the Ball

ArrayList<Ball> balls = new ArrayList<Ball>(); // Stores all the new balls created

CBackground bg;

void setup(){
    bg = new CBackground(BG_ROWS,BG_ROWS,SCREEN_SIZE,new Color(0,0,0));
    size(800, 800);
}


/*
* TODO: Sometimes there is an IndexOutOfBounds Exception caused.
*       Predicated Source: When a balls center is perfectly on
*                         either extreme of the board
*/
void draw() { 
  bg.update(balls); // Will redraw the background

  /*
  * Loops through all the balls created when clicking and moves them randomly.
  * If the balls move off the screen they will loop to the other side of the screen
  */
  for (int i = 0; i < balls.size(); i++) {
        balls.get(i).rMove();                                                               // Moves the ball to a new random x and y position. See Ball class for more info
        if (balls.get(i).getX() <= 0)                                                        // Checking if the ball x coordinate is off the screen to left
          balls.get(i).moveTo(SCREEN_SIZE - balls.get(i).getRadius(), balls.get(i).getY()); // Move the ball to the right of the screen
        else if (balls.get(i).getX() >= SCREEN_SIZE)                                         // Checking if the ball x coordinate is off screen to right
          balls.get(i).moveTo(balls.get(i).getRadius(), balls.get(i).getY());               // Move the ball to the left of the screen
        if (balls.get(i).getY() <= 0)                                                        // Checking if the ball y coordinate is off screen top
          balls.get(i).moveTo(balls.get(i).getX(), SCREEN_SIZE - balls.get(i).getRadius()); // Wraps ball to the bottom side of the screen
        else if (balls.get(i).getY() >= SCREEN_SIZE)                                         // Checking if ball y coordinate is off screen bottom
          balls.get(i).moveTo(balls.get(i).getX(), balls.get(i).getRadius());               // Move the ball to the top of the screen
  }

}

/*
* If the mouse is pressed a new ball with a random size and color will be added to the screen.
*/
void mousePressed() {
  Color ballColor = new Color(random(255), random(255), random(255)); // Creates a new random color
  Ball ball = new Ball(mouseX, mouseY, (int) random(MIN_RADIUS, MAX_RADIUS), ballColor); // Creates a ball with a random size and color, line above, at the mouse click location
  balls.add(ball); // Adding the ball to the list of already existing balls
}
