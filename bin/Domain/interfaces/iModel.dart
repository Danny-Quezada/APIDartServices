abstract class IModelJson<T>{

  T fromJson(Map<String,dynamic> json);

  Map<String,dynamic> toJson(T t);
  
}