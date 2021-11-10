/** Crea una clase llamada MainCharacter que hereda de la clase GameObject */
class MainCharacter extends GameObject {

  // ---------------- Zona de atributos ------------------- //

  /* Representa el mapa del laberinto que tiene el jugador */
  private Labyrinth maze;

  // ----------------- Zona de constructores ---------------- //

  /** Constructor parametrizado */
  public MainCharacter(int positionX, int positionY, int radius, Labyrinth maze) {
    this.positionX = positionX;
    this.positionY = positionY;
    this.colorObject = #E047E3; // (rosa)
    this.radius = radius;
    this.maze = maze;
  }

  // -------------------- Zona de operaciones -------------- //

  /** Dibuja un personaje */
  public void display() {
    noStroke(); // saca los bordes a la forma
    fill(this.colorObject); // color del personaje (rosa)
    circle(this.positionX*15+8, this.positionY*15+8, this.radius*2); // dibuja al personaje principal
  }

  /** Mueve el personaje */
  public void move(int moveX, int moveY) {
    int newX = this.positionX + moveX;
    int newY = this.positionY + moveY;

    // Compruebo limites del mapa
    if (newX>=0 && newX<maze.widthMaze && 
      newY>=0 && newY<maze.heightMaze) {
      // comprueba los muros
      if (
        (moveX == 1 && maze.celdas[positionX][positionY].rightWall == false) || // Derecha
        (moveY == -1 && maze.celdas[positionX][positionY].upWall == false) ||      // Arriba
        (moveX == -1 && maze.celdas[positionX-1][positionY].rightWall == false) ||   // Izquierda
        (moveY == 1 && maze.celdas[positionX][positionY+1].upWall == false))
      {
        // si todo esta bien mueve
        this.positionX = newX;
        this.positionY = newY;
      }
    }
  }

  // -------------------- Zona de metodos --------------- //
}
