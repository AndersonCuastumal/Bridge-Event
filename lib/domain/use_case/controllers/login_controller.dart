import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sprint3/ui/pages/login_page.dart';
import 'package:sprint3/ui/pages/navegacion_bar_page.dart';

class Service {
  final auth=FirebaseAuth.instance;
  //Funcion Crear Usuario
  void CreateUser(context,email,password) async {
    try{
      await auth.createUserWithEmailAndPassword(email: email, password: password).then((value) =>
      {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>NavegacionBarPage())),

      });
    }
    catch (e){
      errorbox(context,e);
    }
  }

  //mensaje de error
  void errorbox(context,e){
    showDialog(context: context, builder: (context){
      return AlertDialog(
          title: Text('Error'),
          content: Text(e.toString())
      );

    });

  }

  //login
  void LoginUser(context,email,password) async {
    try{
      await auth.signInWithEmailAndPassword(email: email, password: password).then((value) =>
      {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>NavegacionBarPage())),

      });
    }
    catch (e){
      errorbox(context,e);
    }
  }

  //reset
  void resetPassword(context,email) async {
    try{
      await auth.sendPasswordResetEmail(email: email).then((value) =>
      {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()))

      });
    } catch(e){
      errorbox(context, e);
    }


  }



}