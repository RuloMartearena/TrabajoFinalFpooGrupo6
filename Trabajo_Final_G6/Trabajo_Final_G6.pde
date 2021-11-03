// ----------- Zona de variables ----------- //
private MainCharacter character;

public void setup() {
  size(1200, 700);
  character = new MainCharacter(new PVector(width/2, height/2), 5, 5, true);
}

public void draw() {
  background(0);
  character.move();
}
