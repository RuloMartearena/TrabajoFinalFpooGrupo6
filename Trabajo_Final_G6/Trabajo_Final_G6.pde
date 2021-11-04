// ----------- Zona de variables ----------- //
private MainCharacter character;
private Family family;
private Enemy enemy;

// ---------- Zona del setup -------------- //
public void setup() {
  size(1200, 700); 
  //frameRate(3);
  character = new MainCharacter(new PVector(width/2, height/2), 5);
  family = new Family (new PVector(random(width), random(height)), 5);
  enemy = new Enemy(new PVector (width/3, height/3));
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
