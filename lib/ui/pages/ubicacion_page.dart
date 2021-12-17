import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprint3/domain/use_case/controllers/explorar_controller.dart';

class UbicacionPage extends GetView<UbicacionController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "News page",style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }

}