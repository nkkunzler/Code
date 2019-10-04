class Rect {

    int x,y,size;   // location and size info
    Color c;        // Color of the rectangle

    // Creates a rectangle at x,y with height/width of size and color c.
    Rect(int x, int y, int size, Color c) {
        this.x = x;
        this.y = y;
        this.size = size;
        this.c = c;

        fill(c.getR(), c.getG(), c.getB());
        noStroke(); // Want no borders on the squares
        rect(x,y,size,size);
    }

    // Sets the color of the rectangle to the provided color
    void setColor(Color c) {
        this.c = c;
        fill(c.getR(), c.getG(), c.getB());
        rect(x,y,size,size);
    }

    // Returns the color of the rectangle
    Color getColor() {
        return this.c;
    }

}
