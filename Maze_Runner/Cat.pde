/** Representa al gato que camina por el laberinto */
class Cat extends FrameObject {

  // --------------- Zona de atributos --------------- //

  /** Representa la velocidad del gato */
  private PVector velocity;

  // --------------- Zona de constructores --------------- //

  /** Constructor */
  public Cat(PVector position) {
    this.sprites = requestImage("resources/images/Cat.png");
    this.position = position;
    this.widthFrame = 160;
    this.heightFrame = 160;
    this.positionFrameX = 0;
    this.positionFrameY = 160;
    this.positionX = 0;
    this.positionY = 20;
    this.velocity = new PVector(0, 0);
  }

  // ----------------- Zona de Operaciones -------------- //

  /** Dibuja al gato */
  public void display() {
    PImage frame = sprites.get(this.positionFrameX, this.positionFrameY, this.widthFrame, this.heightFrame);
    frame.resize(50, 50);
    imageMode(CENTER);
    image(frame, this.position.x, this.position.y);
    if (positionFrameX<(sprites.width-widthFrame)) {
      positionFrameX+= this.widthFrame;
    } else {
      positionFrameX=0;
    }
  }

  /** Permite que el gato se mueva */
  public void move() {
    this.position.add(this.velocity); // Metodo add para agregar velocidad
    if (position.x<=width-80) {
      if (position.y<=-30) {
        positionFrameY=160;
        positionFrameX+= this.widthFrame;
        velocity.y=0;
        velocity.x=1;
        velocity.x = velocity.x*3;
      }
    } else {
      positionFrameY=0;
      positionFrameX+= this.widthFrame;
      velocity.x = 0;
      velocity.y=1;
      velocity.y = velocity.y*3;
    }
    if (position.y> height-90) {
      if (position.x>20) {
        positionFrameY=480;
        positionFrameX+= this.widthFrame;
        velocity.y = 0;
        velocity.x=1;
        velocity.x = velocity.x*(-3);
      }
    }
    if (position.x<-20) {
      if (position.y>-10) {
        positionFrameY=320;
        positionFrameX+= this.widthFrame;
        velocity.y = 1;
        velocity.x=0;
        velocity.y = velocity.y*(-3);
      }
    }
  }

  // ------------ Zona de métodos -------------- //

  /* Velocidad */
  public void setVelocity(PVector velocity) {
    this.velocity = velocity;
  }
  public PVector getVelocity() {
    return this.velocity;
  }
}
