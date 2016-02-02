int y = height;



void setup(){
  size(640,360);
  frameRate(90);
}
  
  
  void draw(){
    background(0); 
    stroke(255);
    y = y - 1; //decreasing y
    if (y < 0) { //set y to window height
       y = height;
  }
    line(0,y,width,y);
    
    }
    