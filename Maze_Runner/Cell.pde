/* Clase usada para las celdas del laberinto */
class Cell {

  // ------- Zona de atributos ------- //

  /* Representa los muros de arriba de la celda */
  private boolean upWall;
  /* Representa los muro de la derecha de la celda */
  private boolean rightWall;
  /* Representa si el muro ya fue visitado */
  private boolean visited;
  /**/
  private boolean ball;

  // ------- Zona de constructores ------- //

  /* Constructor por defecto */
  public Cell() {
    this.upWall = true;
    this.rightWall = true;
    this.visited = false;
    this.ball = true;
  }

  // ------- Zona de operaciones ------- //

  /* Dibuja celdas */
  public void display() {
    if (upWall) {
      line(0, 0, 15, 0); // dibuja lineas
    }
    if (rightWall) {
      line(15, 0, 15, 15); // dibuja lineas
    }
    if (ball) {
      noStroke();
      fill(255, 233, 0);
      ellipse(8, 8, 3, 3);
    }
  }

  // ------- Zona de metodos ------- //

  public void setUpWall(boolean upWall) {
    this.upWall = upWall;
  }
  public boolean getUpWall() {
    return this.upWall;
  }
  public void setRightWall(boolean rightWall) {
    this.rightWall = rightWall;
  }
  public boolean getRightWall() {
    return this.rightWall;
  }
  public void setVisited(boolean visited) {
    this.visited = visited;
  }
  public boolean getVisited() {
    return this.visited;
  }
}
