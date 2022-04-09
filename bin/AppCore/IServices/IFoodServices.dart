import '../../Domain/models/food.dart';
import 'IServices.dart';

abstract class IFoodServices implements IServices<Food> {
  List<Food> getAll();
  List<Food> getName(String name);
  void delete(String name);
  void create(Food food);
}
