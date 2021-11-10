// ------ variables especiales para la musica ------ //
import ddf.minim.*;
Minim minim;
AudioPlayer player;

// ----------- Zona de variables ----------- //
private MainCharacter character;
private Labyrinth maze; 
private Menus menus;
private int mode; // Variable del sketch para los menus

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
  maze = new Labyrinth(73, 40); // crea el objeto de Laberinto asigandole un tamaño a cada cuadro del laberinto, el tamaño es variable, se puede cambiar a gusto
  // -- Personaje -- //
  character = new MainCharacter(0, 0, 5, 0, maze);
}

// ---------- Invocación de metodos ------------ //
public void draw() {
  background(#171717); // color de fondo (gris oscuro)
  player.play(); // musica
  // ---- movimiento del jugador ---- //
  character.displace();
  if (character.positionX == character.nextPositionX && character.positionY == character.nextPositionY) {
    if (maze.celdas[character.nextPositionX][character.nextPositionY].ball = true) {
      // character.points++;
      maze.celdas[character.nextPositionX][character.nextPositionY].ball = false;
    }
    if (keyPressed) {
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
  }
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
    maze.display();
    character.display();
    break;
  case 3:
    menus.displayWin();
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
}
