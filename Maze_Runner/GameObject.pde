/** Crea una clase abstracta de nombre GameObject */
abstract class GameObject {

  // ---------------- Zona de atributos ------------------- //

  /* Representa la posicion en x de los objetos */
  protected float positionX; 
  /* Representa la posicion en y de los objetos */
  protected float positionY;
  /* Representa el color de los objetos */
  protected color colorObject;
  /* Representa el radio de los objetos */
  protected Integer radius;

  // ----------------- Zona de constructores ---------------- //

  /** Constructor en blanco */
  public GameObject() {
  }

  // ---------------- Zona de operaciones -------------------- //

  /** Metodo abstracto display */
  abstract public void display();

  // -------------- Zona de metodos ------------------- //

  // Posicion
  /* Cambia el valor de la posicion de los objetos */
  public void setPositionX (float positionX) {
    this.positionX = positionX; // Establece el valor de los objetos
  }
  /* Retorna el valor de los objetos */
  public float getPositionX() {
    return this.positionX;
  } 
  /* Cambia el valor de la posicion de los objetos */
  public void setPositionY (float positionY) {
    this.positionY = positionY; // Establece el valor de los objetos
  }
  /* Retorna el valor de los objetos */
  public float getPositionY() {
    return this.positionY;
  } 
  // Color
  /** Cambia el valor del atributo colorObject */
  public void setColorObject(color colorObject) {
    this.colorObject = colorObject; // Establece el valor del atributo
  }
  /** Retorna el valor del atributo colorObject */
  public color getColorObject() {
    return this.colorObject;
  }
  // Radio
  /** Cambia el valor del atributo radio */
  public void setRadius(int radius) {
    this.radius = radius; // Establece el valor del atributo
  }
  /** Retorna el valor del atributo radio */
  public int getRadius() {
    return this.radius;
  }
}
