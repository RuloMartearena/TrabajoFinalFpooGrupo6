/** Crea una clase llamada MainCharacter que hereda de la clase GameObject */
class MainCharacter extends GameObject {

  // ---------------- Zona de atributos ------------------- //

  /* Representa el mapa del laberinto que tiene el jugador */
  private Labyrinth maze;
  /* Representa la posicion siguente del objeto para suavizar el movimiento */
  private int nextPositionX;
  /* Representa la posicion siguente del objeto para suavizar el movimiento */
  private int nextPositionY;
  /* Representa la velocidad a la que se mueve el jugador */
  private float velocity;

  // ----------------- Zona de constructores ---------------- //

  /* Constructor */
  public MainCharacter(int positionX, int positionY, int radius, Labyrinth maze) {
    this.positionX = positionX;
    this.positionY = positionY;
    this.maze = maze;
    this.nextPositionX = positionX;
    this.nextPositionY = positionY;
    this.velocity = 0.3;
    this.colorObject = #E047E3; // (rosa)
    this.radius = radius;
  }

  // -------------------- Zona de operaciones -------------- //

  /** Dibuja un personaje */
  public void display() {
    noStroke(); // saca los bordes a la forma
    fill(this.colorObject); // color del personaje (rosa)
    circle(this.positionX*15+8, this.positionY*15+8, this.radius*2); // dibuja al personaje principal
  }
  /* Desplaza al jugador de manera mas suave */
  public void displace() {
    if (abs(this.positionX-nextPositionX)<this.velocity) this.positionX = nextPositionX; 
    if (abs(this.positionY-nextPositionY)<this.velocity) this.positionY = nextPositionY;
    if (this.positionX < nextPositionX) {
      this.positionX += this.velocity;
    } else if (this.positionX > nextPositionX) {
      this.positionX -= this.velocity;
    }
    if (this.positionY < nextPositionY) {
      this.positionY += this.velocity;
    } else if (this.positionY > nextPositionY) {
      this.positionY -= this.velocity;
    }
  }  
  /** Mueve el personaje */
  public void move(int moveX, int moveY) {    
    int newX = this.nextPositionX + moveX;
    int newY = this.nextPositionY + moveY;    
    // -- Compruebo limites del mapa -- //
    // Comprueba los muros internos
    if (newX>=0 && newX<maze.widthMaze && newY>=0 && newY<maze.heightMaze) {
      // Comprueba los muros de las celdas del mapa
      if (
        (moveX == 1 && maze.celdas[nextPositionX][nextPositionY].rightWall == false) ||   // Derecha
        (moveY == -1 && maze.celdas[nextPositionX][nextPositionY].upWall == false) ||      // Arriba
        (moveX == -1 && maze.celdas[nextPositionX-1][nextPositionY].rightWall == false) ||  // Izquierda
        (moveY == 1 && maze.celdas[nextPositionX][nextPositionY+1].upWall == false) // Abajo
        ) {
        // Cambia a la 'siguiente' posicion
        this.nextPositionX = newX;
        this.nextPositionY = newY;
      }
    }
  }
  // -------------------- Zona de metodos --------------- //
  // Siguiente posicion
  /* Cambia el valor de la siguiente posicion del objeto */
  public void setNextPositionX (int nextPositionX) {
    this.nextPositionX = nextPositionX; // Establece el valor del objeto
  }
  /* Retorna el valor del objeto */
  public int getNextPositionX() {
    return this.nextPositionX;
  }
  /* Cambia el valor de la siguiente posicion del objeto */
  public void setNextPositionY (int nextPositionY) {
    this.nextPositionY = nextPositionY; // Establece el valor del objeto
  }
  /* Retorna el valor del objeto */
  public int getNextPositionY() {
    return this.nextPositionY;
  }
  // Velocidad
  /* Cambia el valor de la velocidad del objeto */
  public void setVelocity (float velocity) {
    this.velocity = velocity;
  }
  public float getVelocity() {
    return this.velocity;
  }
}
