boolean spin = false;
float angle = .1;
int x = 50;
int y = 50;


void setup(){
  size(400,400);
}
void draw(){
  background(55);
  fill(random(255),random(255),random(255));
  noStroke();
  if(spin == false){
    rect(x,y,30,30);
    ellipse(200,200,x,y);
  }
  if(mousePressed){
    if(mouseX > x && mouseX < 80 && mouseY > y && mouseY < 80){
  pushMatrix();
  translate(65,65);
  rotate(angle);
  rect(0,0,30,30);
  popMatrix();
  angle += .5;
  ellipse(200,200,x,y);
  spin = true;
    } else spin = false;
    delay(100);
  }
  
}