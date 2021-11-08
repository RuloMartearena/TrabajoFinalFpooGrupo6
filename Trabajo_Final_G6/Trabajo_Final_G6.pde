// ------ variables especiales para la musica ------ //
import ddf.minim.*;
Minim minim;
AudioPlayer player;

// ----------- Zona de variables ----------- //
private MainCharacter character;
private Family family;
private Enemy enemy;
private Labyrinth maze; 
private Menus menus;
private int mode;

// ---------- Configuración inicial -------------- //
public void setup() {
  size(1200, 700);
  mode = 0;
  minim = new Minim(this);
  menus = new Menus();
  player = minim.loadFile("resources/music/lofibits.mp3");
  maze = new Labyrinth(73, 40); // crea el objeto de Laberinto asigandole un tamaño a cada cuadro del laberinto, el tamaño es variable, se puede cambiar a gusto
  character = new MainCharacter(0, 0, 5, maze);
  family = new Family ((int)random(maze.getWidthMaze()), (int)random(maze.getHeightMaze()), 5);
  enemy = new Enemy(new PVector(width/3, height/3));
  enemy.setPosition(new PVector (width/4, height-enemy.getHeightFrame()));
}

// ---------- Invocación de metodos ------------ //
public void draw() {
  background(#171717); // color de fondo (gris oscuro)
  player.play();
  switch(mode) { 
  case 0: // nombre del juego
    menus.displayName();
    break;
  case 1: // controles y objetivo
    menus.displayControls();
    break;
  case 2:
    maze.moving(0, 0, 0, 0); // genera la forma del laberinto
    maze.display();
    character.display();
    family.display();
    enemy.display(); 
    enemy.move(); 
    frameRate(10);
    delay(50);
    break;
  case 3:
    menus.displayDie();
    break;
  case 4:
    menus.displayWin();
    break;
  }
}

public void keyPressed() {
  if (key == 'n') mode++;
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
