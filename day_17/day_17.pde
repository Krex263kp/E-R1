void draw(){
  background(255);
  
int [] x={
  50,61,83,69,71,50,29,31,17,39
};
fill(random(255),random(255),random(255));

for(int i=0; i<x.length; i++){
  rect(0,i*10,x[i],8);}
}
  