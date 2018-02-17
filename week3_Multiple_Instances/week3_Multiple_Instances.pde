Walker clone1;
Walker clone2;
Walker clone3;
Walker clone4;

void setup() {
  size(600, 600);
  background(255);

  // instantiate 1st instance of Walker class
  // set its default position to 100 , 100
  clone1  = new Walker();
  clone1.x = 100;
  clone1.y = 100;

  // instantiate 2nd instance of Walker class
  // Change default color to black
  clone2 = new Walker();
  clone2.r = 0;
  clone2.g = 0;
  clone2.b = 0;
  clone2.x = width - 100;
  clone2.y = 100;
  
  // instantiate 3rd instance of  Walker class
  clone3  = new Walker();
  clone3.x = width - 100;
  clone3.y = height - 100;
  
  // instantiate 4th instance of  Walker class
  clone4  = new Walker();
  clone4.x = 100;
  clone4.y = height - 100;
}

void draw() {
  
  // Move and display clone1
  clone1.step();
  clone1.display();
  
  // Move and display clone2
  clone2.step();
  clone2.display();
  
  // Move and display clone3
  clone3.step();
  clone3.display();
  
  // Move and display clone4
  clone4.step();
  clone4.display();
}