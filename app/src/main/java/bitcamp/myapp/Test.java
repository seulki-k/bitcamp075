package bitcamp.myapp;

import java.util.Map;
import java.util.Properties;
import java.util.Set;

public class Test {

  public static void main(String[] args) {
    System.out.println("인수의 개수: " + args.length);
    Properties props = System.getProperties();
    Set<Map.Entry<Object, Object>> propSet = props.entrySet();
    for (Map.Entry<Object, Object> prop : propSet) {
      System.out.printf("%s: %s\n", prop.getKey(), prop.getValue());
    }
  }


}
