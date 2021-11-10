/* Clase menu que mostrará las distintas pantallas con mensajes en el juego */
class Menus {
  PFont fuente;
  PImage fondo;

  // ---------- Zona de operaciones ------------ //
  public Menus(){
    this.fuente = loadFont("Verdana-BoldItalic-48.vlw");
    this.fondo = loadImage("fondo.png");
    textFont(this.fuente);
  }
  
  
  /* Muestra el nombre del juego */
  public void displayName() {
    fill(#902A2A);
    image(fondo,0,0,width,height);
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
    text(Constants.WIN, 230, height/2);
    textSize(15);
    text(Constants.INSTRUCTION_WIN, width/2-90, height-40);
  }
}
