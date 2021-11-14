/* Clase que representa las ellipses que a la vez representa a los familiares del jugador que debe rescatar */
class Family extends GameObject {

  // ------------------ Zona de atributos ----------------- //

  /* Representa los puntos que se obtienen al colisionar con un familiar */
  private int familyPoints;

  // ------------------ Zona de constructores ----------------- //

  /* Constructor parametrizado y por defecto */
  public Family(int positionX, int positionY, int radius) {
    this.positionX = positionX;
    this.positionY = positionY;
    this.colorObject = 255; // (blanco) //#7B236D; //morado
    this.radius = radius;
    this.familyPoints = 0;
  }

  // ------------------ Zona de operaciones ----------------- //

  /* Dibuja un objeto de tipo Family */
  public void display() {
    noStroke(); // saca los bordes a la forma
    fill(this.colorObject); // color del family (purpura)
    circle(this.positionX*15+8, this.positionY*15+8, this.radius*2);
  }

  /* Muestra los puntos de los familiares */
  public void familyPoints() {
    fill(#AFADAD); // Color del texto
    text("Familiares rescatados:", 850, -10);
  }

  /* Detecta la colision entre objetos de tipo Famili y objetos de tipo Maincharacter */
  public void colision(MainCharacter personaje) {
    boolean isColliding = false; // Establece una variable booleana para detectar si existe colision
    if (family[0].getPositionX() == personaje.getPositionX() && family[0].getPositionY() == personaje.getPositionY()) {
      family[0].setPositionX(72);
      family[0].setPositionY(-1);
      isColliding = true;
    }
    if (family[1].getPositionX() == personaje.getPositionX() && family[1].getPositionY() == personaje.getPositionY()) {
      family[1].setPositionX(71);
      family[1].setPositionY(-1);
      isColliding = true;
    }
    if (family[2].getPositionX() == personaje.getPositionX() && family[2].getPositionY() == personaje.getPositionY()) {
      family[2].setPositionX(70);
      family[2].setPositionY(-1);
      isColliding = true;
    }
    if (isColliding) {
      familyPoints++;
    }
  }

  // ------------------ Zona de metodos ----------------- //

  // Puntos de familiares
  public void setFamilyPoints(int familyPoints) {
    this.familyPoints = familyPoints;
  }
  public int getFamilyPoints() {
    return this.familyPoints;
  }
}
