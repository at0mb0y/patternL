public  class CellStore {// et si cellstore était une extension de context qui contient l'araylist des cell
//la list dans les cell et 
//une list god de toute les cell
  CellFactory factory;
  
  public CellStore (CellFactory factory) {
    this.factory = factory;
    c = factory.createCell();//ceci est la methode qui crée une cell ghost zero
    
    // rendre un context qui contient les cell
  }
  
  public Cell giveCellIn (Context context){
   Cell c;
   //est il le premier
   c = factory.createCell();// a changer au profit de : createCell(CellConcr[] conCell)
   //c.registryexisting
   //check les existant dans une autre 
   return c;
  }
}

public abstract class CellGenerator{
  CellFactory factory;
    public CellGenerator (CellFactory factory) {
    this.factory = factory;
  }
  public Cell  getCell(){
   Cell cell;
   cell = generateCell();
   //blabla fini l'order 
   //genre ce registrer au pres des cell existante
   return cell;
  }
  protected abstract Cell generateCell();  
}
public class GhostCellGenerator extends CellGenerator {
    public GhostCellGenerator(CellFactory factory){
      super(factory);
    }
 Cell generateCell(){
   Cell c;
   c=factory.createCell();
   return c;
 }
}