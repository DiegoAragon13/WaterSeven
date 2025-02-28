import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waterseven/pages/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        //texto
        textTheme:GoogleFonts.latoTextTheme(Theme.of(context).textTheme).copyWith(
          titleLarge: GoogleFonts.lato(
            textStyle: Theme.of(context).textTheme.titleLarge,
                fontSize: 32,
                color: Colors.black,
                fontWeight: FontWeight.bold,
          ),
          bodyLarge: GoogleFonts.lato(
            textStyle: Theme.of(context).textTheme.bodyLarge,
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
            bodyMedium: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.bodyMedium,
              fontSize: 18,
              color: Colors.black87,
              fontStyle: FontStyle.italic,
            ),
        ),
        //Color
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlue,
          brightness: Brightness.light
        ),
          iconTheme:IconThemeData(
          color: Colors.blue,
      ),
        scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue.shade200,
        titleTextStyle: GoogleFonts.lato(
          fontSize: 24,
          color: Colors.black,
          fontWeight:  FontWeight.bold
        ),

      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor:  Colors.lightBlue,
          textStyle:  GoogleFonts.lato(
            fontSize: 20,
            fontWeight:  FontWeight.bold,
              color: Colors.white
          )
        )
      )
      ),
      home: SplashScreen(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Water Seven")),
      body: Center(child: Text("")),
    );
  }
}