/** Crea una clase abstracta de nombre GameObject */
abstract class GameObject {

  // ---------------- Zona de atributos ------------------- //

  /** Representa la posicion en X de los objetos */
  protected Integer positionX;
  /** Representa la posicion en Y de los objetos */
  protected Integer positionY;
  /** Representa el color de los objetos */
  protected color colorObject;
  /** Representa el radio de los objetos */
  protected Integer radius;

  // ----------------- Zona de constructores ---------------- //

  /** Constructor en blanco */
  public GameObject() {
  }

  // ---------------- Zona de operaciones -------------------- //

  /** Metodo abstracto display */
  abstract public void display();

  // -------------- Zona de metodos ------------------- //

  /** Cambia el valor del atributo posicion */
  public void setPositionX (int positionX) {
    this.positionX = positionX; // Establece el valor del atributo
  }
  /** Retorna el valor del atributo posicion */
  public Integer getPositionX() {
    return this.positionX;
  }
  /** Cambia el valor del atributo posicion */
  public void setPositionY (int positionY) {
    this.positionY = positionY; // Establece el valor del atributo
  }
  /** Retorna el valor del atributo posicion */
  public Integer getPositionY() {
    return this.positionY;
  }
  /** Cambia el valor del atributo colorObject */
  public void setColorObject(color colorObject) {
    this.colorObject = colorObject; // Establece el valor del atributo
  }
  /** Retorna el valor del atributo colorObject */
  public color getColorObject() {
    return this.colorObject;
  }
  /** Cambia el valor del atributo radio */
  public void setRadius(int radius) {
    this.radius = radius; // Establece el valor del atributo
  }
  /** Retorna el valor del atributo radio */
  public int getRadius() {
    return this.radius;
  }
}
