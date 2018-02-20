ArrayList<Walker> walkerClones = new ArrayList<Walker>();

int walkerCloneNumber = 1000;

void setup() {
  size(600, 600);
  background(255);

  for (int i = 0; i < walkerCloneNumber; i++) {
    Walker c = new Walker();

    if ( i > 3 && i < 8) {
      c.r = int(33*i);
      c.g = 0;
      c.b = 0;
    } else {
      c.r = 0;
      c.g = 0;
      c.b = 0;
    }
    walkerClones.add(c);
    walkerClones.get(i).x = int(random(width));
    walkerClones.get(i).y = int(random(height));
  }
}

void draw() {
  for (int i = 0; i < walkerCloneNumber; i++) {
    walkerClones.get(i).step();
    walkerClones.get(i).display();
  }
}