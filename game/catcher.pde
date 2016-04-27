class Catcher {
  float r; //radius
  float x, y; //second line loction
  float col;
  Catcher (float tempR) {
    r = tempR;
    col = color (255, 255, 255);
    x= 0;
    y = 0;
  }
  void setLocation(float tempX, float tempY) {
    x = tempX;
    y = tempY;
  }


  void display() {
    stroke(255,255,255);
    fill(255,255,255);
    ellipse(x, y, r*2, r*2);
  }
  // function for drop/catcher intersection
  // TRUE OR FALSE is it intersecting 
  boolean intersect(Drop d) {
    //calcuate distance 
    float distance = dist(x, y, d.x, d.y);
    //compare distance 
    if (distance < r + d.r) {
      return true;
    } else { 
      return false;
    }
  }
}