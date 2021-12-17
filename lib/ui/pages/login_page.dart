

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'register_pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _fondo(context) 
    );
  }

  Widget _fondo(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
          image: DecorationImage(
            
              image: AssetImage('assets/images/fondo.jpeg'),
              fit: BoxFit.fill
          )
      ),
      child:ListView(
        children:[
           _items(context)]
      ) 
    );
  }

//aqui van todos los items de la pantalla
  Widget _items(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
     const SizedBox(height: 60),
    _titulo(),
    _contenidoLogin(),
    _bottomLogin(context)
    ],
    );
  }
  
  //contiene el titulo de login
  Widget _titulo() {
    return Row(
      children: [
        Text(
          'Login',
          style: GoogleFonts.sansita(
            color: const Color(0xff26B6BF),
            fontSize: 80,
          ),
        ),
      ],
    );
  }
 
  //contenedor de todos los elementos del login
  Widget _contenidoLogin(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      height: 250,
      width: 420,
      decoration: BoxDecoration(
       // shape: BoxBorder(),
        color: Color(0xAAF6A273),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: <Widget>[
         _textfieldUsuario(),
         _textfieldPass(),
        ],
      ),
    );
  }

//texfiledUsuario
  Widget _textfieldUsuario(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 50),
     decoration: BoxDecoration(
       color: Color(0xffFFF9F9),
       //color: Colors.white,
       boxShadow:<BoxShadow>[
         BoxShadow(
            blurRadius: 5,
            spreadRadius: -2,
            offset: Offset(5.0,4.0)
         )
       ] ,
      
      borderRadius: BorderRadius.circular(20)
     ),
      margin: EdgeInsets.symmetric(vertical: 20, horizontal:20 ),
      child: TextField(
        textAlign:TextAlign.start,
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 25
        ),
        decoration: InputDecoration(
         // contentPadding:EdgeInsets.symmetric(vertical: 10),
          icon: Icon(Icons.account_circle_outlined, size:37 ),
          hintText: 'Usuario'
        ),
      ) 
    );
  }

//texfiledPass
  Widget _textfieldPass(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 50),
     decoration: BoxDecoration(
       color: Color(0xffFFF9F9),
       //color: Colors.white,
       boxShadow:<BoxShadow>[
         BoxShadow(
            blurRadius: 5,
            spreadRadius: -2,
            offset: Offset(5.0,4.0)
         )
       ] ,
      
      borderRadius: BorderRadius.circular(20)
     ),
      margin: EdgeInsets.symmetric(vertical: 20, horizontal:20 ),
      child: TextField(
        textAlign:TextAlign.start,
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 25
        ),
        decoration: InputDecoration(
         // contentPadding:EdgeInsets.symmetric(vertical: 10),
          icon: Icon(Icons.lock, size:37 ),
          hintText: 'Contraseña'
        ),
      ) 
    );
  }

//contenedor de abajo
  Widget _bottomLogin(BuildContext context){
    return Container(
      child: Column(
        children: <Widget>[
           _boton(context),
          SizedBox(height: 30),
          _crearCuenta(context),

        ],
      ),
    );
  }

//Boton
  Widget _boton(BuildContext context){
    return Container(
      width: 230,
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xffED681E),
        borderRadius: BorderRadius.circular(20),
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 5,
            spreadRadius:0,
            offset: Offset(3.0,2.0)
          )
        ]
      ),
      child: TextButton(
        onPressed: (){}, 
        child: Text('LOGIN', style: TextStyle(
          fontSize: 30,
          color: Colors.white
        )
         
        ),
      ),
    );
  }

//widget de crear cuenta
  Widget _crearCuenta(BuildContext context){
    return Container(
      
      width: 160,
      decoration: BoxDecoration(
        color:Colors.white70,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight:Radius.circular(20))
      ),
      child: TextButton(
        onPressed: ()=>_createAccount(context),
        child:  Text('Crear Cuenta',
        style: TextStyle(
          color: Colors.black87,
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
    );
  }

  
  _createAccount(BuildContext context) {
    final route=MaterialPageRoute(
      builder: (context){
      return RegisterAccount();
    }
   );
   Navigator.push(context, route);
  }





}
