/* Clase que representa la base para los sprites */
class FrameObject {

  // ------------------ Zona de atributos ----------------- //

  /* Representa la pisicion de los objetos */
  protected PVector position;
  /* Representa la posicion en X en el lienzo del sprite */
  protected Integer positionX;
  /* Representa la posicion en Y en el lienzo del sprite */
  protected Integer positionY;
  /* Representa la posicion en X del frame */
  protected int positionFrameX;
  /* Representa la posicion en Y del frame */
  protected int positionFrameY;
  /* Representa el ancho del sprite */
  protected int widthFrame;
  /* Representa el alto del sprite */
  protected int heightFrame;
  /* Representa la imagen que será el sprite */
  protected PImage sprites;

  // ------------------ Zona de constructores ----------------- //

  /* Constructor en blanco */
  public FrameObject() {
  }

  // ------------------ Zona de operaciones ----------------- //

  /* Dibuja el sprite */
  public void display() {
    imageMode(CENTER);
    image(this.sprites, this.positionX, this.positionY, this.widthFrame, this.heightFrame);
  }

  // ------------------ Zona de metodos ----------------- //

  // Posicion 
  /* Cambia el valor del atributo posicion */
  public void setPosition (PVector position) {
    this.position = position; // Establece el valor del atributo
  }
  /* Retorna el valor del atributo posicion */
  public PVector getPosition() {
    return this.position;
  }
  // Posicion en X
  /* Cambia el valor del atributo posicion */
  public void setPositionX (int positionX) {
    this.positionX = positionX; // Establece el valor del atributo
  }
  /* Retorna el valor del atributo posicion */
  public Integer getPositionX() {
    return this.positionX;
  }
  // Posicion en Y
  /* Cambia el valor del atributo posicion */
  public void setPositionY (int positionY) {
    this.positionY = positionY; // Establece el valor del atributo
  }
  /* Retorna el valor del atributo posicion */
  public Integer getPositionY() {
    return this.positionY;
  }
  // Posicion del frame en X
  /* Cambia el valor del atributo posicion */
  public void setPositionFrameX(int positionFrameX) {
    this.positionFrameX = positionFrameX; // Establece el valor del atributo
  }
  /* Retorna el valor del atributo posicion */
  public int getPositionFrameX() {
    return this.positionFrameX;
  }
  // Posicion del frame en Y
  /* Cambia el valor del atributo posicion */
  public void setPositionFrameY(int positionFrameY) {
    this.positionFrameY = positionFrameY; // Establece el valor del atributo
  }
  /* Retorna el valor del atributo posicion */
  public int getPositionFrameY() {
    return this.positionFrameY;
  }
  // Ancho del frame
  /* Cambia el valor del atributo ancho frame */
  public void setWidthFrame(int widthFrame) {
    this.widthFrame = widthFrame; // Establece el valor del atributo
  }
  /* Retorna el valor del atributo ancho frame */
  public int getWidthFrame() {
    return this.widthFrame;
  }
  // Alto del frame
  /* Cambia el valor del atributo alto frame */
  public void setHeightFrame(int heightFrame) {
    this.heightFrame = heightFrame; // Establece el valor del atributo
  }
  /* Retorna el valor del atributo alto frame */
  public int getHeightFrame() {
    return this.heightFrame;
  }
  // Sprites
  /* Cambia el valor del atributo sprites */
  public void setSprites(PImage sprites) { 
    this.sprites = sprites; // Establece el valor del atributo
  }
  /* Retorna el valor del atributo sprites */
  public PImage getSprites() {
    return this.sprites;
  }
}
