import 'package:flutter/material.dart';
import 'package:waterseven/pages/cards.dart';
import 'package:waterseven/pages/web.dart'; // Importar la página Web

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amber[50],
      appBar: AppBar(
        title: const Text("Water Seven", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        //backgroundColor: Colors.lightBlue[400],
        iconTheme: const IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Desarrollo de Soluciones Móviles"),
                  duration: Duration(seconds: 5),
                ),
              );
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: Cards(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.lightBlue[400]),
              child: const Text("Menú", style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Inicio"),
              onTap: () {
                Navigator.pop(context); // Cierra el Drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.web),
              title: const Text("Web"),
              onTap: () {
                Navigator.pop(context); // Cierra el Drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Web()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Configuración"),
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.blueGrey,
        onPressed: () {},
      ),
    );
  }
}
