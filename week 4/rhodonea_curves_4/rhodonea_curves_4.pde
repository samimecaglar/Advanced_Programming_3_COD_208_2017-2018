import controlP5.*;
import processing.pdf.*;
boolean record;
/* 
 In mathematics, a rose or rhodonea curve 
 is a sinusoid plotted in polar coordinates.
 */
ControlP5 cp5;


float r = 200;
float petalLen;
int resolution = 100;
float theta;
float x;
float y;
float k;
float n = 3;
float d = 4;
float c = 1;


void setup() {
  fullScreen();
  //size(600, 600);

  cp5 = new ControlP5(this);



  cp5.addSlider("resolution")
    .setLabel("Number of Points")
    .setPosition(20, 20)
    .setRange(20, 300)
    ;

  cp5.addSlider("r")
    .setLabel("Radius")
    .setPosition(20, 32)
    .setRange(20, 300)
    ;

  cp5.addSlider("n")
    .setLabel("n Value")
    .setPosition(20, 44)
    .setRange(0, 50)
    .setNumberOfTickMarks(51);

  cp5.addSlider("d")
    .setLabel("d Value")
    .setPosition(20, 56)
    .setRange(0, 50)
    .setNumberOfTickMarks(51);

  cp5.addSlider("c")
    .setLabel("Offset Value")
    .setPosition(20, 68)
    .setRange(0, 1)
    ;
}


void draw() {

  if (record == true) {
    // Note that #### will be replaced with the frame number. Fancy!
    beginRecord(PDF, "testest.pdf");
  }

  background(0);
  pushMatrix();
  translate(width*0.5, height*0.5);
  //fill(255);
  noFill();
  stroke(255);

  k = n / d;

  beginShape();
  for (int i = 0; i < resolution*floor(d); i++) {

    theta = map(i, 0, resolution, 0, TWO_PI);

    petalLen = cos(k*theta) + c;
    x = r * petalLen * cos(theta);
    y = r * petalLen * sin(theta);
    //point(x, y);
    vertex(x, y);
  }
  endShape(CLOSE);
  popMatrix();

  if (record == true) {
    endRecord();
    record = false;
  }
}

// Use a keypress so thousands of files aren't created
void mousePressed() {
  record = true;
}