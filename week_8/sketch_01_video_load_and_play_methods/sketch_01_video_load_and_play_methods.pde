/**

How to load and play video

**/ 

import processing.video.*;
import controlP5.*;

ControlP5 cp5;

Movie my_video;

//boolean Play;


void setup() {
  size(640, 410);
  
  background(0);
  
  // Load and play the video in a loop
  my_video = new Movie(this,"Earth_Zoom_In.mov");
  my_video.play();
  
  // Load GUI Items
  cp5 = new ControlP5(this);
  
  // create a new button with name 'buttonA'
  cp5.addButton("Play")
     .setValue(0)
     .setPosition(0,height-30)
     .setSize(140,30)
     ;
     
    // create a new button with name 'buttonA'
  cp5.addButton("Stop")
     .setValue(0)
     .setPosition(141,height-30)
     .setSize(140,30)
     ;
}

// Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
}

void Play() {
  my_video.jump(0);
  my_video.play();
  
}

void Stop() {
  my_video.jump(0);
  my_video.stop();
  
}

void draw() {
  image(my_video,0,0,width,height-30);

  
}