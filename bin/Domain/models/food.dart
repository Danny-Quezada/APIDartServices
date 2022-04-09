import 'item.dart';

class Food extends Items{
  double price;
  String description;
  double calories;
  String name;
  int id;
  
  Food({required this.description,required this.price,required this.calories,required this.id,required this.name}) : super(id: id,name: name);
  
}