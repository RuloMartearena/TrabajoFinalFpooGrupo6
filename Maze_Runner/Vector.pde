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

  /* Posicion en X */
  public void setPosX(int posX) {
    this.posX = posX;
  }
  public int getPosX() {
    return this.posX;
  }
  /* Posicion en Y */
  public void setPosY(int posY) {
    this.posY = posY;
  }
  public int getPosY() {
    return this.posY;
  }
}
