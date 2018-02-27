/* 
In mathematics, a rose or rhodonea curve 
is a sinusoid plotted in polar coordinates.
*/
float r = 100;
float theta;
float x;
float y;

float res = 100;

void setup() {
  size(600,600);
  
}


void draw() {
  background(0);
  pushMatrix();
  translate(width*0.5,height*0.5);
  fill(255);
  beginShape();
  
  //res = map(mouseX, 0, width,3,100);
  for(int i = 0; i < res; i++) {
    
    theta = map(i,0,res,0,TWO_PI);
    
    x = r * cos(theta);
    y = r * sin(theta);
    
    vertex(x,y);
  }
  
  endShape(CLOSE);
  
  popMatrix();
}