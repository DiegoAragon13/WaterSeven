import 'package:flutter/material.dart';
import 'package:waterseven/pages/Home.dart';
import 'package:waterseven/pages/web.dart';

class Start extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyState();
}

class _MyState extends State<Start> {
  int _selectedIndex = 0;

  final List<Widget> _paginas = [
    Home(),
    Center(),
    Web(),
    Center(),
  ];

  void _onItemTapped(int index) {
    if (index >= 0 && index < _paginas.length) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Center(
        child: _paginas[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.lightBlue[400],
        selectedItemColor: Colors.black,
        unselectedItemColor: colorScheme.onSurface.withOpacity(0.6),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Configuración",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.web),
            label: "web",
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.access_time_filled),
          label: "prueba",
          )
        ],
      ),
    );
  }
}