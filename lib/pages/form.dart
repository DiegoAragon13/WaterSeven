//Creare un formulario
import 'package:flutter/material.dart';
import 'package:waterseven/datatype/data.dart';
import 'package:waterseven/pages/listdata.dart';


class forms extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _MyForm();
  }

}

class _MyForm extends State<forms> {
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
        title: const Text("Registro de Clima"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            _buildTextField(_controladorCiudad, "Ciudad"),
            _buildTextField(_controladorTemperatura, "Temperatura"),
            _buildTextField(_controladorCondicion, "Condición"),
            _buildTextField(_controladorIcono, "Icono (Ejemplo: ⛅, 🌧, 🌞, ⛈)"),
            _buildTextField(_controladorImagen, "Nombre Imagen"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _enviarDatos,
              child: const Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: label,
        ),
      ),
    );
  }

  void _enviarDatos() {
    if (validarNombre(_controladorCiudad.text)) {
      setState(() {
        _datos.add(Data(
          _controladorCiudad.text,
          _controladorTemperatura.text,
          _controladorCondicion.text,
          _controladorIcono.text,
          _controladorImagen.text,
        ));
      });

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ListData(_datos)),
      );
    } else {
      alert(context);
    }
  }

  bool validarNombre(String cadena) {
    RegExp exp = RegExp(r'^[a-zA-Z/s]+$');
    if (cadena.isEmpty) {
      return false;
    } else if (!exp.hasMatch(cadena)) {
      return false;
    } else {
      return true;
    }
  }

  void alert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('¡Alerta!'),
          content: Text('Verifique la información ingresada.'),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }
}
