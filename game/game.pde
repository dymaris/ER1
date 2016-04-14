import processing.dxf.*;

Catcher catcher;
Drop[] drops;
Timer timer;
int totalDrops = 0;

boolean gameOver = false;
int score = 0;
int level = 1;
int lives = 10;
int levelCounter = 0;
PFont f;



void setup() {
  size(640, 360);
  catcher = new Catcher(32);
  drops = new Drop[10];
  timer = new Timer(300);
  timer.start();
  f = createFont("Arial", 12, true);
  noCursor();
}



void draw() {
  background(255);


  if (gameOver) {
  } else {



    catcher.setLocation(mouseX, mouseY);
    catcher.display();
    // check the timer
    if (timer.isFinished()) {
      //init one drop

      //increment drop below 
      totalDrops++;
      if (totalDrops < drops.length) {
        drops[totalDrops]= new Drop();
        totalDrops++;
        //if we hit the end of array, start over the beginning
      }
      timer.start();
    }


    for (int i=0; i < totalDrops; i++) {
      if (!drops[i].finished() {
        drops[i].move();
        drops[i].display();
        if (drops[i].reachedBottom() {
          levelCounter++;
          if (lives<=0) {
          }
        }
        drops[i].finsished();
        //if statement for intersection
        if (catcher.intersect(drops[i])) {
          drops[i].finished();
          levelCounter++;
          score++;
        }
      }
    }
    if (levelCounter >= drops.length) {
      level++;
      levelCounter = 0;
      lives = 10;
      totalDrops=0;
      timer.setTime(constrain(300-level*25,0,300));
    }