ArrayList<Walker> clones = new ArrayList<Walker>();
int numWalkers = 100;

void setup() {
  size(600, 600);
  background(255);

  for (int i = 0; i < numWalkers; i++) {
    Walker c = new Walker();
    c.x = int(random(width));
    c.y = int(random(height));
    clones.add(c);
  }
}

void draw() {

  for (int i = 0; i < numWalkers; i++) {
    clones.get(i).step();
    clones.get(i).display();
  }
}