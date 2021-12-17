
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sprint3/domain/use_case/controllers/chat_controller.dart';

class ChatPage extends GetView<ChatController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Alerts page", style: TextStyle(fontSize: 20),),
        ),
      ),
    );
  }

}