/** Crea una clase abstracta de nombre GameObject */
abstract class GameObject {

  // ---------------- Zona de atributos ------------------- //

  /** Representa la posicion de los objetos */
  protected PVector position;
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

  /** Metodo abstracto mover */
  /* abstract public void move(); */

  // -------------- Zona de metodos ------------------- //

  /** Cambia el valor del atributo posicion */
  public void setPosition(PVector position) {
    this.position = position; // Establece el valor del atributo
  }
  /** Retorna el valor del atributo posicion */
  public PVector getPosition() {
    return this.position;
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
