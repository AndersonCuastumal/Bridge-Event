
import 'package:flutter/material.dart';
import 'package:sprint3/domain/use_case/controllers/login_controller.dart';

class ResetPassword extends StatelessWidget {
  TextEditingController emailcontroller=TextEditingController();
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
                Text('Recuperar Contraseña', style: TextStyle(fontSize: 25, fontWeight:FontWeight.bold,),
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


                ///////boton Reset///////////////////////////////////
                ElevatedButton(
                  style: TextButton.styleFrom(
                    padding:EdgeInsets.symmetric(horizontal: 80),
                  ),
                  onPressed: (){
                    //metodo reset
                    if (emailcontroller.text.isNotEmpty){
                      service.resetPassword(context, emailcontroller.text);
                    }
                    else{
                      service.errorbox(context, 'Digite un email valido');
                    }
                  },
                  child: Text('Reset'),
                ),

              ],
            ),
          )
      ),
    );
  }
}