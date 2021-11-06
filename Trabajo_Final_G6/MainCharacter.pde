/** Crea una clase llamada MainCharacter que hereda de la clase GameObject */
class MainCharacter extends GameObject {

  // ---------------- Zona de atributos ------------------- //

  /* Representa la posicion en x del jugador */
  private int positionX;
  /* Representa la posicion en y del jugador */
  private int positionY;
  /** Representa si el objeto esta "vivo" */
  private boolean life;
  /* Representa el mapa del laberinto que tiene el jugador */
  Labyrinth maze;


  // ----------------- Zona de constructores ---------------- //

  /** Constructor parametrizado */
  public MainCharacter(int positionX, int positionY, int radius, Labyrinth maze) {
    this.positionX = positionX;
    this.positionY = positionY;
    this.colorObject = #E047E3; // (rosa)
    this.radius = radius;
    this.life = true;
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

  /** Cambia el valor del atributo life */
  public void setLife(boolean life) {
    this.life = life; // Establece el valor del atributo life
  }
  /** Retorna el valor del atributo life */
  public boolean getLife() {
    return this.life;
  }
}
