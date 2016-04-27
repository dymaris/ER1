import processing.dxf.*;

Catcher catcher;
Drop[] drops;
Timer timer;
int totalDrops = 0;

boolean gameOver = false;
int score = 0;
int level = 1;
int lives = 1;
int levelCounter = 0;
PFont f;



void setup() {
  size(640, 360);
  catcher = new Catcher(32);
  drops = new Drop[500];
  timer = new Timer(100);
  timer.start();
  f = createFont("Noteworthy", 14, true);
  noCursor();
}



void draw() {
  background(32,178,170);


  if (gameOver) {
    textFont(f, 40);
    textAlign(CENTER);
    fill(255);
    text("BETTER LUCK NEXT TIME", width/2, height/2);
  } else {



    catcher.setLocation(mouseX, mouseY);
    catcher.display();
    // check the timer

    if (timer.isFinished()) {
      //init one drop

      //increment drop below
      if (totalDrops < drops.length) {
        drops[totalDrops]= new Drop();
        totalDrops++;
        //if we hit the end of array, start over the beginning
      }
      timer.start();
    }


    for (int i=0; i < totalDrops; i++) {
      if (!drops[i].finished) {
        drops[i].move();
        drops[i].display();
        if (drops[i].reachedBottom()) {
          levelCounter++;
          //lives--;
          score++;
          if (lives<=0) {
            gameOver=true;
          }
        }

        //if statement for intersection
        if (catcher.intersect(drops[i])) {

          drops[i].finished();
          //levelCounter++;
          lives--;
          //score++;
        }
      }
    }
    if (levelCounter >= drops.length) {
     level++;
      levelCounter = 0;
     // lives = 10;
      totalDrops=0;
      timer.setTime(constrain(300-level*25, 0, 300));
    }
    textFont(f, 14);
    fill(0);
    text("lives left:" + lives, 20, 20);
    rect(10, 24, lives*10, 10);
    text("Level;" + level, 300, 20);
    text("Score;" + score, 300, 40);
  }
}