WalkerRect clone1;
Walker clone2;

void setup() {
  size(600, 600);
  background(255);

  // instantiate WalkerRect class

  clone1 = new WalkerRect();
  clone1.x = 100;
  clone1.y = 100;
  
  // initialize Walker class
  clone2 = new Walker();
  clone2.r = 0;
  clone2.g = 0;
  clone2.b = 0;
}

void draw() {
  
  clone1.step();
  clone1.display();
  
  clone2.step();
  clone2.display();
}