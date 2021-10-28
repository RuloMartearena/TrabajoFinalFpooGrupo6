/** Se crea la clase Labyrinth */
class Labyrinth {

  // -------- Zona de atributos -------- //
  /** Representa el color del laberinto */
  private color colorMaze;
  /** Representa el nivel del laberinto */
  private Integer level;
  /** Representa el nombre del nivel del laberinto */
  private String levelIndicator;

  // -------- Zona de constructores ---------- //

  /** Constructor parametrizado */
  public Labyrinth(color colorMaze, Integer level) {
    this.colorMaze = colorMaze;
    this.level = level;
    this.levelIndicator = "Level: ";
  }

  // -------- Zona de operaciones ------------ //

  /** Dibuja el laberinto */
  public void display() {
  }

  //--------Zona de métodos accesores--------//

  /** Cambia el valor del atributo colorMaze */
  public void setColorMaze (color colorMaze) {
    this.colorMaze = colorMaze; // Establece el valor del atributo
  }
  /** Retorna el valor del atributo colorMaze */
  public color getColorMaze() {
    return this.colorMaze;
  }
  /** Cambia el valor del atributo level */
  public void setLevel(Integer level) {
    this.level = level; // Establece el valor del atributo
  }
  /** Retorna el valor del atributo */
  public Integer getLevel() {
    return this.level;
  }
}
