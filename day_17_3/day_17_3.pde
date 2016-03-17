int num=250;
int[] x=new int[num];
int[] y=new int[num];
void setup(){
  size(1000,1000);
  noStroke();
}
void draw(){
  background(0);
  if(mousePressed){fill(random(255),random(255),random(255));}
  else {fill(255);}
  for(int i=num-1;i>0;i--){
    x[i]=x[i-1];
    y[i]=y[i-1];}
  x[0]=mouseX;
  y[0]=mouseY;
  for(int i=0;i<num;i++){
    ellipse(x[i],y[i],i/2,i/2);}
  
  
  
  
  
}