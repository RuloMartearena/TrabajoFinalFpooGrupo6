// ----------- Zona de variables ----------- //
private MainCharacter character;
private Family family;

// ---------- Zona del setup -------------- //
public void setup() {
  size(1200, 700); 
  character = new MainCharacter(new PVector(width/2, height/2), 5);
  family = new Family (new PVector(random(width), random(height)), 5);
}

// ---------- Zona del draw ------------ //
public void draw() {
  background(#171717); // color gris oscuro
  character.move();
  family.display();
}
