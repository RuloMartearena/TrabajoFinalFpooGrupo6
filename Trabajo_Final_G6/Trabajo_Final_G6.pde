// ----------- Zona de variables ----------- //
private MainCharacter character;
private Family family;
private Enemy enemy;
Labyrinth maze; // variable global de tipo Laberinto

// ---------- Zona del setup -------------- //
public void setup() {
  size(1200, 700); 
  character = new MainCharacter(new PVector(8, 8), 5);
  family = new Family (new PVector(random(width), random(height)), 5);
  enemy = new Enemy(new PVector (width/3, height/3));
  enemy.setHeightFrame(200);
  enemy.setWidthFrame(200);
  enemy.setPosition(new PVector(width/4, height-enemy.getHeightFrame()));
  maze = new Labyrinth(73, 40); // crea el objeto de Laberinto asigandole un tamaño a cada cuadro del laberinto, el tamaño es variable, se puede cambiar a gusto
  maze.moving(0, 0, 0, 0); // genera el laberinto
}

// ---------- Zona del draw ------------ //
public void draw() {
  background(#171717); // color gris oscuro
  maze.display(); // invoco el display del laberinto
  character.move();
  family.display();
  /* enemy.display(); //visualiza al enemigo
   enemy.move(); //muestra el movimiento del enemigo */
}
