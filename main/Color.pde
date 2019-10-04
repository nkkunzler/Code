class Color {

    int r, g, b, numAvgColors; // Sets the red, green, and blue values of the ball
    int prevRAvg, prevGAvg, prevBAvg;

    // Used to represent a color. A color is a red, green, blue.
    Color(float r, float g, float b) {
        this.r = (int) r;
        this.g = (int) g;
        this.b = (int) b;
        this.prevRAvg = this.r;
        this.prevGAvg = this.g;
        this.prevBAvg = this.b;
        numAvgColors = 0;
    }

    // Changes the color to a new red, green, blue value.
    void setColor(float r, float g, float b) {
        this.r = (int) r;
        this.g = (int) g;
        this.b = (int) b;
    }

    // Averages this color plus another color together
    Color averageColor(Color colorToAverage) {
        prevRAvg += colorToAverage.r;
        prevGAvg += colorToAverage.g;
        prevBAvg += colorToAverage.b;
        numAvgColors++;
        this.r = prevRAvg / numAvgColors;
        this.g = prevGAvg / numAvgColors;
        this.b = prevBAvg / numAvgColors;
        return this;
    }

    // Resets the number of colors seen when averaging
    void resetAverage(){
        numAvgColors = 0;
    }

    // Returns the red value of the color
    int getR(){
        return this.r;
    }

    // Returns the green value of the color
    int getG(){
        return this.g;
    }

    // Returns the blue value of the color
    int getB() {
        return this.b;
    }

    // String representation of a Color
    // Will be called when doing println(Color ob)
    String toString() {
        return "rgb(" + r + ", " + g + ", " + b + ")";
    }

}
