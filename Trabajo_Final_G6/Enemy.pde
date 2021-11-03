/** Crea una clase de nombre Enemy */
class Enemy extends FrameObject {

  // ------------------ Zona de Atributos ------------------- //

  /** Representa la velocidad de Enemy */
  private float velocity;
  /** Representa la relación de la composicion con la clase EnemyList */

  // ------------------ Zona de Constructores ------------------- //

  /** Constructor parametrizado */
  public Enemy(float velocity, PVector position, color colorObject, int radius) {
    this.velocity = velocity;
    this.position = position;
    this.colorObject = colorObject;
    this.radius = radius;
  }

  // ------------------ Zona de Operaciones ------------------- //

  /** Permite mostrar al enemigo en el lienzo */
  public void display() {
  }
  /** Permite el movimiento del enemigo */
  public void move() {
  }
  /** Permite la colision entre el enemigo y el personaje */
  public void collision(MainCharacter personaje) {
  }
  /** Realiza la animacion de atacar cuando detecta la colision */
  public void attack() {
  }

  // ------------------ Zona de Metodos ------------------- //

  /** cambia el valor del atributo velocity */
  public void setVelocity(float velocity) {
    this.velocity = velocity; // establece el valor del atributo velocity
  }
  /** retorna el valor del atributo velocity */
  public float getVelocity() {
    return this.velocity;
  }
}
