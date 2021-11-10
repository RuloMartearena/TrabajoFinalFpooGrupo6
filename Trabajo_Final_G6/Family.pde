/** Crea una clase de nombre Family que hereda de la clase GameObject */
class Family extends GameObject {

  // ------------------ Zona de atributos ----------------- //


  // ------------------ Zona de constructores ----------------- //

  /** Constructor en blanco */
  public Family(int positionX, int positionY, int radius) {
    this.positionX = positionX;
    this.positionY = positionY;
    this.colorObject = #7B236D;
    this.radius = radius;
  }

  // ------------------ Zona de operaciones ----------------- //

  /** Permite dibujar un objeto de tipo Family */
  public void display() {
    noStroke(); // saca los bordes a la forma
    fill(this.colorObject); // color del family (purpura)
    circle(this.positionX*15+8, this.positionY*15+8, this.radius*2);
  }
  /** Detecta la colision entre objetos de tipo Famili y objetos de tipo Maincharacter */
  public void collision(MainCharacter personaje) {
  }

  // ------------------ Zona de metodos ----------------- //
}
