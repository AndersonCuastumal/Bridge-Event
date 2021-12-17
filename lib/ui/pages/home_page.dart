import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprint3/domain/use_case/controllers/home_controller.dart';


class HomePage extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(controller.title),
      ),
      body: Container(
        child: Center(
          child: Text(
            "Home Page",style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }

}