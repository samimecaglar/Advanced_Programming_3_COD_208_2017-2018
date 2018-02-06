dikDort rect1;
dikDort rect2;

void setup() {
  size(200,200);
  
  rect1 = new dikDort();
  rect2 = new dikDort();
  
  rect2.y = 150;
  rect2.x = 30;
  rect2.speed = 1.5;
}

void draw() {
  background(255);
  
  rect1.move();
  rect1.display();
  
  rect2.move();
  rect2.display();
}