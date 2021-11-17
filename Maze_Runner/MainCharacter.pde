/** Representa al jugador */
class MainCharacter extends GameObject {

  // -------------------- Zona de atributos -------------------- //

  /** Representa el mapa del laberinto que tiene el jugador */
  private Labyrinth maze;
  /** Representa la posicion siguente del objeto para suavizar el movimiento */
  private int nextPositionX;
  /** Representa la posicion siguente del objeto para suavizar el movimiento */
  private int nextPositionY;
  /** Representa la velocidad a la que se mueve el jugador */
  private float velocity;
  /** Representa los puntos del jugador */
  private int points;

  // -------------------- Zona de constructores -------------------- //

  /** Constructor */
  public MainCharacter(int positionX, int positionY, int radius, Labyrinth maze) {
    this.positionX = positionX;
    this.positionY = positionY;
    this.maze = maze;
    this.nextPositionX = positionX;
    this.nextPositionY = positionY;
    this.velocity = 0.3;
    this.colorObject = (#EF7F1A); // (anaranjado)
    this.radius = radius;
    this.points = 1;
  }

  // -------------------- Zona de operaciones -------------------- //

  /** Dibuja un personaje */
  public void display() {
    noStroke(); // saca los bordes a la forma
    fill(this.colorObject); // color del personaje
    circle(this.positionX*15+8, this.positionY*15+8, this.radius*2); // dibuja un circulo que representa al personaje principal
  }

  /** Cuenta y aumenta los puntos */
  public void collectPoints() {
    fill(#AFADAD); // color de las letras (gris oscuro | el mismo que el del laberinto y las celdas)
    textSize(15);
    text(Constants.POINTS_PLAYER+this.points, -1, -17); // mensaje
    maze.celdas[0][0].ball = false;//no aparecera la primera bolita para que el jugador empieze con 0 puntos
    if (character.positionX == character.nextPositionX && character.positionY == character.nextPositionY) {     
      if (maze.celdas[character.nextPositionX][character.nextPositionY].ball == true) {
        maze.celdas[character.nextPositionX][character.nextPositionY].ball = false;
        points++;
      }
    }
  }

  /** Desplaza al jugador de manera mas suave */
  public void displace() {
    if (abs(this.positionX-nextPositionX)<this.velocity) this.positionX = nextPositionX; // redondea los decimales para que no salte error al mover al jugador
    if (abs(this.positionY-nextPositionY)<this.velocity) this.positionY = nextPositionY; // redondea los decimales para que no salte error al mover al jugador
    if (this.positionX < nextPositionX) {
      this.positionX += this.velocity; // a la posicion en X se le suma la velocidad
    } else if (this.positionX > nextPositionX) {
      this.positionX -= this.velocity; // a la posicion en X se le resta la velocidad
    }
    if (this.positionY < nextPositionY) {
      this.positionY += this.velocity; // a la posicion en Y se le suma la velocidad
    } else if (this.positionY > nextPositionY) {
      this.positionY -= this.velocity; // a la posicion en Y se le resta la velocidad
    }
  }  

  /** Mueve el personaje */
  public void move(int moveX, int moveY) {  // Los parametros usados es la cantidad que se desea mover  
    // variables que representan a la nueva posicion (se usa para que el personaje se mueva)
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

  /** Cambia el valor de la siguiente posicion en X de MainChatacter */
  public void setNextPositionX (int nextPositionX) {
    this.nextPositionX = nextPositionX; // Establece el valor de la siguiente posicion en X
  }
  /** Retorna el valor de la siguiente posicion en X */
  public int getNextPositionX() {
    return this.nextPositionX;
  }
  /** Cambia el valor de la siguiente posicion en Y de MainChatacter */
  public void setNextPositionY (int nextPositionY) {
    this.nextPositionY = nextPositionY; // Establece el valor de la siguiente posicion en Y
  }
  /** Retorna el valor de la siguiente posicion en Y */
  public int getNextPositionY() {
    return this.nextPositionY;
  }
  /** Cambia el valor de la velocidad de MainCharacter */
  public void setVelocity (float velocity) {
    this.velocity = velocity; // Establece el valor de la velocidad
  }
  /** Retorna el valor de la velocidad */
  public float getVelocity() {
    return this.velocity;
  }
  /** Cambia el valor de los puntos de MainCharacter */
  public void setPoints(int points) {
    this.points = points; // Establece el valor de los puntos.
  }
  /** Retorna el valor de la puntos */
  public int getPoints() {
    return this.points;
  }
}
