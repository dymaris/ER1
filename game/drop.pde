class Drop{
  float x,y;
  float speed;
  color c;
  float r;
  //keep track of wether drop is
  boolean finished = false;
  
  Drop(){
    r = 8;
    y = -r*4;
    x = random(width);
    speed = random(1,5);
    c = color(0,255,255);
  }
  void move(){
    y += speed;
  }
  
  void display(){
    fill(c);
    noStroke();
    for(int i = 2; i < r; i++){
      ellipse(x,y + i*4, i*2, i*2);
    }
  }
  
  boolean reachedBottom(){
    if(y > height + r*4){
      return true;
    } else {
      return false;
    
    }
  }
//function for when drop is caught
//void caught(){
//  //drop stop or stop drop 
//  speed = 0;
//  y = -1000; 
//}
  
//  // move drop
//}
void finished(){
  finished = true;
}
}