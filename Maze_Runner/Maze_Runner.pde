// ------ variables especiales para la musica ------ //
import ddf.minim.*;
Minim minim;
AudioPlayer player;

// ----------- Zona de variables ----------- //
private MainCharacter character; // Jugador
private Labyrinth maze; // Laberinto
private Menus menus; // Menus
private Cat cat; // Gato
private Enemy[]enemies = new Enemy [6]; // Enemigos
private Enemy enemy; // Enemigo
private FamilyList familylist; // Familiares
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
  maze = new Labyrinth(73, 40); 
  // -- Personaje -- //
  character = new MainCharacter(0, 0, 5, maze);
  // -- Gato -- //
  cat = new Cat(new PVector(0, 0));
  cat.setPosition(new PVector (-20, -30));
  // -- Enemigo -- //
  for (int i=0; i < enemies.length; i++) {
    enemies [i] = new Enemy(new PVector(width/2, i*(height-20)/enemies.length), new PVector(random(1, 15), 0));
  }
  // -- Familiares --//
  familylist = new FamilyList();
  for (int i=0; i<familylist.kin.length; i++) {
    familylist.kin[i] = new Family((int)random(73), (int)random(40), 5);
  }
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
    for (int i=0; i< enemies.length; i++) {
      enemies[i].display();
      enemies[i].move();
    }
    familylist.kin[0].display();
    familylist.kin[0].colision(character); 
    familylist.kin[1].display();
    familylist.kin[1].colision(character);
    familylist.kin[2].display();
    familylist.kin[2].colision(character); 
    break;
  case 3:
    // aqui deberia ir un condicionante if para que se muestre el cartel de victoria
    menus.displayWin(); // mensaje de que se gano el juego
    maze.resetLabyrinth(); // resetea el laberinto
    maze.moving(0, 0, 0, 0); // genera otro laberinto
    // reposiciona al jugador
    character.setPositionX(0);
    character.setPositionY(0);
    character.setNextPositionX(0);
    character.setNextPositionY(0);
    // falta reposicionamiento de los familiares, de los enemigos, re contado de los puntos y recontado de los familiares rescatados. 
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
