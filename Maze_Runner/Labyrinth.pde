/** Crea un laberinto */
class Labyrinth {

  // ------- Zona de atributos ------- //

  /** Representa las celdas a modo de array, tambien representa la relacion de asociacion con la clase Celda */
  private Cell[][] celdas;
  /** Representa el ancho del laberinto */
  private int widthMaze;
  /** Representa el alto del laberinto */
  private int heightMaze;
  /** Representa el color del laberinto */
  private color colorMaze;

  // ------- Zona de constructores ------- //

  /** Constructor parametrizado y por defecto */
  public Labyrinth(int widthMaze, int heightMaze) {
    this.widthMaze = widthMaze;
    this.heightMaze = heightMaze;
    this.colorMaze = (#AFADAD); // (gris oscuro)
    /* Array de celdas */
    celdas = new Cell[widthMaze][heightMaze];
    resetLabyrinth(); // Dibuja otro patron para el laberinto que es lo mismo a dibujar un laberinto diferente
    for (int i = 0; i<widthMaze; i++) {
      for (int j = 0; j<heightMaze; j++) {
        celdas[i][j] = new Cell();
      }
    }
  }

  // ------- Zona de operaciones ------- //

  /** Dibuja un nuevo laberinto */
  public void resetLabyrinth() {
    for (int i = 0; i<widthMaze; i++) {
      for (int j = 0; j<heightMaze; j++) {
        celdas[i][j] = new Cell();
      }
    }
  }

  /** Genera el laberinto con un AutoWalker*/
  boolean moving(int x, int y, int prevX, int prevY) { // Los parametros son la posicion inicial y la posicion anterior
    if (x<0 || x>=this.widthMaze || y<0 || y>=this.heightMaze || celdas[x][y].visited==true) { // si la celda ya fue visitada
      // No puede moverse
      return false;
    } else {
      // Puede moverse
      celdas[x][y].visited=true;
      // El AutoWalker rompe muros
      if (x > prevX) { 
        celdas[prevX][prevY].rightWall=false;
      }
      if (x < prevX) { 
        celdas[x][y].rightWall=false;
      }
      if (y < prevY) { 
        celdas[prevX][prevY].upWall=false;
      }
      if (y > prevY) { 
        celdas[x][y].upWall=false;
      }
      /* El AutoWalker elige una dirreccion aleatoria */
      // Array de 4 direcciones (Vectores)
      Vector[] dirs = new Vector[4]; // Se crea aqui la variable por que sino el laberinto crea espacios inaccesibles
      dirs[0] = new Vector(0, -1); // Arriba
      dirs[1] = new Vector(1, 0); // Derecha
      dirs[2] = new Vector(0, 1); // Abajo
      dirs[3] = new Vector(-1, 0); // Izquierda
      // Desordenar las direcciones aleatoriamente
      for (int mezcla = 0; mezcla<10; mezcla++) {
        // intercambio una direccion random con la siguiente
        int numero = floor(random(3)); // 0, 1, 2 Variable para genera un numero aleatorio
        // swap
        Vector tmp;
        tmp = dirs[numero]; // tmp <- dirs[1]
        dirs[numero] = dirs[numero+1]; // dirs[1] <-- dirs[2]
        dirs[numero+1] = tmp; // dirs[2] <--- tmp
      }
      // Mueve en esa direccion
      /* Recursividad */
      // Backtraking
      if (
        moving(x+dirs[0].posX, y+dirs[0].posY, x, y) == false &&
        moving(x+dirs[1].posX, y+dirs[1].posY, x, y) == false &&
        moving(x+dirs[2].posX, y+dirs[2].posY, x, y) == false &&
        moving(x+dirs[3].posX, y+dirs[3].posY, x, y) == false)
      {     
        return false;
      }
      return true;
    }
  }

  /** Dibuja el laberinto */
  public void display() {
    translate(50, 50); // deja un espacio entre los bordes del laberinto (modificable)
    for (int i = 0; i<widthMaze; i++) {
      for (int j = 0; j<heightMaze; j++) {
        stroke(this.colorMaze); // Color del laberinto (blanco)
        strokeWeight(3); // ancho de las lineas (no modificable)
        pushMatrix();
        translate(i*15, j*15); // mueve la coordenada en 15 pixeles en el eje X e Y
        celdas[i][j].display();
        popMatrix(); // desace el translate
      }
    }
    /* Lineas de relleno del laberinto - Lineas de abajo e izquierda del margen */
    stroke(this.colorMaze); // Color del laberinto (blanco)
    strokeWeight(3); // ancho de las lineas (no modificable / tiene que ser el mismo que el de arriba)
    line(0, 0, 0, 15*this.heightMaze); // Linea de relleno de abajo
    line(0, 15*this.heightMaze, 15*this.widthMaze, 15*this.heightMaze); // Linea de relleno de la izquierda
    line(15*this.widthMaze, 15*this.heightMaze, 15*this.widthMaze, 0); // Linea de relleno de la derecha
    line(15*this.widthMaze, 0, 0, 0); // Linea de relleno de arriba
  }

  // ------- Zona de metodos ------- //

  /** Cambia el valor de widthMaze */
  public void setWidthMaze(int widthMaze) {
    this.widthMaze = widthMaze; // Establece el valor de widthMaze
  }
  /** Retorna el valor de widthMaze */
  public int getWidthMaze() {
    return this.widthMaze;
  }
  /** Cambia el valor de heightMaze */
  public void setHeightMaze(int heightMaze) {
    this.heightMaze = heightMaze; // Establece el valor de heightMaze
  }
  /** Retorna el valor de HeightMaze */
  public int getHeightMaze() {
    return this.heightMaze;
  }
  /** Cambia el valor de colorMaze */
  public void setColorMaze(color colorMaze) {
    this.colorMaze = colorMaze; // Establece el valor de colorMaze
  }
  /** Retorna el valor de colorMaze */
  public color getColorMaze() {
    return this.colorMaze;
  }
}
