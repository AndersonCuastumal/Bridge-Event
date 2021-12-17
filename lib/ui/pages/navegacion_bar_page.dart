
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sprint3/domain/use_case/controllers/navegacion_bar_controller.dart';
import 'package:sprint3/ui/pages/ListaMensajes.dart';
import 'package:sprint3/ui/pages/mi_estado_page.dart';
import 'package:sprint3/ui/pages/chat_page.dart';
import 'package:sprint3/ui/pages/home_page.dart';
import 'package:sprint3/ui/pages/ubicacion_page.dart';

class NavegacionBarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavegacionBarController>(builder: (controller){
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: IndexedStack(
                index: controller.tabIndex,
                children: [
                  HomePage(),
                  UbicacionPage(),
                  ChatPage(),
                  MiEstadoPage(),
                  ListaMensajes(),

                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black87,
            selectedItemColor: Colors.redAccent,
            onTap:controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items:[
              _bottomNavigationBarItem(CupertinoIcons.home,'Home'),
              _bottomNavigationBarItem(CupertinoIcons.sportscourt,'Explorar'),
              _bottomNavigationBarItem(CupertinoIcons.bell,'Chat'),
              _bottomNavigationBarItem(CupertinoIcons.person,'Mi Estado'),
              _bottomNavigationBarItem(CupertinoIcons.person_2,'Mi Estado'),
            ],
          ),
        );
    });
  }

   _bottomNavigationBarItem(IconData icon,String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,

    );
   }

}