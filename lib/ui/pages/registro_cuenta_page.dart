
import 'package:flutter/material.dart';
import 'package:sprint3/domain/use_case/controllers/login_controller.dart';
import 'package:sprint3/ui/pages/login_page.dart';

class Register extends StatelessWidget {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  Service service = Service();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding:EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Register Page', style: TextStyle(fontSize: 25, fontWeight:FontWeight.bold,),
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

                ///////boton Registrar///////////////////////////////////
                ElevatedButton(
                  style: TextButton.styleFrom(
                    padding:EdgeInsets.symmetric(horizontal: 80),
                  ),
                  onPressed: (){
                    //metodo registrar
                    if (emailcontroller.text.isNotEmpty && passwordcontroller.text.isNotEmpty){
                      service.CreateUser(context, emailcontroller.text, passwordcontroller.text);
                    }
                    else{
                      service.errorbox(context, 'Los campos no pueden estar vacios');
                    }
                  },
                  child: Text('Register'),
                ),

                //////////Textbutton ---tengo una cuenta?
                TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                    },
                    child: Text('Tengo una cuenta')
                ),


              ],
            ),
          )
      ),
    );
  }
}