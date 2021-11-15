/** Representa a los enemigos dentro del juego */
class Enemy extends FrameObject {

  // --------------- Zona de atributos --------------- //

  /** Representa la velocidad de los enemigos */
  private PVector velocity;
  /** Representa el radio de los enemigos */
  private float radius;

  // --------------- Zona de constructores --------------- //

  /** Constructor */
  public Enemy(PVector position, PVector velocity) {
    this.sprites = requestImage("resources/images/SlimeEnemy.png");
    this.position = position;
    this.widthFrame = 200;
    this.heightFrame = 200;
    this.positionFrameX = 0;
    this.positionFrameY = 0;
    this.velocity = velocity;
    this.radius = 25;
  }

  // --------------- Zona de Operaciones --------------- //

  /** Dibuja los enemigos */
  public void display() {
    PImage frame = sprites.get(this.positionFrameX, this.positionFrameY, this.widthFrame, this.heightFrame);
    frame.resize(50, 50); // Redimenciona los enemigos
    imageMode(CENTER);
    image(frame, this.position.x, this.position.y);
    if (positionFrameX<(sprites.width-widthFrame)) { 
      positionFrameX+= this.widthFrame;
    } else {
      positionFrameX= 0;
    }
  }

  /** Permite que el enemigo se mueva */
  public void move() {
    position.add(velocity); // Funcion para añadir la velocidad a la posicion
    if (position.x > (width-140) || position.x < 12) {
      velocity.x = velocity.x*(-1);
    }
  }

  // --------------- Zona de métodos --------------- //

  /* Velocidad */
  public void setVelocity(PVector velocity) {
    this.velocity = velocity;
  }
  public PVector getVelocity() {
    return this.velocity;
  }
  /* Radio */
  public void setRadius(float radius) {
    this.radius = radius;
  }
  public float getRadius() {
    return this.radius;
  }
}
