
import 'package:DartLib/CarClass.dart';
import 'package:DartLib/RectClass.dart';

main(List<String> args) {

  CarClass car = new CarClass('henhao', 'red');
  car.carColor = "红色";
  car.carName = '凯迪拉克';
  car.printcarInfo();  

  RectClass rect = new RectClass(12, 12);
  rect.area();
  

}