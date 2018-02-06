class dikDort {
  color c = color(0);
  float x = 0;
  float y = 100;
  float speed = 1;

  dikDort() {
    
  }

  void move() {
    x = x + speed;
    if (x > width) {
      x = 0;
    }
  }

  void display() {
    fill(c);
    rect(x, y, 30, 10);
  }
}