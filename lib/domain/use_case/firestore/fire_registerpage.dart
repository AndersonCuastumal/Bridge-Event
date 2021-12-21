


import 'package:cloud_firestore/cloud_firestore.dart';

 class AddUser{
  final CollectionReference user=FirebaseFirestore.instance.collection('Usuario');

   String? usuario;
   String? nombre;
   String? email;
   String? contrasena;

  AddUser({
   required this.usuario,
    required this.nombre,
    required this.email,
    required this.contrasena
  });


  Future <void> addUser() async {

    return await user.doc(usuario).set ({
      'usuario' :usuario,
      'nombre'  :nombre,
      'email'   :email,
      'contrasena':contrasena
    }).then((value) => print('se añadio usuario' )).catchError((error)=> print('error'));

  }







}