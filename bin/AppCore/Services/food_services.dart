import '../../Domain/interfaces/iFood_model.dart';
import '../../Domain/interfaces/iModel.dart';
import '../../Domain/models/food.dart';
import '../IServices/IFoodServices.dart';
import '../IServices/IServices.dart';
import 'base_services.dart';

class FoodServices extends BaseServices<Food> with IFoodServices {
  late IFoodModel foodModel;
  FoodServices(IFoodModel model) : super(modelJson: model) {
    foodModel = model;
  }

  @override
  void create(Food food) {
    // TODO: implement create
    foodModel.create(food);
  }

  @override
  void delete(String name) {
    // TODO: implement delete
    foodModel.delete(name);
  }

  @override
  List<Food> getAll() {
    // TODO: implement getAll
    return foodModel.getAll();
  }

  @override
  List<Food> getName(String name) {
    // TODO: implement getName
    return foodModel.getName(name);
  }
}
