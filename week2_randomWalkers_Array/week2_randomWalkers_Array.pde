WalkerRect clone1;

void setup() {
  size(600, 600);
  background(255);

  // instantiate Walker class

  clone1 = new WalkerRect();
  clone1.x = 100;
  clone1.y = 100;
}

void draw() {
  
  clone1.step();
  clone1.display();
}