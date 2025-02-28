//Creare un formulario
import 'package:flutter/material.dart';
import 'package:waterseven/datatype/data.dart';


class form extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _MyForm();
  }

}

class _MyForm extends State<form>{
  final _controladorCiudad = TextEditingController();
  final _controladorTemperatura = TextEditingController();
  final _controladorCondicion = TextEditingController();
  final _controladorIcono = TextEditingController();
  final _controladorImagen = TextEditingController();
  List<Data> _datos = [];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro de Clima"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(20)),
            TextField(
              controller: _controladorCiudad,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Ciudad",

              ),
            ),
      Padding(padding: EdgeInsets.all(20)),
      TextField(
          controller: _controladorTemperatura,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Temperatura",

          ),
      ),
      Padding(padding: EdgeInsets.all(20)),
      TextField(
          controller: _controladorCondicion,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Condicion",

          ),
      ),
      Padding(padding: EdgeInsets.all(20)),
      TextField(
          controller: _controladorIcono,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Icono (Ejemplo: ⛅, 🌧, 🌞, ⛈)",

          ),
      ),
      Padding(padding: EdgeInsets.all(20)),
      TextField(
          controller: _controladorImagen,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Nombre Imágen",

          ),
      ),
            Padding(padding: EdgeInsets.all(20)),
            ElevatedButton(
            onPressed: (){
              //Para que este bien escrito
              if(validarNombre(_controladorCiudad).text){//EQUIVALENTE AL GET
                setState(() {
                  _datos.add(Data(
                    _controladorCiudad.text,
                    _controladorTemperatura.text,
                    _controladorCondicion.text,
                    _controladorIcono.text,
                    _controladorImagen.text
                  ));
                });

                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context){
                      return ListData(_datos);
                    }
                )
                );
              }else{
                alert(context);
              }
            },
              child: Text('Enviar')
            ),
          ],
        ),
      ),

    );
  }

}

bool validarNombre(String cadena){
  RegExp exp=RegExp(r'^[a-zA-Z/s]+$');
  if(cadena.isEmpty){
    return false;
  }else if(!exp.hasMatch(cadena)){
    return false;

  }else{
    return true;
  }
}
