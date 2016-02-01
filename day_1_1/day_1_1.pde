int circleX = 0;
int circleY = 500;
void setup(){
size(2000,2000);  
}
void draw(){
  background(random(255),random(204),random(0));
  stroke(0);
  fill(random(255),random(204),random(0));
  ellipse(circleX,circleY,1000,1000);
  
  circleX = circleX + 1;
}