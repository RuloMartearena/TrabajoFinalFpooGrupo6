/** Crea una clase llamada MainCharacter que hereda de la clase GameObject */
class MainCharacter extends GameObject {

  // ---------------- Zona de atributos ------------------- //

  /** Representa si el objeto esta "vivo" */
  private boolean life;
  /* Representa el mapa del laberinto que tiene el jugador */
  Labyrinth maze;

  // ----------------- Zona de constructores ---------------- //

  /** Constructor parametrizado */
  public MainCharacter(PVector position, int radius, Labyrinth maze) {
    this.position = position;
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
    circle(this.position.x, this.position.y, this.radius*2); // dibuja al personaje principal
  }

  /** Mueve el personaje */
  public void move(float moveX, float moveY) {
    float newX = this.position.x + moveX;
    float newY = this.position.y + moveY;

    // Compruebo limites del mapa
    if (newX>=0 && newX<maze.widthMaze && 
      newY>=0 && newY<maze.heightMaze) {
      // comprueba los muros
      if (
        (moveX == 1 && maze.celdas[x][y].rightWall == false) || // Derecha
        (moveY == -1 && maze.celdas[x][y].upWall == false) ||      // Arriba
        (moveX == -1 && maze.celdas[x-1][y].rightWall == false) ||   // Izquierda
        (moveY == 1 && maze.celdas[x][y+1].upWall == false))
      {
        // si todo esta bien mueve
        this.position.x = newX;
        this.position.y = newY;
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
