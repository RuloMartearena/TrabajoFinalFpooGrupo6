/** Esta clase permite que el laberinto genere caminos */
class Vector {

  // ------- Zona de atributos ------- //

  /** Representa la posicion en X del vector */
  private int posX;
  /** Representa la posicion en Y del vector */
  private int posY;

  // ------- Zona de constructores ------- //

  /** Constructor */
  public Vector(int posX, int posY) {
    this.posX = posX;
    this.posY = posY;
  }

  // ------- Zona de operaciones ------- //

  // ------- Zona de metodos ------- //

  /** Cambia el valor de la posicion X del vector */
  public void setPosX(int posX) {
    this.posX = posX; // Establece el valor de posX
  }
  /** Retorna el valor de la posicion X del vector */
  public int getPosX() {
    return this.posX;
  }
  /** Cambia el valor de la posicion Y del vector */
  public void setPosY(int posY) {
    this.posY = posY; // Establece el valor de posY
  }
  /** Retorna el valor de la posicion Y del vector */
  public int getPosY() {
    return this.posY;
  }
}
