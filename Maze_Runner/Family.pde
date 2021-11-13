/** Crea una clase de nombre Family que hereda de la clase GameObject */
class Family extends GameObject {

  // ------------------ Zona de atributos ----------------- //


  // ------------------ Zona de constructores ----------------- //

  /** Constructor en blanco */
  public Family(int positionX, int positionY, int radius) {
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
      if(familylist.kin[0].getPositionX() == personaje.getPositionX() && familylist.kin[0].getPositionY() == personaje.getPositionY()){
        familylist.kin[0].setPositionX(72);
        familylist.kin[0].setPositionY(-1);
      }
      if(familylist.kin[1].getPositionX() == personaje.getPositionX() && familylist.kin[1].getPositionY() == personaje.getPositionY()){
        familylist.kin[1].setPositionX(71);
        familylist.kin[1].setPositionY(-1);
      }
      if(familylist.kin[2].getPositionX() == personaje.getPositionX() && familylist.kin[2].getPositionY() == personaje.getPositionY()){
        familylist.kin[2].setPositionX(70);
        familylist.kin[2].setPositionY(-1); 
      }
  }
  // ------------------ Zona de metodos ----------------- //
}
