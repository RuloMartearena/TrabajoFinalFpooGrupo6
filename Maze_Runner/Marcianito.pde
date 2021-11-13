/** Crea una clase de nombre Marcianito que se utiliza junto al mensaje final */

class Marcianito extends FrameObject{
  
  // ------- Zona de atributos ------- /
  
  /* Representa el atributo gif */
  private PImage[] gif;
  /* Representa el numero de frames del Marcianito */
  private int numberOfFrames;
  /* Representa un atributo del tipo entero f */
  private int f;
  
  // ------- Zona de constructores ------- //
  
  /** Constructor por defecto */
  public Marcianito(){
    this.numberOfFrames = 20;
    this.gif = new PImage[numberOfFrames];
    this.position = new PVector (width/3, height/2);
    this.widthFrame = 128;
    this.heightFrame = 190;
  }
  
  // ------- Zona de operaciones ------- //
  
  /** Muestra en el lienzo la cantidad de Frames del Marcianito */
  public void display(){
    int i = 0;
    while (i < numberOfFrames){ 
      gif[i] = loadImage("frame_"+i+"_delay-0.02s.gif"); // carga desde la carpeta al lienzo cada frame
      i=i+1;
      imageMode(CENTER);
      image(gif[f], width/2, height/2, this.widthFrame, this.heightFrame); // posicion del gif o cantidad de frames
      f = f + 1;
      if (f == numberOfFrames) f = 0;
    }
    
  }
}
