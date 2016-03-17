int num = 50;
int[] x = new int[50];
int[]y = new int [50];

void setup(){
  size(300,300);
  noStroke();
  fill(255,102);}
 
  void draw(){
    background(0);
    for(int i = num-1; i > 0; i --){
      x[i]= x[i-1];
      y[i] = y[i-1];}
      x[0]=mouseX;
      y[0] = mouseY; //add value at top of li
      
      for(int i = 0; i < num; i++){//if is less than num than keep runnung this for loop
      ellipse(x[i],y[i],i,i);
    
    
    
    
      }
    
  }