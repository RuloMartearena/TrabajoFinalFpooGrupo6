/* Crea una clase de nombre FamilyList */
class FamilyList {
  // ------------------ Zona de atributos ----------------- //
  private Family[] kin;

  // ------------------ Zona de constructores ----------------- //

  public FamilyList() {
    kin = new Family[3];
  } 

  // ------------------ Zona de operaciones ----------------- //

  /** Permite agregar un objeto de tipo Family */
  public void addFamily(int i) {
      //familylist.kin[i] = new Family(3,0,5);//(int)random(0,73),(int)random(0,40),5);
     familylist.kin[i].display();
      //familylist.kin[i].colision(character);
     
     familylist.kin[i] = new Family(4,0,5);//(int)random(0,73),(int)random(0,40),5);
  }

  // ------------------ Zona de metodos ----------------- //
}
