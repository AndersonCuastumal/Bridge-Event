import 'package:firebase_database/firebase_database.dart';
import 'package:sprint3/domain/use_case/datos/mensaje.dart';

class MensajeAcceso {
  final DatabaseReference _mensajeRef = FirebaseDatabase.instance.reference()
      .child('mensajes');

  void guardarMensaje(Mensaje mensaje) {
    _mensajeRef.push().set(mensaje.tojson());
  }
  Query getMensajes()=>_mensajeRef;
}