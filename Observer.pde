import java.util.Observer;

public class MyObs implements java.util.Observer {
  String info = "none";
  
//public void update(){println("My Observer : I'm updated w");}
public void update(Observable o, Object ob){println("My Observer : I'm updated about Observable ");}
//public void update(Observable o, Object arg){println("I'm updated with this info" + arg);}
//public void update(Observable o, String arg){println("I'm updated with this info" + arg);}
  
}

public class Context {
  Context(){
    
  }
  
  
}