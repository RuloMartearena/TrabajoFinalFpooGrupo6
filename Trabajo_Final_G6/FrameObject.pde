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
  /** Representa el ancho del sprite */
  protected int widthFrame;
  /** Representa el alto del sprite */
  protected int heightFrame;
  /** Representa la imagen que será el sprite */
  protected PImage sprites;

  // ------------------ Zona de constructores ----------------- //

  /** Constructor en blanco */
  public FrameObject() {
  }

  // ------------------ Zona de operaciones ----------------- //

  /** Permite que se dibuje el sprite */
  public void display() {
    imageMode(CENTER);
    image(this.sprites, this.positionX, this.positionY, this.widthFrame, this.heightFrame);
  }

  // ------------------ Zona de metodos ----------------- //

  /** Cambia el valor del atributo posicion */
  public void setPosition (PVector position) {
    this.position = position; // Establece el valor del atributo
  }
  /** Retorna el valor del atributo posicion */
  public PVector getPosition() {
    return this.position;
  }

  /** Cambia el valor del atributo posicion */
  public void setPositionX (int positionX) {
    this.positionX = positionX; // Establece el valor del atributo
  }
  /** Retorna el valor del atributo posicion */
  public Integer getPositionX() {
    return this.positionX;
  }
  /** Cambia el valor del atributo posicion */
  public void setPositionY (int positionY) {
    this.positionY = positionY; // Establece el valor del atributo
  }
  /** Retorna el valor del atributo posicion */
  public Integer getPositionY() {
    return this.positionY;
  }

  /** Cambia el valor del atributo posicion */
  public void setPositionFrameX(int positionFrameX) {
    this.positionFrameX = positionFrameX; // Establece el valor del atributo
  }
  /** Retorna el valor del atributo posicion */
  public int getPositionFrameX() {
    return this.positionFrameX;
  }
  /** Cambia el valor del atributo posicion */
  public void setPositionFrameY(int positionFrameY) {
    this.positionFrameY = positionFrameY; // Establece el valor del atributo
  }
  /** Retorna el valor del atributo posicion */
  public int getPositionFrameY() {
    return this.positionFrameY;
  }

  /** Cambia el valor del atributo ancho frame */
  public void setWidthFrame(int widthFrame) {
    this.widthFrame = widthFrame; // Establece el valor del atributo
  }
  /** Retorna el valor del atributo ancho frame */
  public int getWidthFrame() {
    return this.widthFrame;
  }

  /** Cambia el valor del atributo alto frame */
  public void setHeightFrame(int heightFrame) {
    this.heightFrame = heightFrame; // Establece el valor del atributo
  }
  /** Retorna el valor del atributo alto frame */
  public int getHeightFrame() {
    return this.heightFrame;
  }

  /** Cambia el valor del atributo sprites */
  public void setSprites(PImage sprites) { 
    this.sprites = sprites; // Establece el valor del atributo
  }
  /** Retorna el valor del atributo sprites */
  public PImage getSprites() {
    return this.sprites;
  }
}
