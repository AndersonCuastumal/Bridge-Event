import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sprint3/domain/use_case/controllers/mi_estado_controller.dart';

class MiEstadoPage extends GetView<MiEstadoController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child:Column(
            children: [
              Text("Counter 0"),
              Obx(()=>Text("Counter ${controller.counter.value}")),
              RaisedButton(
                child: Text("Increase"),
                onPressed: ()=> controller.increaseCounter(),
              ),
            ],
          ),
        ),
      ),
    );
  }

}