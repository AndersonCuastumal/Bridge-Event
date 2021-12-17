import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sprint3/domain/use_case/datos/mensaje.dart';
import 'package:sprint3/domain/use_case/datos/mensaje_acceso.dart';
import 'package:sprint3/domain/use_case/datos/mensajewidget.dart';

class ListaMensajes extends StatefulWidget{
  //2. paso
  final mensajeAcceso=MensajeAcceso();
  ListaMensajes({Key?key}):super(key:key);

  @override
  _ListaMensajesState createState()=> _ListaMensajesState();

}

class _ListaMensajesState extends State<ListaMensajes> {

  ScrollController _scrollController = ScrollController();
  TextEditingController _mensajeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) => _scrollHaciaAbajo());
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat realtime DB'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            _getListaMensajes(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      controller: _mensajeController,
                      //Construir
                      onChanged: (text) =>
                          setState(() {

                          }),
                      onSubmitted: (input) {
                        _enviarMensaje(); //Construir
                      },
                      decoration: InputDecoration(
                        hintText: 'Escribir un mensaje',
                      ),
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(_puedoEnviarMensaje()? CupertinoIcons
                        .arrow_right_circle_fill : CupertinoIcons
                        .arrow_right_circle),
                    onPressed: () {
                      _enviarMensaje();
                    }

                ),

              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _getListaMensajes() {
    return Expanded(
        child: FirebaseAnimatedList(
            controller: _scrollController,
            //importamos los mensajes
            query: widget.mensajeAcceso.getMensajes(),
            itemBuilder: (context, snapshot, animation, index) {
              final json = snapshot.value as Map<dynamic, dynamic>;
              final mensaje = Mensaje.fromJson(json);
              return MensajeWidget(mensaje.texto, mensaje.fecha);
            }

        )
    );
  }



//crear scroll y ubicar en el ultimo mensaje
  void _scrollHaciaAbajo() {
    //Se verifica que exista contenido
    if (_scrollController.hasClients) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    }
  }


//se verifica si el contenido del texto es >0
  bool _puedoEnviarMensaje() =>_mensajeController.text.length>0;

  //Despues de realizar la verificacion
  void _enviarMensaje() {
    if (_puedoEnviarMensaje()) {
      //Se realiza el proceso envio del mensaje
      final mensaje = Mensaje(DateTime.now(), _mensajeController.text);
      //Se envia el mensaje
      widget.mensajeAcceso.guardarMensaje(mensaje);
      //Se limpia la casilla del mensaje
      _mensajeController.clear();
      setState(() {});
    }
  }

}