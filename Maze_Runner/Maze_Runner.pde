// ------ variables especiales para la musica ------ //
import ddf.minim.*;
Minim minim;
AudioPlayer player;

// ----------- Zona de variables ----------- //
private int mode; // Variable del sketch para los menus
private MainCharacter character; // Jugador
private Labyrinth maze; // Laberinto
private Menus menus; // Menus
private Cat cat; // Gatos
private Family []family = new Family[3]; // Familiares
private Enemy [] enemies = new Enemy [6]; // Enemigos

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
  cat = new Cat(new PVector(-20, -30));
  // -- Enemigo -- //
  for (int i=0; i < enemies.length; i++) {
    enemies [i] = new Enemy(width/2, (i*(height-20)/enemies.length),((int)random(1, 5)),20,40,40);
  }
  // -- Familiares --//
  for (int i=0; i<family.length; i++) {
    family[i] = new Family((int)random(4),0,5);//(int)random(73), (int)random(40), 5);
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
    character.collectPoints(); // Coleccion de puntos del jugador
    character.displace(); // movimiento del juegador
    character.display(); // dibujo del jugador
    cat.display(); // dibujo del gato
    cat.move(); // movimiento del gato
    // Estructura iterativa que dibuja a todos los enemigos
    for (int i=0; i< enemies.length; i++) {
      enemies[i].display();
      enemies[i].move();
      enemies[i].colision(character);
      
      
    }
    // Estructura iterativa que dibuja a todos los familiares
    for (int i=0; i< family.length; i++) {
      family[i].familyPoints();
      family[i].display();
      family[i].colision(character);
      if (family[i].getFamilyPoints() == 1 && character.getPoints() == 2920) {  
        menus.displayWin(); // mensaje de que se gano el juego
      }
    }
    break;
  case 3:
    // Aqui debería ir una estructura iterativa if con los puntos y los contadores de los familiares para que mande el mensaje de que se gano
    menus.displayInstruccion();
    maze.resetLabyrinth(); // resetea el laberinto
    maze.moving(0, 0, 0, 0); // genera otro laberinto
    // reposiciona al jugador
    character.setPositionX(0);
    character.setPositionY(0);
    character.setNextPositionX(0);
    character.setNextPositionY(0);
    character.setPoints(0);
    for (int i=0; i< family.length; i++) {
      family[i].setFamilyPoints(0);
    }
    for (int i=0; i<family.length; i++) {
      family[i].setPositionX((int)random(73));
      family[i].setPositionY((int)random(40));
    }
    // Falta restablecer las posiciones de los enemigos
    for (int i=0; i<enemies.length; i++) {
      enemies[i].setPositionX((int)random(100));
      enemies[i].setPositionY((int)random(50));
    
    
    }
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
