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
  drops = new Drop[50];
  timer = new Timer(300);
  timer.start();
  f= createFont("ChalkDuster", 15, true);
  noCursor();
}
void draw() {
  background(0);
  if (gameOver) {
    textFont(f,48);
    textAlign(CENTER);
    fill(random(255),random(255),random(255));
    text("GAME OVER",width/2,height/2);
    
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
    textFont(f,14);
    fill(170);
    text("Lives Remaining:"+ lives,10,20);
    rect(10,24,lives*10,10);
    text("Level:"+level,500,20);
    text("Score:"+score,750,20);
  }
}