void setup(){
  size(200,200);
  noStroke();
}
void draw(){
  background(175);
  float color1 = map(mouseX,0,width,0,255);
    fill(color1);
  println(mouseX,color1);
  ellipse(100,100,50,50);
  
  float x1 = map(mouseX,0,width,50,150);
  float y1 = map(mouseY,0,width,100,200);
  ellipse(x1,y1,25,50);
  
  
  
  
  
}