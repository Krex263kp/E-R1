void setup() {
  size(600, 650);// size of box
}
void draw() {
  background(255);//color

  //black rectangle
  fill(0);//color
  rectMode(CORNER);//place of rect
  noStroke();//stroke
  rect(20, 20, 560, 330);//size of rect

  //quad
  stroke(255, 0, 0);//stroke
  noFill();//color
  strokeWeight(1);//size of stroke
  quad(300, 150, 100, 350, 300, 550, 500, 350);//size of quad
  //top circle
  fill(255);//color
  noStroke();//stroke
  ellipse(300, 150, 80, 80);//size of ellipse
  //left circle
  fill(0, 255, 0, 150);//color
  noStroke();//stroke
  ellipse(100, 350, 80, 80);//size of ellipse
    //right circle
    noFill();//color
  strokeWeight(10);//size of stroke
  stroke(0, 0, 255);//stroke
  ellipse(500, 350, 80, 80);//size of ellipse
  strokeWeight(1);size of stroke
  //triangle
  fill(240, 200);//color
  triangle(300, 440, 140, 600, 460, 600);//size of triangle
  //rectangle on the bottom of triangle
  fill(255);//color
  stroke(0, 0, 255);//stroke
  rectMode(CENTER);//place of rect
  rect(300, 600, 10, 10);//size of rect
  //line btwn 2 points
  stroke(238, 23, 250);//
  strokeWeight(3);
  line(300, 150, 300, 600);
  //arc
  stroke(0);
  noFill();
  strokeWeight(1);
  arc(500, 550, 400, 400, PI, PI+HALF_PI);
  //point
  stroke(255, 0, 0);
  strokeWeight(3);
  point(500, 550);
}