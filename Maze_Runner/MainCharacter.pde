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
    fill(this.colorObject); // color del personaje (rosa)
    circle(this.positionX*15+8, this.positionY*15+8, this.radius*2); // dibuja un circulo que representa al personaje principal
  }

  /** Cuenta y aumenta los puntos */
  public void collectPoints() {
    fill(#AFADAD); // color de las letras (gris oscuro | el mismo que el del laberinto y las celdas)
    text(Constants.POINTS_PLAYER+this.points, -1, -10); // mensaje
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

  // Siguiente posicion en X
  /* Cambia el valor de la siguiente posicion del objeto */
  public void setNextPositionX (int nextPositionX) {
    this.nextPositionX = nextPositionX; // Establece el valor del objeto
  }
  /* Retorna el valor del objeto */
  public int getNextPositionX() {
    return this.nextPositionX;
  }
  // Siguiente posicion en Y
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
  // Puntos
  public void setPoints(int points) {
    this.points = points;
  }
  public int getPoints() {
    return this.points;
  }
}
