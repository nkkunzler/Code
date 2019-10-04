class Color {
  float r,g,b; // Sets the red, green, and blue values of the ball
  
  ArrayList<Color> previousColors = new ArrayList<Color>();
  
  /*
  * Used to represent a color. A color is a red, green, blue.
  */
   Color(float r, float g, float b) {
     this.r = r;
     this.g = g;
     this.b = b;
   }
   
   /*
   * Changes the color to a new red, green, blue value.
   */
   void setColor(float r, float g, float b) {
     this.r = r;
     this.g = g;
     this.b = b;
   }
   
   // Returns the red value of the color
   int getR(){
     return (int) this.r;
   }
   
   // Returns the green value of the color
   int getG(){
     return (int) this.g;
   }
   
   // Returns the blue value of the color
   int getB() {
     return (int) this.b;
   }
   
   // Averages this color plus another color together
   Color averageColor(Color colorToAverage) {
     previousColors.add(colorToAverage);
     for (int i = 0; i < previousColors.size(); i++){
       this.addColors(previousColors.get(i));
     }
     this.r /= previousColors.size();
     this.g /= previousColors.size();
     this.b /= previousColors.size();
     return this;
   }
   
   void addColors(Color colorToAdd) {
     this.r += colorToAdd.getR();
     this.g += colorToAdd.getG();
     this.b += colorToAdd.getB();
   }
   
   void clearAverage(){
     previousColors = new ArrayList<Color>();
   }
   
   
}
