/** Clase usada para las celdas del laberinto */
class Cell {

  // ---------- Zona de atributos ---------- //

  /** Representa los muros de arriba de la celda */
  private boolean upWall;
  /** Representa los muro de la derecha de la celda */
  private boolean rightWall;
  /** Representa si el muro ya fue visitado */
  private boolean visited;
  /** Representa las bolas que se dibujan en el laberinto */
  private boolean ball;
  /** Representa el color de las bolas */
  private color colorBall;
  /** Representa la posicion en X de las bolas */
  private int posXBall;
  /** Representa la posicion en Y de las bolas */
  private int posYBall;
  /** Representa el radio de las bolas en el laberinto */
  private int radiusBall;
  /** Representa el color de las celdas del laberinto */
  private color colorCell;

  // ---------- Zona de constructores ---------- //

  /** Constructor */
  public Cell() {
    this.upWall = true;
    this.rightWall = true;
    this.visited = false;
    this.ball = true;
    this.colorBall = (#008F46); // (verde oscuro)
    this.posXBall = 8;
    this.posYBall = 8;
    this.radiusBall = 3;
    this.colorCell = (#AFADAD); // (gris)
  }

  // ---------- Zona de operaciones ---------- //

  /** Dibuja celdas */
  public void display() {
    stroke(colorCell); // Aplica color a las celdas
    if (upWall) {
      line(0, 0, 15, 0); // dibuja lineas (punto inicial y ancho de las celdas de arriba de 15 pixeles | cada celda mide 15 pixeles)
    }
    if (rightWall) {
      line(15, 0, 15, 15); // dibuja lineas
    }
    if (ball) {
      noStroke(); // Saca los bordes a las elipses
      fill(this.colorBall); // Da color a las elipses (verde oscuro)
      ellipse(this.posXBall, this.posYBall, this.radiusBall, this.radiusBall); // Dibuja una elipse
    }
  }

  // ---------- Zona de metodos ---------- //

  /** Muros superiores */
  /** Cambia el valor de los muros superiores */
  public void setUpWall(boolean upWall) {
    this.upWall = upWall; // Establece el valor de los muros superiores
  }
  /** Retorna el valor de los muros superiores */
  public boolean getUpWall() {
    return this.upWall;
  }
  /** Muros derechos */
  /** Cambia el valor de los muros derechos */
  public void setRightWall(boolean rightWall) {
    this.rightWall = rightWall; // Establece el valor de los muros derechos
  }
  /** Retorna el valor de los muros derechos */
  public boolean getRightWall() {
    return this.rightWall;
  }
  /** Visitado */
  /** Cambia el valor de Visited */
  public void setVisited(boolean visited) {
    this.visited = visited; // Establece el valor de visited
  }
  /** Retorna el valor de visited */
  public boolean getVisited() {
    return this.visited;
  }
  /** Bolas */
  /** Cambia el valor de ball */
  public void setBall(boolean ball) {
    this.ball = ball; // Establece el valor de ball
  }
  /** Retorna el valor de ball */
  public boolean getBall() {
    return this.ball;
  }
  /** Color de las bolas */
  /** Cambia el valor de colorBall */
  public void setColorBall(color colorBall) {
    this.colorBall = colorBall; // Establece el valor de colorBall
  }
  /** Retorna el valor de colorBall */
  public color getColorBall() {
    return this.colorBall;
  }
  /** Cambia el valor de la posicion en X de Ball */
  public void setPosXBall(int posXBall) {
    this.posXBall = posXBall; // Establece el valor de posXBall
  }
  /** Retorna el valor de la posicion X de Ball */
  public int getPosXBall() {
    return this.posXBall;
  }
  /** Cambia el valor de la posicion en Y de Ball */
  public void setPosYBall(int posYBall) {
    this.posYBall = posYBall; // Establece el valor de posYBall
  }
  /** Retorna el valor de la posicion en Y de Ball */
  public int getPosYBall() {
    return this.posYBall;
  }
  /** Cambia el valor del radio de Ball */
  public void setRadiusBall(int radiusBall) {
    this.radiusBall = radiusBall; // Establece el valor de radiusBall
  }
  /** Retorna el valor del radio de Ball */
  public int getRadiusBall() {
    return this.radiusBall;
  }
  /** Cambia el valor del color de las celdas */
  public void setColorCell(color colorCell) {
    this.colorCell=colorCell; // Establece el valor de colorCell
  }
  /** Retorna el valor del color de las celdas */
  public color getColorCell() {
    return this.colorCell;
  }
}
