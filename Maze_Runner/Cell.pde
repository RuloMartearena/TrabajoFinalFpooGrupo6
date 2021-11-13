/* Clase usada para las celdas del laberinto */
class Cell {

  // ------- Zona de atributos ------- //

  /* Representa los muros de arriba de la celda */
  private boolean upWall;
  /* Representa los muro de la derecha de la celda */
  private boolean rightWall;
  /* Representa si el muro ya fue visitado */
  private boolean visited;
  /* Representa las bolas que se dibujan en el laberinto */
  private boolean ball;
  /* Representa el color de las celdas y las bolas */
  private color colorBall;
  /* Representa la posicion en X de las bolas */
  private int posXBall;
  /* Representa la posicion en Y de las bolas */
  private int posYBall;
  /* Representa el radio de las bolas en el laberinto */
  private int radiusBall;
  /* Representa el color de las celdas del laberinto */
  private color colorCell;

  // ------- Zona de constructores ------- //

  /* Constructor por defecto */
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

  // ------- Zona de operaciones ------- //

  /* Dibuja celdas */
  public void display() {
    stroke(colorCell); // Aplica color a las celdas
    if (upWall) {
      line(0, 0, 15, 0); // dibuja lineas (punto inicial y ancho de las celdas de arriba de 15 pixeles | cada celda mide 15 pixeles)
    }
    if (rightWall) {
      line(15, 0, 15, 15); // dibuja lineas
    }
    if (ball) {
      noStroke(); // Saca los bordes a las ellipses
      fill(this.colorBall); // Da color a las ellipses (verde oscuro)
      ellipse(this.posXBall, this.posYBall, this.radiusBall, this.radiusBall); // Dibuja una ellipse
    }
  }

  // ------- Zona de metodos ------- //

  // Muros superiores
  public void setUpWall(boolean upWall) {
    this.upWall = upWall;
  }
  public boolean getUpWall() {
    return this.upWall;
  }
  // Muros derechos
  public void setRightWall(boolean rightWall) {
    this.rightWall = rightWall;
  }
  public boolean getRightWall() {
    return this.rightWall;
  }
  // Visitado?
  public void setVisited(boolean visited) {
    this.visited = visited;
  }
  public boolean getVisited() {
    return this.visited;
  }
  // Bolas
  public void setBall(boolean ball) {
    this.ball = ball;
  }
  public boolean getBall() {
    return this.ball;
  }
  // Color de las bolas
  public void setColorBall(color colorBall) {
    this.colorBall = colorBall;
  }
  public color getColorBall() {
    return this.colorBall;
  }
  // Posicion en X de las bolas
  public void setPosXBall(int posXBall) {
    this.posXBall = posXBall;
  }
  public int getPosXBall() {
    return this.posXBall;
  }
  // Posicion en Y de las bolas
  public void setPosYBall(int posYBall) {
    this.posYBall = posYBall;
  }
  public int getPosYBall() {
    return this.posYBall;
  }
  // Radio de las bolas
  public void setRadiusBall(int radiusBall) {
    this.radiusBall = radiusBall;
  }
  public int getRadiusBall() {
    return this.radiusBall;
  }
  // Color de las celdas
  public void setColorCell(color colorCell) {
    this.colorCell=colorCell;
  }
  public color getColorCell() {
    return this.colorCell;
  }
}
