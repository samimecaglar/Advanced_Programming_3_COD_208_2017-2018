import controlP5.*;

float x;
float y;

// GUI
ControlP5 cp5;
ColorPicker cp;

void setup() {

  size(600, 600);

  cp5 = new ControlP5(this);
  // Add xpos slider
  cp5.addSlider("x")
    .setPosition(10, 10)
    .setRange(0, width)
    .setSize(200, 20)
    .setValue(width*0.5);


  // Add ypos slider
  cp5.addSlider("y")
    .setPosition(10, 35)
    .setRange(0, height)
    .setSize(200, 20)
    .setValue(height*0.5);
    
  // Add color slider
  cp = cp5.addColorPicker("picker")
  .setPosition(10, 60)
  .setColorValue(color(0, 0, 0, 255));
}


void draw() {
  background(255);

  // set position variables
  //x = width*0.5;
  //y = height*0.5;

  stroke(100, 100, 100, 255);
  rectMode(CENTER);
  fill(cp.getColorValue());
  rect(x, y, 50, 50);
}