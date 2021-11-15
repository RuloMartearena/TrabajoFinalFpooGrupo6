/* ------ variables especiales para la musica ------ */
import ddf.minim.*; // Importa la biblioteca minim
private Minim minim; // Crea una variable de tipo minim con nombre minim 
private AudioPlayer player; // Crea una variable de tipo AudioPlayer de nombre player

/* ----------- Zona de variables ----------- */
private int mode; // Variable del sketch para los menus de tipo entero y de nombre mode
private MainCharacter character; // Variable del Jugador
private Labyrinth maze; // Variable del  Laberinto
private Menus menus; // Variable del  Menus
private Cat cat; // Variable del Gato
private Family []family = new Family[3]; // Variable tipo array de los Familiares

/* ---------- Configuración inicial -------------- */
public void setup() {
  size(1200, 700);
  // Menus
  mode = 0;
  menus = new Menus();
  // Musica
  minim = new Minim(this);
  player = minim.loadFile("resources/music/lofibits.mp3");
  // Laberinto
  maze = new Labyrinth(73, 40); // (ancho, alto)
  // Personaje
  character = new MainCharacter(0, 0, 5, maze); // (posX, posY, radio, laberinto)
  // Gato
  cat = new Cat(new PVector(-20, -30)); // (posX, posY)
  // Familiares
  for (int i=0; i<family.length; i++) {
    family[i] = new Family((int)random(73), (int)random(40), 5); // (posX, posY, radio)
  }
}
/* ---------- Invocación de metodos ------------ */
public void draw() {
  background(#2C2B2B); // color de fondo (gris oscuro)
  player.play(); // musica
  // Estructura iterativa para menus
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
    // Estructura iterativa que dibuja a todos los familiares
    for (int i=0; i< family.length; i++) {
      family[i].familyPoints();
      family[i].display();
      family[i].colision(character);
      // Condicion de victoria
      if (family[i].getFamilyPoints() == 1 && character.getPoints() == 2920) {  
        menus.displayWin(); // mensaje de que se gano el juego
      }
    }
    break;
  case 3:
    menus.displayInstruccion(); // Instrucciones para seguir jugando
    maze.resetLabyrinth(); // resetea el laberinto
    maze.moving(0, 0, 0, 0); // genera otro laberinto
    // reposiciona al jugador
    character.setPositionX(0);
    character.setPositionY(0);
    character.setNextPositionX(0);
    character.setNextPositionY(0);
    character.setPoints(1); // Reinicia los puntos del jugador en 1
    // Reposiciona a la familiar 
    for (int i=0; i<family.length; i++) {
      family[i].setPositionX((int)random(73));
      family[i].setPositionY((int)random(40));
    }
    break;
  }
}
// keyPressed para menus
public void keyPressed() {
  if (key == 'n') mode++; // Aumenta la variable para los menus en 1 cuando se presiona la tecla n
  if (mode >= 4) { // Si la variable del menu es mayor a 4 su valor es 2, esto es para que se genere otro laberinto
    mode = 2;
  }
  // Movimiento del jugador
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
