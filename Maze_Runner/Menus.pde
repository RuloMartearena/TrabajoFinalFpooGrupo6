/* Clase menu que mostrará las distintas pantallas con mensajes en el juego */
class Menus extends FrameObject {
  //class Menus {


  // ------- Zona de constructores ------- //



  // ---------------- Zona de atributos ------------------- //

  /* Representa la fuente de las letras de los mensajes */
  private PFont fuente;
  /* Representa el fondo al mostrarse el titulo del juego */
  private PImage fondo;
  /* Representa el color de la letra */
  private color fontColor;

  /* Representa el atributo gif */
  private PImage[] gif;
  /* Representa el numero de frames del Marcianito */
  private int numberOfFrames;
  /* Representa un atributo del tipo entero f */
  private int f;

  // ----------------- Zona de constructores ---------------- //

  /* Constructor parametrizado */
  public Menus() {
    this.fuente = loadFont("resources/images/Verdana-BoldItalic-48.vlw");
    this.fondo = loadImage("resources/images/fondo.png");
    textFont(this.fuente);
    this.fontColor = (#902A2A);
/*Constructor parametrizado para fondo final*/
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

  /* Muestra el nombre del juego */
  public void displayName() {
    fill(this.fontColor);
    image(fondo, 0, 0, width, height);
    textSize(90);
    text(Constants.GAME_NAME, 220, height/2);
    fill(255);
    textSize(15);
    text(Constants.INSTRUCTION, width/2-90, height-40);
  }

  /* Muestra las instrucciones */
  public void displayControls() {
    textSize(20);
    text(Constants.INSTRUCTION_ONE, width/3-38, height-370);
    text(Constants.INSTRUCTION_TWO, width/3+20, height-315);
    textSize(15);
    text(Constants.INSTRUCTION, width/2-90, height-40);
  }

  /* Muentra el mensaje cuando ganas */
  public void displayWin() {


    textSize(50);
    text(Constants.WIN, 190, height/3);
    textSize(15);
    text(Constants.INSTRUCTION_WIN, width/2-90, height-40);
    
    
    imageMode(CENTER); //imagen del marcianitooooo
    image(gif[f], width/2, height/2, this.widthFrame, this.heightFrame); // posicion del gif o cantidad de frames
    f = f + 1;
    if (f == numberOfFrames) f = 0;
    this.widthFrame = 128;
    this.heightFrame = 190;
  }
}
