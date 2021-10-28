/** Crea una clase de nombre Enemy */
class Enemy extends GameObject {

  // ------------------ Zona de Atributos ------------------- //

  /** Representa la velocidad de Enemy */
  private float velocity;
  /** Representa la relación de la composicion con la clase EnemyList */
  private EnemyList[] enemigo;
  // ------------------ Zona de Constructores ------------------- //

  /** Constructor parametrizado */
  public Enemy(float velocity, PVector position, color colorObject, int radius) {
    this.velocity = velocity;
    this.position = position;
    this.colorObject = colorObject;
    this.radius = radius;
    enemigo = new EnemyList[8];
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
