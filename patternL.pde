
Cell c;
MyObservable subject;
void setup(){
  size(500,500, JAVA2D);
  CellFactory factory = new CellFactory();
  
  //Cell c;
  //this.factory = factory;
  //c = new CellConcr();
  //Cell c = factory.createCell();
  c = factory.createCell();
  c.display();
  c.changeCoreMethod();
  c.display();
  Watcher w = new Watcher();
  c.registryObserver(w);
  c.notifyObservers();
  c.getDescription();
  c = new CellOnTheCorner(c);
  c.getDescription();
  CellConcr b = new CellConcr();
  c = new CellAwareOf( c,b);
  c.getDescription();
  
   subject = new MyObservable();
  MyObs watch = new MyObs();
  subject.addObserver(watch);
  //subject.setChanged();
  //subject.notifyObservers("tutu");
}

void draw(){
  
}
void keyPressed(){
    if (keyPressed) {
      if (key == 'b' || key == 'B') {
        CellBurn cb = new CellBurn();
        c.setCoreMethod(cb);
        }
     if (key == 'p' || key == 'P') {
      CellConnec cc = new CellConnec();
      c.setCoreMethod(cc);
    }
    if (key == 'o' || key == 'O') {
      subject.changeSomething();
    }
  }
}