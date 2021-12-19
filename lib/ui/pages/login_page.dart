import 'package:flutter/material.dart';
import 'package:sprint3/domain/use_case/controllers/login_controller.dart';
import 'package:sprint3/ui/pages/registro_cuenta_page.dart';
import 'package:sprint3/ui/pages/reset_contrasena.dart';

class LoginPage extends StatelessWidget {
  //Se captura la informacion email y contraseña
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  Service service=Service();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding:EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Login Page', style: TextStyle(fontSize: 25, fontWeight:FontWeight.bold,),
                ),
                //Textfield Email
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: TextField(
                    controller:emailcontroller ,
                    decoration: InputDecoration(
                        hintText: 'Ingrese su Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),
                  ),
                ),


                //Textfield password
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: TextField(
                    controller:passwordcontroller ,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Ingrese su password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),
                  ),
                ),

                ///////boton Login///////////////////////////////////
                ElevatedButton(
                  style: TextButton.styleFrom(
                    padding:EdgeInsets.symmetric(horizontal: 80),
                  ),
                  onPressed: (){
                    //metodo Login con usuario, aqui ya debe tener credenciales
                    if (emailcontroller.text.isNotEmpty && passwordcontroller.text.isNotEmpty){
                      service.LoginUser(context, emailcontroller.text, passwordcontroller.text);
                    }
                    else{
                      service.errorbox(context, 'Los campos no pueden estar vacios');
                    }
                  },
                  child: Text('Login'),
                ),

                //////////Textbutton --- no tiene una cuenta?
                TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Register(),));
                    },
                    child: Text('No tiene cuenta?')
                ),

                ///textbutton ----Olvide mi contraseña
                TextButton(
                    onPressed: (){
                      //llevar a pagina ResetPassword
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPassword(),));
                    },
                    child: Text('Olvide mi contraseña')
                ),
              ],
            ),
          )
      ),
    );
  }
}
