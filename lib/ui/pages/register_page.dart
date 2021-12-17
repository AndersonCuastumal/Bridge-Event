import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterAccount extends StatefulWidget {
  RegisterAccount({Key? key}) : super(key: key);

  @override
  _RegisterAccountState createState() => _RegisterAccountState();
}

class _RegisterAccountState extends State<RegisterAccount> {

  

  final estilo = const TextStyle(
    fontSize: 20,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
  );

  final formkey = new GlobalKey<FormState>();
 
   String? nombres;
   String? correo;
   String? usuario;
   String? contrasena;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _fondo(context),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        backgroundColor: Colors.white,
        child: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 30),
        tooltip: 'Regresar',
      ),
    );
  }

  Widget _fondo(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/fondo.jpeg'),
                fit: BoxFit.cover)),
        child: ListView(
          children: [
            _items(context),
          ],
        ));
  }

//aqui van todos los items de la pantalla
  Widget _items(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 30),
        _titulo(),
        const SizedBox( height: 20),
        _contenedorRegistro(),
        const SizedBox( height: 20),
         _botonRegistro()
      ],
    );
  }

  //contiene el titulo de login
  Widget _titulo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Crear cuenta',
          style: GoogleFonts.sansita(
              color: const Color(0xff26B6BF),
              fontSize: 80,
              shadows: const <Shadow>[
                Shadow(
                  blurRadius: 20,
                )
              ]),
        ),
      ],
    );
  }



  Widget _contenedorRegistro() {
    return Container(
        width: 420,
        //height: 550,
        decoration: BoxDecoration(
            color: const Color(0xAAF6A273),
            borderRadius: BorderRadius.circular(20)),
        child: Form(
          key: formkey,
          child: Column(
            children: <Widget>[
              _textformfieldUser(),//usuario
              _textformfieldNombre(),//nombre
              _textformfieldCorreo( ),//correo
              _textformfieldPass(),//contraseña
             
            ],
          ),
        )
    );
  }



   Widget _textformfieldUser() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const <BoxShadow>[
            BoxShadow(
                blurRadius: 10.0, spreadRadius: -1, offset: Offset(2.0, 3.0))
          ]),
      child: TextFormField(
        style: estilo,
        decoration: InputDecoration(
            hintStyle:estilo,
            hintText: 'Usuario',
            icon: const Icon(Icons.account_circle, size: 35)
        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Casilla obligatoria';
          }
        },
        onSaved: (value){
          usuario=value;
        },
      ),
    );
  }

   Widget _textformfieldCorreo() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const <BoxShadow>[
            BoxShadow(
                blurRadius: 10.0, spreadRadius: -1, offset: Offset(2.0, 3.0))
          ]),
      child: TextFormField(
        style: estilo,
        decoration: InputDecoration(
            hintStyle:estilo,
            hintText: 'E-Mail',
            icon: const Icon(Icons.email_outlined, size: 35)
        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Casilla obligatoria';
          }
        },
        onSaved: (value){
          correo=value;
        },
      ),
    );
  }

   Widget _textformfieldNombre() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const <BoxShadow>[
            BoxShadow(
                blurRadius: 10.0, spreadRadius: -1, offset: Offset(2.0, 3.0))
          ]),
      child: TextFormField(
        style: estilo,
        decoration: InputDecoration(
            hintStyle:estilo,
            hintText: 'Nombre',
            icon: const Icon(Icons.person, size: 35)
        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Casilla obligatoria';
          }
        },
        onSaved: (value){
          nombres=value;
        },
      ),
    );
  }

   Widget _textformfieldPass() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const <BoxShadow>[
            BoxShadow(
                blurRadius: 10.0, spreadRadius: -1, offset: Offset(2.0, 3.0))
          ]),
      child: TextFormField(
        style: estilo,
        decoration: InputDecoration(
            hintStyle:estilo,
            hintText: 'Contraseña',
            icon: const Icon( Icons.lock, size: 35)
        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Casilla obligatoria';
          }
        },
        onSaved: (value){
          contrasena=value;
        },
      ),
    );
  }




  Widget _botonRegistro(){
    return Container(
      width: 250,
      height: 70,
      decoration:  BoxDecoration(
        color: Color(0xFFED681E),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(2.0, 3.0)
          )
        ]
      ),
      child: TextButton(
        onPressed: (){
          _validar();
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const  <Widget>[
            Icon(Icons.create, size: 35,color: Colors.white,),
            SizedBox(width: 10,),
           Text('Crear', style:TextStyle(color: Colors.white,fontSize: 35),
           )
          ],
        ),
        // child:  FloatingActionButton.extended(
        //   backgroundColor: const Color(0xFFED681E),
        //   elevation: 10,
        //   icon: Icon(Icons.create,size: 30),
        //   onPressed: ()=>{}, 
        //   label: const Text('Crear',
        //     style: TextStyle(
        //       fontSize: 30
        //     ),
        //    )
        // ) ,
      ),
    );
  }

// aqui validamos que los campos no esten vacios
  void _validar() {
    if(formkey.currentState!.validate()){
      formkey.currentState!.save();
      formkey.currentState!.reset();
    }
  }


}
