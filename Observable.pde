import java.util.Observable;

public class MyObservable extends Observable {
  
  void changeSomething(){
   println("change something");
   setChanged();
   notifyObservers();
  }
}

public  class CellFactory {
  public Cell createCell(){
    println("create zero cell");
    //create Zero Cell
    Cell c = null;
   c = new CellConcr();
  return c;
  }
  public Cell createCell(CellConcr[] conCell){
    //create a Cell and decorate of other cell
    Cell c = new CellConcr();
    for (int i= 0; i < conCell.length; i= i++){
      //c = new CellAwareOf(c,conCell[i]);
    }
    return c;
  }
}