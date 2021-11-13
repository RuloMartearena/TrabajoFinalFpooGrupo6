/** Crea una clase de nombre Enemy */
class Enemy extends FrameObject {

  //-------------------------Zona de atributos---------------//

  /**Representa la velocidad de Cat */
  private PVector velocity;


  private boolean direction;

  //--------------------Zona de constructores---------------//

  public Enemy(PVector position) {
    this.sprites = requestImage("resources/images/SlimeEnemy.png");
    this.position = position;
    this.widthFrame = 200;
    this.heightFrame = 200;
    this.positionFrameX = 0;
    this.positionFrameY = 0;
    this.velocity = new PVector (0, 1);
    this.direction = true;
    this.direction=position.x+1>position.x;
  }

  //-------------------Zona de Operaciones--------------//

  public void display() {
    //frameRate(5);
    //delay(20);
    PImage frame = sprites.get(this.positionFrameX, this.positionFrameY, this.widthFrame, this.heightFrame);
    frame.resize(50, 50);
    imageMode(CENTER);
    image(frame, this.position.x, this.position.y);
   
    
   if (positionFrameX<(sprites.width-widthFrame)){ 
      positionFrameX+= this.widthFrame;
    } else {
      positionFrameX= 0;
      direction=false;
    }
    
    
    
    
  }

  public void move() {
    this.position.add(this.velocity);
    if ((position.y >1200)||(position.y<350)) {
      velocity.y = velocity.y+1;
      positionFrameY = 0;
    } else {
      positionFrameY = 600;
      
      velocity.y = velocity.y-(2.6);
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
