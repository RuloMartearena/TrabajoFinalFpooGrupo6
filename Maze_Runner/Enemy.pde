/** Clase que representa las ellipses que a la vez representa a los enemigos del jugador que debe rescatar */
class Enemy extends GameObject {

  // ------------------ Zona de atributos ----------------- //
  private int side;
  private float velocityX;
private float velocityY;
  // ------------------ Zona de constructores ----------------- //

  /** Constructor */
  public Enemy(int positionX, int positionY, int radius, int velocityX) {
    this.positionX = positionX;
    this.positionY = positionY;
    this.colorObject = color(255,255,0);
    this.side = side;
    this.radius=radius;
    this.velocityX=velocityX;
    this.velocityY=velocityY;
    
    
  }

  // ------------------ Zona de operaciones ----------------- //

  /** Dibuja un objeto de tipo Enemy */
  public void display() {
    noStroke(); // saca los bordes a la forma
    fill(this.colorObject);// color 

    square(this.positionX*15+8, this.positionY*15+8, this.radius*2);
  }



  /** Detecta la colision entre objetos de tipo Enemy y objetos de tipo Maincharacter */
  public void colision(MainCharacter personaje) {
    boolean isColliding = false; // Establece una variable booleana para detectar si existe colision
    for (int i=0; i<enemy.length; i++) {
      if (enemy[i].getPositionX() == personaje.getPositionX() && enemy[i].getPositionY() == personaje.getPositionY()) {
        enemy[i].setPositionX(72-i);
        enemy[i].setPositionY(-1);
        isColliding = true;
      }
    }
    if (isColliding) {
      character.setColorObject(0);
      character.setVelocity(0);
      
    }
  }
  
 /* public void move(){
   if 
   }
  }*/
  
  
  
  
  
  // ------------------ Zona de metodos ------------------ //

 


}
