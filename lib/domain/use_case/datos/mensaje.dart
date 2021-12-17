// 1. paso creamos la clase
class Mensaje{
  late final String texto;
  late final DateTime fecha;

  //constructor
  Mensaje(this.fecha,this.texto);

  Mensaje.fromJson(Map<dynamic,dynamic>json):
        fecha=DateTime.parse(json['fecha'] as String),
        texto=json['texto'] as String;
  Map<dynamic,dynamic>tojson()=><dynamic,dynamic>{
    'fecha':fecha.toString(),
    'texto':texto,
  };

}