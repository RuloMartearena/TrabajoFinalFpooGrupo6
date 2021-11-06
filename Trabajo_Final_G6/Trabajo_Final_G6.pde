// ----------- Zona de variables globales ----------- //
MainCharacter character;
Family family;
Enemy enemy;
Labyrinth maze; 

// ---------- Zona del setup -------------- //
public void setup() {
  size(1200, 700); 
  maze = new Labyrinth(73, 40); // crea el objeto de Laberinto asigandole un tamaño a cada cuadro del laberinto, el tamaño es variable, se puede cambiar a gusto
  character = new MainCharacter(0, 0, 5, maze);
  family = new Family (new PVector(random(width), random(height)), 5);
  enemy = new Enemy(new PVector (width/3, height/3));
  enemy.setHeightFrame(200);
  enemy.setWidthFrame(200);
  enemy.setPosition(new PVector(width/4, height-enemy.getHeightFrame()));
}

// ---------- Zona del draw ------------ //
public void draw() {
  background(#171717); // color gris oscuro
  maze.moving(0, 0, 0, 0); // genera la forma del laberinto
  maze.display(); // invoco el display del laberinto
  character.display();
  family.display();
  enemy.display(); //visualiza al enemigo
  enemy.move(); //muestra el movimiento del enemigo
}

void keyPressed() {
  switch(keyCode) {
  case UP:
    character.move(0, -1);
    break;
  case DOWN:
    character.move(0, 1);
    break;
  case LEFT:
    character.move(-1, 0);
    break;
  case RIGHT:
    character.move(1, 0);
    break;
  }
}
