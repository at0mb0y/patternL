public interface Subject {
  public void registryObserver(Observation o);
  public void removeObserver(Observation o);
  public void notifyObservers();
  public void setChanged();
  public boolean changed = false;
}

public interface Observation{
 public void update(String state); 
}

public interface Displayer{
 public void display();
}

public class Watcher extends CellDestr  implements Observation {
  public void update(String state) {
    println("Watcher : I've been updated about the state of the subject, He has a new method" + state);
  }
}