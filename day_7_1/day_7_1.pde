float angle = .1;

void setup(){
  size(500,500);
}
void draw(){
  background(255);

ellipseMode(CENTER);
rectMode(CENTER);

stroke(0);
fill(random(255),random(255),random(255));
ellipse(250,250,350,350);

fill(random(255),random(255),random(255));
ellipse(250,250,300,300);


fill(random(255),random(255),random(255));
rect(250,250,200,200);
pushMatrix();
  translate(65,65);
  rotate(angle);
  rect(0,0,30,30);
  popMatrix();
  angle += .5;
  
fill(255,204,0);
rect(250,250,100,100);
pushMatrix();
  translate(65,65);
  rotate(angle);
  rect(0,0,30,30);
  popMatrix();
  angle += -.5;







}