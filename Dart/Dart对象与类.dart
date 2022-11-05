

import 'Lib/Person.dart';
import 'Lib/Animals.dart';


main(List<String> args) {
  
  // Person p = new Person();
  // p.name = "jason";
  // p.age = 12;
  // p.getInfo();

  // Person p = new Person("kk", 12);
  // p.getInfo();

  Person p = new Person.now("lisi", 20);
  p.getInfo();

  Animals an = new Animals("黄色", "磁性", 12);
  an.age = 12;
  // an.animalsName = "旺财";
  an.animalsColors = "黄色";
  an.animalsSex = "女";

  an.setMyAnimaslName = "jj";
  an.getAnimalsName();
  
  an.printAnimalsInfo();



  




} 