/**

How to load and play video

**/ 

import processing.video.*;
import controlP5.*;
import ddf.minim.*;

Minim minim;
AudioInput in;

ControlP5 cp5;

Movie my_video;

//boolean Play;


void setup() {
  size(640, 410);
  
  background(0);
  
  minim = new Minim(this);
  
  // use the getLineIn method of the Minim object to get an AudioInput
  in = minim.getLineIn();
  
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
  
  // draw the waveforms so we can see what we are monitoring
  for(int i = 0; i < in.bufferSize() - 1; i++)
  {
    
    if(in.left.get(i) > 0.8) {
      Play();
    }
  }
  
}