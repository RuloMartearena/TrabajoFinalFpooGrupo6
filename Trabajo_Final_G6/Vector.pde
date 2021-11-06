/* Esta clase permite que el laberinto genere caminos */
class Vector {

  // ------- Zona de atributos ------- //

  /* Representa la posicion en X */
  int posX;
  /* Representa la posicion en Y */
  int posY;

  // ------- Zona de constructores ------- //

  /* Constructor por defecto */
  public Vector(int posX, int posY) {
    this.posX = posX;
    this.posY = posY;
  }

  // ------- Zona de operaciones ------- //

  // ------- Zona de metodos ------- //

  public void setPosX(int posX) {
    this.posX = posX;
  }
  public int getPosX() {
    return this.posX;
  }
  public void setPosY(int posY) {
    this.posY = posY;
  }
  public int getPosY() {
    return this.posY;
  }
}
