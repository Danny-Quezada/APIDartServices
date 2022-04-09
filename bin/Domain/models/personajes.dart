class Personajes{
  late String nombre;
  late int id;
  late double fuerza;
  Personajes({required this.nombre,required this.fuerza,required this.id});
    Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['nombre'] = nombre;
    data['fuerza'] = fuerza;
    data['id'] = id;
    return data;
  }
  Personajes.fromJson(Map<String,dynamic> json){
    nombre=json['nombre'];
    id=json['id'];
    fuerza=json['fuerza'];
  }

}
