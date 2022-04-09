import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';
import 'AppCore/IServices/IFoodServices.dart';
import 'AppCore/Services/food_services.dart';
import 'Domain/interfaces/iFood_model.dart';
import 'Domain/models/food.dart';
import 'Infraestructure/food_convert.dart';

void main(List<String> args) async {
  IFoodModel foodModel = new FoodConvertJson();
  IFoodServices services = FoodServices(foodModel);
  services.create(
      Food(name: 'Hola', description: 'dkfja', price: 33, calories: 33,id: 3));

  var route = Router();
  route.get('/', (Request request) {
    List<Food> to = services.getAll();
    return Response.ok(json.encode(to.toString()));
  });

  route.get('/<name>', (Request request, String name) async {
    final food = services.getName(name);
    return Response.ok(jsonEncode(json));
  });
  
  route.post('/', (Request request) async {
    final payload = await request.readAsString();
    final food = services.fromJson(jsonDecode(payload));
    services.create(food);
  });
  await io.serve(route, 'localhost', 8023);
}
