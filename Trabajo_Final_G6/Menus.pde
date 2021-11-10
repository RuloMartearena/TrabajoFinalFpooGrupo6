/* Clase menu que mostrará las distintas pantallas con mensajes en el juego */
class Menus {

  // ---------- Zona de operaciones ------------ //

  /* Muestra el nombre del juego */
  public void displayName() {
    textSize(60);
    text(Constants.GAME_NAME, width/3+10, height/2);
    textSize(15);
    text(Constants.INSTRUCTION, width/2-90, height-40);
  }
  /* Muestra las instrucciones */
  public void displayControls() {
    textSize(20);
    text(Constants.INSTRUCTION_ONE, width/3-38, height-370);
    text(Constants.INSTRUCTION_TWO, width/3+12, height-315);
    textSize(15);
    text(Constants.INSTRUCTION, width/2-90, height-40);
  }

  /* Muentra el mensaje cuando ganas 
   public void displayWin() {
   textSize(50);
   text(Constants.WIN, 230, height/2);
   case 4:
   menus.displayWin();
   break;
   } */
}
