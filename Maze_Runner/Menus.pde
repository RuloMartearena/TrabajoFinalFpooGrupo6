/** Clase menu que mostrará las distintas pantallas con mensajes en el juego */
class Menus extends FrameObject {

  // ---------------- Zona de atributos ------------------- //

  /** Representa la fuente de las letras de los mensajes */
  private PFont fuente;
  /** Representa el fondo al mostrarse el titulo del juego */
  private PImage fondo;
  /** Representa el color de la letra */
  private color fontColor;
  /** Representa el atributo gif */
  private PImage[] gif;
  /** Representa el numero de frames del Marcianito */
  private int numberOfFrames;
  /** Representa un atributo del tipo entero f */
  private int f;

  // ----------------- Zona de constructores ---------------- //

  /** Constructor */
  public Menus() {
    this.fuente = loadFont("resources/images/Verdana-BoldItalic-48.vlw");
    this.fondo = loadImage("resources/images/fondo.png");
    textFont(this.fuente);
    this.fontColor = (#902A2A);
    // Constructor parametrizado para fondo final
    this.numberOfFrames = 380;
    this.gif = new PImage[numberOfFrames];
    int i = 0;
    while (i < numberOfFrames) { 
      gif[i] = loadImage("frame_"+i+"_delay-0.02s.gif"); // carga desde la carpeta al lienzo cada frame
      i=i+1;
      this.position = new PVector (width/3, height/2);
    }
  }

  // ---------- Zona de operaciones ------------ //

  /** Muestra el nombre del juego */
  public void displayName() {
    fill(this.fontColor);
    image(fondo, 0, 0, width, height);
    textSize(90);
    text(Constants.GAME_NAME, 220, height/2);
    fill(255);
    textSize(15);
    text(Constants.INSTRUCTION, width/2-90, height-40);
  }

  /** Muestra las instrucciones */
  public void displayControls() {
    textSize(20);
    text(Constants.INSTRUCTION_ONE, width/3-38, height-370);
    text(Constants.INSTRUCTION_TWO, 350, height-315);
    textSize(15);
    text(Constants.INSTRUCTION, width/2-90, height-40);
  }

  /** Muestra el mensaje cuando ganas */
  public void displayWin() {
    textSize(50);
    text(Constants.WIN, 30, height/3); // texto que indica que se gano el juego
    textSize(15);
    text(Constants.INSTRUCTION_DEAD_OR_WIN, width/2-140, height-80);
    imageMode(CENTER); //imagen del marcianitooooo
    image(gif[f], width/2, height/2, this.widthFrame, this.heightFrame); // posicion del gif o cantidad de frames
    f = f + 1;
    if (f == numberOfFrames) f = 0;
    this.widthFrame = 128;
    this.heightFrame = 190;
  }

  /** Muestra las instrucciones a seguir cuando se pierde */
  public void displayInstruccion() {
    imageMode(CENTER);
    this.fondo = loadImage("resources/images/perdiste.png");
    image(fondo, width/2, height/2, 500, 500);
    textSize(15);
    text(Constants.INSTRUCTION_DEAD_OR_WIN, width/2-140, height-80);
    textSize(70);
    text(Constants.INSTRUCTION_DEAD, 300, 80);
  }

  // -------------------- Zona de metodos --------------- //

  /** Cambia el valor de la fuente */
  public void setFuente(PFont fuente) {
    this.fuente = fuente; // Establece el valor de la fuente
  }
   /** Retorna el valor de la fuente */
  public PFont getfuente() {
    return this.fuente;
  }
  /** Cambia el valor del fondo */
  public void setFondo(PImage fondo) {
    this.fondo = fondo; // Establece el valor del fondo
  }
  /** Retorna el valor del fondo */
  public PImage getFondo() {
    return this.fondo;
  }
  /** Cambia el valor del color de la fuente */
  public void setFontColor(color fontColor) {
    this.fontColor = fontColor; // Establece el valor del color de la fuente
  }
  /** Retorna el valor del color de la fuente */
  public color getFontColor() {
    return this.fontColor;
  }
  /** Cambia el valor de los numeros de frames del marcianito (gif de Winner) */
  public void setNumberOfFrames(int numberOfFrames) {
    this.numberOfFrames = numberOfFrames; // Establece el valor de los numeros de frames
  }
  /** Retorna el valor de los numeros de frames */
  public int getNumberOfFrames() {
    return this.numberOfFrames;
  }
  /** Cambia el valor de la variable f de marcianito (gif de Winner) */
  public void setF(int f) {
    this.f = f; // Establece el valor de f
  }
  /** Retorna el valor de f */
  public int getF() {
    return this.f;
  }
}
