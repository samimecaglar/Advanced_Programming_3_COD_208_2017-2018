/* 
In mathematics, a rose or rhodonea curve 
is a sinusoid plotted in polar coordinates.
*/


float r = 100;
float petalLen;
int resolution = 100;
float theta;
float x;
float y;
float k;
float n = 9;
float d = 2;
float c = 0;

float cFac;
float harry = 0.01;
void setup() {
  size(600,600);
  k = n / d;
}


void draw() {
  background(0);
  pushMatrix();
  translate(width*0.5,height*0.5);
  //fill(255);
  noFill();
  stroke(255);
  
  cFac = cFac + harry;
  
  c = map(cFac,0,2,0,1);
  
  if(cFac > 2) {
    harry = -0.01;
  }
  
  if(cFac < 0) {
    harry = 0.01;
  }
  beginShape();
  clear();
  for(int i = 0; i < resolution*d; i++) {
    
    theta = map(i,0,resolution,0,TWO_PI);
    
    petalLen = cos(k*theta) + c;
    x = r * petalLen * cos(theta);
    y = r * petalLen * sin(theta);
    point(x,y);
    vertex(x,y);
  }
  
  
  endShape(CLOSE);
  popMatrix();
  
 
}