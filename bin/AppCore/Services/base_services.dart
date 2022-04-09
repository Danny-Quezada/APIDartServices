import 'package:http/http.dart';

import '../../Domain/interfaces/iModel.dart';
import '../IServices/IServices.dart';

abstract class BaseServices<T> extends IServices<T>{

  IModelJson<T> modelJson;
  BaseServices({required this.modelJson});

  @override
  T fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    return this.modelJson.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(T t) {
    // TODO: implement toJson
    return this.modelJson.toJson(t);
  }

}