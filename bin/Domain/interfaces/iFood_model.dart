import '../models/food.dart';
import 'iModel.dart';
abstract class IFoodModel implements IModelJson<Food>
{
  List<Food> getAll();
  List<Food> getName(String name);  
  void  delete(String name);
  void create(Food food);
}