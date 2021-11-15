/* Representa a los enemigos dentro del juego */
class Enemy extends FrameObject {

  //-------------------------Zona de atributos---------------//

  /* Representa la velocidad de los enemigos */
  private int velocity;
  /* Representa el radio de los enemigos */
  private int radius;

private int side;

 private int widthEnemy;
 
 private int heightEnemy;
  
  
  

  //--------------------Zona de constructores---------------//

  /* Constructor parametrizado y por defecto */
  public Enemy(int positionX, int positionY, int velocity, int radius, int widthEnemy, int heigthEnemy){
    this.sprites = requestImage("resources/images/SlimeEnemy.png");
   
    this.widthFrame = 200;
    this.heightFrame = 200;
    this.positionFrameX = 0;
    this.positionFrameY = 0;
    this.velocity = velocity;
    this.radius = radius;
    this.positionX = positionX;
    this.positionY = positionY;
    this.side=side;
    this.widthEnemy= widthEnemy;
    this.heightEnemy= heightEnemy;

    
  }

  //-------------------Zona de Operaciones--------------//

  /* Dibuja los enemigos */
  public void display() {
    PImage frame = sprites.get(this.positionFrameX, this.positionFrameY, this.widthFrame, this.heightFrame);
    frame.resize(50, 50); // Redimenciona los enemigos
    //imageMode(CENTER);
    image(frame, this.positionX, this.positionY);
    if (positionFrameX<(sprites.width-widthFrame)) { 
      positionFrameX+= this.widthFrame;
    } else {
      positionFrameX= 0;
    }
  }

  /* Permite que el enemigo se mueva */
  public void move() {
  positionX+=velocity;// Funcion para añadir la velocidad a la posicion
   positionX = positionX + velocity;
    if (positionX > (width-120) || positionX < 15) {
      velocity = velocity*(-1);
    }
  }
  
  
  
 public void colision(MainCharacter character) {
    boolean isColliding= true; // Establece una variable booleana para detectar si existe colision
    for(int i=0;i<enemies.length;i++){
   if ((enemies[i].getPositionX()+(enemies[i].getWidthEnemy()))> (character.getPositionX()-character.getRadius())){
      isColliding = false;
    }
 /*if (enemies[i].getPositionX() > (character.getPositionX()+character.getRadius())){
      isColliding = false;
    }
  
    
  /*  if ((enemies[i].getPositionY()+ enemies[i].getHeightFrame())>= (character.getPositionY()-character.getRadius())){
      isColliding = true;
    }
    
    
    if (enemies[i].getPositionY() < (character.getPositionY()+character.getRadius())){
      isColliding = true;
    */
    
    
    
    //for(int i=0;i<enemies.length;i++){
     // if //(enemies[i].getPositionX() == character.getPositionX() && enemies[i].getPositionY() == character.getPositionY()) {
      // enemies[i].setPositionX(100-i);
      // enemies[i].setPositionY(-1);
      //(enemies[i].getRadius()+character.getRadius()<30){
     
    
    
     if (isColliding) {
      velocity=0;
      
      character.setColorObject(0);
    }
  
  println(isColliding);

     }
     } 

  //------------zona de métodos--------------((

  // Velocidad
  public void setVelocity(int velocity) {
    this.velocity = velocity;
  }
  public int getVelocity() {
    return this.velocity;
  }
  // Radio
  public void setRadius(int radius) {
    this.radius = radius;
  }
  public int getRadius() {
    return this.radius;
  }
   public void setWidthEnemy(int widthEnemy) {
    this.widthEnemy = widthEnemy;
  }
  public int getWidthEnemy() {
    return this.widthEnemy;
  }
  public void setHeightEnemy(int widthEnemy) {
    this.heightEnemy = heightEnemy;
  }
  public int getHeightEnemy() {
    return this.heightEnemy;
  }
  
  
  
}
