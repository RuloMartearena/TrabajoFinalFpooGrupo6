// ----------- Zona de variables ----------- //
private MainCharacter character;
private Family family;
private Enemy enemy;

// ---------- Zona del setup -------------- //
public void setup() {
  size(1200, 700); 
  character = new MainCharacter(new PVector(width/2, height/2), 7, 7, true);
  family = new Family (new PVector(random(width), random(height)), #7B236D, 7); 
  enemy = new Enemy();
  enemy.setHeightFrame(200);
  enemy.setWidthFrame(200);
  enemy.setPosition(new PVector(width/4, height-enemy.getHeightFrame()));
}

// ---------- Zona del draw ------------ //
public void draw() {
  background(#171717); // color gris oscuro
  character.move();
  family.display();
  enemy.display(); //visualiza al enemigo
  enemy.move(); //muestra el movimiento del enemigo
}
