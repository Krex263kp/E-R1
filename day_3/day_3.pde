int stroke = 1;
int strokecolor = 2;



void setup(){
  size(2000,2000);
}
void draw(){
  
  stroke(0);
  strokeWeight(stroke);
  if(mousePressed) {
  line(pmouseX,pmouseY,mouseX,mouseY);
  stroke++;
}
}

void keyPressed(){
 if (keyCode == UP) {
 stroke++;
 }
 if (keyCode == DOWN){
   stroke--;
 }
 if (keyCode == LEFT){
   background(random(255),random(204),random(5));
 }
 
if (keyCode == RIGHT){
  (random(674),random(782),random(982));
  
}
}