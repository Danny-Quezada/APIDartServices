import '../Domain/interfaces/iFood_model.dart';
import '../Domain/models/food.dart';

class FoodConvertJson implements IFoodModel {
  List<Food>? _foods;

  FoodConvertJson() {
    this._foods = [];
  }

  @override
  void delete(String name) {
    // TODO: implement delete
    for (int i = 0; i < _foods!.length; i++) {
      if (_foods![i].name == name) {
        _foods!.remove(_foods![i]);
        print('Delete');
        break;
      }
    }
  }

  @override
  fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    return Food(
        name: json['name'],
        description: json['description'],
        price: json['price'],
        calories: json['calories'], id: 4);
  }

  @override
  List<Food> getAll() {
    // TODO: implement getAll
    return _foods!;
  }

  @override
  getName(String name) {
    List<Food> foods = [];
    _foods!.forEach((food) {
      if (food.name.toLowerCase().contains(name.toLowerCase())) {
        foods.add(food);
      }
    });
    return foods;
  }

  @override
  Map<String, dynamic> toJson(t) {
    return <String, dynamic>{
      'name': t.name,
      'description': t.description,
      'price': t.price,
      'calories': t.calories
    };
  }

  @override
  void create(food) {
    _foods!.add(food);
  }
}
