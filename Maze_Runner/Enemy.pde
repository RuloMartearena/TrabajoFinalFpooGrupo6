/** Crea una clase de nombre Enemy */
class Enemy extends FrameObject {

  //-------------------------Zona de atributos---------------//

  /**Representa la velocidad de Cat */
  private PVector velocity;
  private float radio;


  //--------------------Zona de constructores---------------//

  public Enemy(PVector position, PVector velocity) {
    this.sprites = requestImage("resources/images/SlimeEnemy.png");
    this.position = position;
    this.widthFrame = 200;
    this.heightFrame = 200;
    this.positionFrameX = 0;
    this.positionFrameY = 0;
    this.velocity = velocity;
    this.radio=25;
  }

  //-------------------Zona de Operaciones--------------//

  public void display() {
    //frameRate(5);
    //delay(20);
    PImage frame = sprites.get(this.positionFrameX, this.positionFrameY, this.widthFrame, this.heightFrame);
    frame.resize(50, 50);
    imageMode(CENTER);
    image(frame, this.position.x, this.position.y);


    if (positionFrameX<(sprites.width-widthFrame)) { 
      positionFrameX+= this.widthFrame;
    } else {
      positionFrameX= 0;
    }
  }

  public void move() {

    position.add(velocity);
    if (position.x > (width-140) || position.x < 12) {

      velocity.x = velocity.x*(-1);
    }
  }
  //------------zona de métodos--------------((

  /**Cambia el valor del atributo velocity*/
  public void setVelocity(PVector velocity) {
    this.velocity = velocity;
  }
  /*Se retorna el valor del atributo velocity*/
  public PVector getVelocity() {
    return this.velocity;
  }
}
