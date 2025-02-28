import 'package:flutter/material.dart';
import 'package:waterseven/pages/Details.dart';

class Cards extends StatelessWidget {
  final List<Map<String, String>> climacard = [
    {
      "ciudad": "Durango",
      "temperatura": "15°C",
      "condicion": "soleado",
      "icon": "☀️",
      "imagen": 'assets/durango.jpg'

    },
    {
      "ciudad": "Monterrey",
      "temperatura": "5°C",
      "condicion": "nublado",
      "icon": "☁️",
      "imagen": 'assets/monterrey.jpg'
    },
    {
      "ciudad": "Chihuahua",
      "temperatura": "6°C",
      "condicion": "soleado",
      "icon": "🌤️",
      "imagen": 'assets/chi.jpg',

    },
    {
      "ciudad": "Zacatecas",
      "temperatura": "2°C",
      "condicion": "lluvioso",
      "icon": "🌧️",
      "imagen": 'assets/zacatecas.jpg',

    },
    {
      "ciudad": "Mazatlán",
      "temperatura": "25°C",
      "condicion": "Muy soleado",
      "icon": "☀️",
      "imagen": 'assets/maza.jpg',
    },
    {
      "ciudad": "Acapulco",
      "temperatura": "10°C",
      "condicion": "Nublado",
      "icon": "☁️",
      "imagen": 'assets/aca.jpg',
    },
    {
      "ciudad": "Puebla",
      "temperatura": "18°C",
      "condicion": "Soleado",
      "icon": "🌤️",
      "imagen": 'assets/puebla.jpg',

    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: climacard.length,
        itemBuilder: (context, index) {
          final ciudad = climacard[index];
          return Card(
            margin: EdgeInsets.all(10),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.white70,
            child: ListTile(
              contentPadding: EdgeInsets.all(15),
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.lightBlue.shade100,
                child: Text(
                  ciudad["icon"]!,
                  style: TextStyle(fontSize: 30),
                ),
              ),
              title: Text(
                ciudad["ciudad"]!,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Temperatura: ${ciudad["temperatura"]}"),
                  Text("Condición: ${ciudad["condicion"]}"),
                ],
              ),
              trailing: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Details(
                          ciudad: climacard[index],
                        );
                      },
                    ),
                  );
                },
                child: Icon(
                  Icons.info_outline,
                  color: Colors.lightBlue,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
