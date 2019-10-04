class CBackground {

    int rows,rowSize,cols,colSize,size;
    Color defaultColor; // The inital color of the screen
    Rect[][] screen; // Screen consists of rectangles

    // Creates a new 'background' that is composed of a 2D array of rectangles
    CBackground(int rows, int cols, int size, Color defaultColor) {
        this.rows = rows; // Num of rows in screen
        this.cols = cols; // Num of cols in screen
        this.size = size; // Overall screen size
        this.rowSize = size/rows; // Width of the rectangle in screen
        this.colSize = size/cols; // Height of the rectangle in the screen
        this.defaultColor = defaultColor;

        screen = new Rect[rows][cols];
        // Init screen with rectangles
        for (int r = 0; r < rows; r++)
            for (int c = 0; c < cols; c++)
                screen[r][c] = new Rect(r*rowSize, c*colSize, rowSize, new Color(defaultColor.getR(), defaultColor.getG(), defaultColor.getB()));
    }

    // Will update each rectangle on the screen. All rectangles are redrawn and
    // and the rectangles that need to be changed will change
    void update(ArrayList<Ball> balls){
        // Redrawing the current state of the screen
        for (int r = 0; r < rows; r++)
            for (int c = 0; c < cols; c++)
                screen[r][c].setColor(screen[r][c].getColor());

        // Updaing all the rectangles on the screen that contain a ball. The rectangle
        // will be the average color of all balls that have been in the screen each tick
        Rect screenRect;
        for (Ball b : balls){
            screenRect = screen[b.getX()/rowSize][b.getY()/colSize];
            screenRect.setColor(screenRect.getColor().averageColor(b.getColor()));
        }
    }
}
