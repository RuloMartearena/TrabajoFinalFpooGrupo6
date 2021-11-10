/* Crea un laberinto */
class Labyrinth {

  // ------- Zona de atributos ------- //

  /* Representa las celdas a modo de array, tambien representa la relacion de asociacion con la clase Celda */
  private Cell[][] celdas;
  /* Representa el ancho del laberinto */
  private int widthMaze;
  /* Representa el alto del laberinto */
  private int heightMaze;
  /* Representa el color del laberinto */
  private color colorMaze;

  // ------- Zona de constructores ------- //

  /* Constructor parametrizado y por defecto */
  public Labyrinth(int widthMaze, int heightMaze) {
    this.widthMaze = widthMaze;
    this.heightMaze = heightMaze;
    this.colorMaze = 255;
    /* Array de celdas */
    celdas = new Cell[widthMaze][heightMaze];
    resetLabyrinth();
    for (int i = 0; i<widthMaze; i++) {
      for (int j = 0; j<heightMaze; j++) {
        celdas[i][j] = new Cell();
      }
    }
  }

  // ------- Zona de operaciones ------- //

  /* Dibuja un nuevo laberinto */
  public void resetLabyrinth() {
    for (int i = 0; i<widthMaze; i++) {
      for (int j = 0; j<heightMaze; j++) {
        celdas[i][j] = new Cell();
      }
    }
  }

  /* Genera el laberinto con un AutoWalker*/
  boolean moving(int x, int y, int prevX, int prevY) { // Los parametros son la posicion inicial y la posicion anterior
    if (x<0 || x>=this.widthMaze || y<0 || y>=this.heightMaze || celdas[x][y].visited==true) { // o si la celda ya fue visitada
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

  /* Dibuja el laberinto */
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
    strokeWeight(3); // ancho de las lineas (no modificable)
    line(0, 0, 0, 15*this.heightMaze);
    line(0, 15*this.heightMaze, 15*this.widthMaze, 15*this.heightMaze);
  }

  // ------- Zona de metodos ------- //

  public void setWidthMaze(int widthMaze) {
    this.widthMaze = widthMaze;
  }
  public int getWidthMaze() {
    return this.widthMaze;
  }
  public void setHeightMaze(int heightMaze) {
    this.heightMaze = heightMaze;
  }
  public int getHeightMaze() {
    return this.heightMaze;
  }
}
