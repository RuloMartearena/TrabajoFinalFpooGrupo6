/** Crea una clase de nombre Family que hereda de la clase GameObject */
class Family extends GameObject {

  // ------------------ Zona de atributos ----------------- //


  // ------------------ Zona de constructores ----------------- //

  /** Constructor en blanco */
  public Family(PVector position, int radius) {
    this.position = position;
    this.colorObject = #7B236D;
    this.radius = radius;
  }

  // ------------------ Zona de operaciones ----------------- //

  /** Permite dibujar un objeto de tipo Family */
  public void display() {
    noStroke(); // saca los bordes a la forma
    fill(this.colorObject); // color del family (purpura)
    circle(this.position.x*15+8, this.position.y*15+8, this.radius*2);
  }
  /** Permite que un objeto de tipo Family se mueva */
  public void move() {
  }
  /** Detecta la colision entre objetos de tipo Famili y objetos de tipo Maincharacter */
  public void collision(MainCharacter personaje) {
  }
  /** Hace que el familiar sigua al personaje */
  public void follow() {
  }

  // ------------------ Zona de metodos ----------------- //
}
