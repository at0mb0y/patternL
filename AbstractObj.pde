public abstract class Cell implements Subject {
  OnTheFlyMethod newMeth;
  String monEtat;
  boolean changed = false;
  Cell cellDeco;
  private ArrayList observers;
  //private ArrayList <Observer> observers;
  public Cell(){
    println("construction of duck");
    observers = new ArrayList();
    monEtat = "blank Cell";
  }
  public String getDescription(){return monEtat;}
  //public abstract void display();
  public void registryObserver(Observation o){
    observers.add(o);
  }
  public void removeObserver(Observation o){
    int i = observers.indexOf(o);
    if (i>=0){
      observers.remove(i);
    }
  }
  public void setChanged(){
   changed = true; 
  }
     public void computeState(){ }
  public void notifyObservers(){
    if(changed){
    for( int i = 0; i< observers.size();i++)
    {
      Observation observer =  (Observation) observers.get(i);
      observer.update(monEtat);
    }
     changed = false; 
    }
  }
  public void changeCoreMethod(){
    newMeth = new CellBurn();
    monEtat = "CellBurn";
    setChanged();
    notifyObservers(); 
  }
  public void setCoreMethod(OnTheFlyMethod oFm){
    newMeth = oFm;
    monEtat = newMeth.getMethodName();
    setChanged();
    notifyObservers();
  }
  public void display(){}
}
public class CellConcr extends Cell implements Observation {
  CellConcr(){ 
    newMeth = new CellConnec();
    monEtat = newMeth.getMethodName();
  }
  public void display(){
    newMeth.theObjMethod();
  }
  public void computeState(){
   }
   public void update(String state) {
    println("CellConcr observer: " );
  }
}

class CellDestr extends Cell {
  CellDestr(){
    newMeth = new CellBurn();
    monEtat = newMeth.getMethodName();
  }
   public void computeState(){
   
 }
    public void display(){
    newMeth.theObjMethod();
  }
}
public abstract class CellDecorator extends Cell{
  //public abstract String getDescription();
  
}

class CellOnTheBorder extends CellDecorator{
 public String getDescription(){
  println("I'am a border cell");
  return monEtat;
 }
 public void computeState(){
 }
}
class CellOnTheCorner extends CellDecorator{
  Cell baseCell;
  public CellOnTheCorner(Cell baseCell){
    this.baseCell= baseCell;
  }
  public String getDescription(){
  println("I'am a corner cell"); 
  return monEtat;
 }
   public void computeState(){
 }
}
class CellAwareOf extends CellDecorator {
  Cell aCell;
  CellAwareOf(Cell baseCell, CellConcr awareOf){
    this.aCell = baseCell;
    registryObserver(awareOf);
    
  }
 public String getDescription(){
  println(aCell.getDescription() + "I'am aware of" );
  return monEtat;
 }
 public void computeState(){
 }
}