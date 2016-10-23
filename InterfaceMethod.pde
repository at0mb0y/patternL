
public interface OnTheFlyMethod {
 public void theObjMethod(); 
 public String getMethodName();
}
public class CellConnec implements OnTheFlyMethod {
  String methodName = "CellConnec";
 public void theObjMethod(){
  println("connect cells"); 
 }
 public String getMethodName(){
  return methodName; 
 }
}

public class CellBurn implements OnTheFlyMethod {
  String methodName = "CellBurn";
 public void theObjMethod(){
  println("autodestruct cell"); 
 }
  public String getMethodName(){
  return methodName; 
 }
}

public interface CellStateCalculationMethod {
 String methodName = ""; 
 public void getMethodName();
 //Pour composer les cell avec une method de calcul varié et/ou adapté au contexte
}
public class Border implements CellStateCalculationMethod {
  String methodName; 
  Border(){
    methodName = "same as other side cell" ; 
  }
  public void getMethodName(){
  println(methodName);
  }
}