// ------ variables especiales para la musica ------ //
import ddf.minim.*;
Minim minim;
AudioPlayer player;

// ----------- Zona de variables ----------- //
private MainCharacter character;
private Labyrinth maze; 
private Menus menus;
private int mode; // Variable del sketch para los menus
private Cat cat;
private Enemy enemy;

// ---------- Configuración inicial -------------- //
public void setup() {
  size(1200, 700);
  // -- Menus -- //
  mode = 0;
  menus = new Menus();
  // -- Musica -- //
  minim = new Minim(this);
  player = minim.loadFile("resources/music/lofibits.mp3");
  // -- Laberinto -- //
  maze = new Labyrinth(73, 40); 
  // -- Personaje -- //
  character = new MainCharacter(0, 0, 5, maze);
  // -- Gato -- //
  cat = new Cat(new PVector(0, 0));
  cat.setPosition(new PVector (20, 20));
  // -- Enemigo -- //
  enemy = new Enemy(new PVector(0, 0));
  enemy.setPosition(new PVector (200, 50));
}

// ---------- Invocación de metodos ------------ //
public void draw() {
  background(#2C2B2B); // color de fondo (gris oscuro)
  //player.play(); // musica
  // --- Estructura iterativa para menus --- // 
  switch(mode) { 
  case 0: // nombre del juego
    menus.displayName();
    break;
  case 1: // controles y objetivo
    menus.displayControls();
    break;
  case 2: // juego en si
    maze.moving(0, 0, 0, 0); // genera la forma del laberinto
    maze.display(); // dibujo del laberinto 
    character.collectPoints(); 
    character.displace(); // movimiento del juegador
    character.display(); // dibujo del jugador
    cat.display();
    cat.move();
    enemy.display();
    enemy.move();
    break;
  case 3:
    menus.displayWin(); // mensaje de que se gano el juego
    maze.resetLabyrinth(); // resetea el laberinto
    maze.moving(0, 0, 0, 0); // genera otro laberinto
    // reposiciona al jugador
    character.setPositionX(0);
    character.setPositionY(0);
    character.setNextPositionX(0);
    character.setNextPositionY(0);
    break;
  }
}

// ------- keyPressed para menus ------ //
public void keyPressed() {
  if (key == 'n') mode++; // Aumenta la variable para los menus en 1 cuando se presiona la tecla n
  if (mode >= 4) { // Si la variable del menu es mayor a 4 su valor es 2, esto es para que se genere otro laberinto
    mode = 2;
  }
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
