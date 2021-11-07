/** Crea una clase de nombre Enemy */
class Enemy extends FrameObject {

  // ------------------ Zona de Atributos ------------------- //

  /** Representa la velocidad de Enemy */
  private PVector velocity;

  // ------------------ Zona de Constructores ------------------- //

  public Enemy(PVector position) {
    this.sprites = requestImage("resources/images/SlimeEnemy2.png");
    this.position = position;
    this.widthFrame = 190;
    this.heightFrame = 200;
    this.positionFrameX = 0;
    this.positionFrameY = 0;
    this.positionX = 0;
    this.positionY = 0;
    this.velocity = new PVector (0, 6);
  }

  // ------------------ Zona de Operaciones ------------------- //

  /** Permite mostrar al enemigo en el lienzo */
  public void display() {
    PImage frame = sprites.get(this.positionFrameX, this.positionFrameY, this.widthFrame, this.heightFrame);
    frame.resize(40, 40);
    imageMode(CENTER);
    image(frame, this.positionX, this.positionY);

    if (this.positionFrameX < sprites.width-this.widthFrame) {
      positionFrameX+= this.widthFrame;
    } else {
      positionFrameX=width/2;
    }
  }

  /** Permite el movimiento del enemigo */
  public void move() {
    this.position.add(this.velocity);
    if (position.y > (height-190)|| position.y < 190) {
      velocity.y = velocity.y * (-1);
    }
  }

  /** Permite la colision entre el enemigo y el personaje */
  public void collision(MainCharacter personaje) {
  }

  /** Realiza la animacion de atacar cuando detecta la colision */
  public void attack() {
  }

  // ------------------ Zona de Metodos ------------------- //

  /** cambia el valor del atributo velocity */
  public void setVelocity(PVector velocity) {
    this.velocity = velocity; // establece el valor del atributo velocity
  }
  /** retorna el valor del atributo velocity */
  public PVector getVelocity() {
    return this.velocity;
  }
}
