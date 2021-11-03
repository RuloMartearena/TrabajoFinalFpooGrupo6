// ----------- Zona de variables ----------- //
private MainCharacter character;
private Family family;

// ---------- Zona del setup -------------- //
public void setup() {
  size(1200, 700); 
  character = new MainCharacter(new PVector(width/2, height/2), 7, 7, true);
  family = new Family (new PVector(random(width), random(height)), #7B236D, 7); 
}

// ---------- Zona del draw ------------ //
public void draw() {
  background(0);
  character.move();
  family.display();
}
