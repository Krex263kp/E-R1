Catcher catcher;
Drop[] drops;
Timer timer;
int totalDrops=0;

boolean gameOver=false;
int score=0;
int level=1;
int lives=100;
int levelCounter=0;
PFont f;




void setup() {
  size(1000, 1000);
  catcher=new Catcher(100);
  drops = new Drop[10];
  timer = new Timer(300);
  timer.start();
  f= createFont("ChalkDuster", 15, true);
  noCursor();
}
void draw() {
  background(0);
  if (gameOver) {
  } else {

    catcher.setLocation(mouseX, mouseY);
    catcher.display();
    if (timer.isFinished()) {
      if (totalDrops<drops.length) {
        drops[totalDrops]=new Drop();
        totalDrops++;
      }
      timer.start();
    }
    for (int i=0; i<totalDrops; i++) {
      if (!drops[i].finished) {


        drops[i].move();
        drops[i].display();

        if (drops[i].reachedBottom()) {
          levelCounter++;
          drops[i].finished();
          lives--;
          if (lives<=0) {
            gameOver=true;
          }
        } 


        if (catcher.intersect(drops[i])) {
          drops[i].finished();
          levelCounter++;
          score++;
        }
      }
    }
    if (levelCounter>=drops.length) {
      level++;
      lives=10;
      totalDrops=0;
      timer.setTime(constrain(300-level*25, 0, 300));
    }
  }
}