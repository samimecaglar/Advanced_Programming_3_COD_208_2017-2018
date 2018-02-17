class Walker {
  float x;
  float y;
  float tx;
  float ty;
  
  int r;
  int g;
  int b;
  float a;
  
  Walker() {
    //println("I am in the game");
   x = width/2;
   y = height/2;
   
   tx = 88880;
   ty = -10000;
   
   r = int(random(255));
   g = int(random(255));
   b = int(random(255));
   a = 255;
  }
  
  void display() {
   stroke(r,g,b,a);
   point(x,y);
   
   // change radius according to noise
   float r  = map(noise(tx),0,1,0,200);
   a = map(noise(ty),0,1,10,200);
   ellipse(x,y,r,r);
  }
  
  void step() {
    x = map(noise(tx),0,1,0,width);
    y = map(noise(ty),0,1,0,height);
    
    tx += 0.01;
    ty += 0.01;
  }

}