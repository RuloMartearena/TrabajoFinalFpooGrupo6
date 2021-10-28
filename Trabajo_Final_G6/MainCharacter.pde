/** Crea una clase llamada MainCharacter que hereda de la clase GameObject */
class MainCharacter extends GameObject {

  // ---------------- Zona de atributos ------------------- //

  /** Representa si el objeto esta "vivo" */
  private boolean life;

  // ----------------- Zona de constructores ---------------- //

  /** Constructor parametrizado */
  public MainCharacter(PVector position, color colorObject, int radius, boolean life) {
    this.position = position;
    this.colorObject = colorObject;
    this.radius = radius;
    this.life = life;
  }

  // -------------------- Zona de operaciones -------------- //

  /** Dibuja un personaje */
  public void display() {
  }
  /** Mueve el personaje */
  public void move() {
  }
  /** Permite detectar la colision entre un objeto de tipo MainCharacter y un objeto de tipo Labyrinth */
  public void collision(Labyrinth laberinto) {
  }

  // -------------------- Zona de metodos --------------- //

  /** Cambia el valor del atributo life */
  public void setLife(boolean life) {
    this.life = life; // Establece el valor del atributo life
  }
  /** Retorna el valor del atributo life */
  public boolean getLife() {
    return this.life;
  }
}
