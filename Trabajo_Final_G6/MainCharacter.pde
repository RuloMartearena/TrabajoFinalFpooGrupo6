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
    noStroke(); // saca los bordes a la forma
    fill(255); // color del personaje (blanco)
    ellipse(this.position.x, this.position.y, this.radius*2, this.radius*2); // dibuja al personaje principal
  }

  /** Mueve el personaje */
  public void move() {
    display();
    if (keyPressed) {
      if (key=='w' || key=='W') {
        this.position.y = this.position.y -5;
      }
      if (key=='s' || key=='S') {
        this.position.y = this.position.y +5;
      }
      if (key=='a' || key=='A') {
        this.position.x = this.position.x -5;
      }
      if (key=='d' || key=='D') {
        this.position.x = this.position.x +5;
      }
    }
    if (this.position.x <= 0) {
      this.position.x = 0 + this.radius;
    }
    if (this.position.x >= width) {
      this.position.x = width - this.radius;
    }
    if (this.position.y <= 0) {
      this.position.y = 0 + this.radius;
    }
    if (this.position.y >= height) {
      this.position.y = height - this.radius;
    }
  }

  /** Permite detectar la colision entre un objeto de tipo MainCharacter y un objeto de tipo Labyrinth */
  public void collision(Labyrinth laberinto) {
  }

  /** Detecta cuando el personaje rescata a un familiar */
  public void rescue() {
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
