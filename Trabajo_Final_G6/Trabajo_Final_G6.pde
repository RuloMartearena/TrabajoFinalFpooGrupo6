// ----------- Zona de variables ----------- //
private MainCharacter character;

// ---------- Zona del setup -------------- //
public void setup() {
  size(1200, 700); 
  character = new MainCharacter(new PVector(width/2, height/2), 5, 5, true);
}

// ---------- Zona del draw ------------ //
public void draw() {
  background(#171717); // color gris oscuro
  character.move();
}
