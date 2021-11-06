class FrameObject extends GameObject {

  // ------------------ Zona de atributos ----------------- //

  /** Representa la posicion del sprite */
  protected PVector positionFrame;
  /** Representa el ancho del sprite */
  protected int widthFrame;
  /** Representa el alto del sprite */
  protected int heightFrame;
  /** Representa la posicion en X del sprite*/
  protected int positionFrameX;
  /** Representa la posicion en Y del sprite*/
  protected int positionFrameY;
  /** Representa la imagen que será el sprite */
  protected PImage sprites;
  /** Representa la cantidad de veces que se muestran los frames */
  protected int cantFrames; 

  // ------------------ Zona de constructores ----------------- //

  /** Constructor en blanco */
  public FrameObject() {
  }

  // ------------------ Zona de operaciones ----------------- //

  /** Permite que se dibuje el sprite */
  public void display() {
    imageMode(CENTER);
    image(this.sprites, this.position.x, this.position.y, this.widthFrame, this.heightFrame);
  }
  /**¨Permite que el sprite se mueva */
  public void move() {
  }

  // ------------------ Zona de metodos ----------------- //

  /** Cambia el valor del atributo posicion */
  public void setPositionFrame(PVector positionFrame) {
    this.positionFrame = positionFrame; // Establece el valor del atributo
  }
  /** Retorna el valor del atributo posicion */
  public PVector getPositionFrame() {
    return this.positionFrame;
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
