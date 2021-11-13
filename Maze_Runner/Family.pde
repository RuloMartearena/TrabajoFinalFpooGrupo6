/** Crea una clase de nombre Family que hereda de la clase GameObject */
class Family extends GameObject {

  // ------------------ Zona de atributos ----------------- //

  // ------------------ Zona de constructores ----------------- //

  /** Constructor en blanco */
  public Family(float positionX, float positionY, int radius) {
    this.positionX = positionX;
    this.positionY = positionY;
    this.colorObject = 255;//#7B236D; //morado
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
  public void colision(MainCharacter personaje) {
      if(family[0].getPositionX() == personaje.getPositionX() && family[0].getPositionY() == personaje.getPositionY()){
         family[0].setPositionX(72);
         family[0].setPositionY(-1);
      }
      if(family[1].getPositionX() == personaje.getPositionX() && family[1].getPositionY() == personaje.getPositionY()){
         family[1].setPositionX(71);
         family[1].setPositionY(-1);
      }
      if(family[2].getPositionX() == personaje.getPositionX() && family[2].getPositionY() == personaje.getPositionY()){
         family[2].setPositionX(70);
         family[2].setPositionY(-1); 
      }
  }
  // ------------------ Zona de metodos ----------------- //
}
