float angle = .1;

void setup() {
  size(500, 500);
  frameRate(1000);
}
void draw() {
  background(255);

  ellipseMode(CENTER);
  rectMode(CENTER);

if(mousePressed){

  stroke(0);
  fill(random(255), random(255), random(255));
  ellipse(250, 250, 350, 350);

  fill(random(255), random(255), random(255));
  ellipse(250, 250, 300, 300);


  fill(random(255), random(255), random(255));
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(radians(frameCount));
  rect(0, 0, 200, 200);
  translate(-100,-100);
  popMatrix();
 

  fill(255, 204, 0);
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(radians(frameCount*-1));
  rect(0, 0, 100, 100);
  translate(-50,-50);
  popMatrix();
  
  
} else{
  background(random(255),random(255),random(255));
}
  
}