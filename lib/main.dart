import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MovieScreen(),
    );
  }
}

class MovieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Balderrama Mat.1149',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff48907d),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Center(
                // Centra el Container en la pantalla
                child: MovieContainer(
                  title: 'Inception',
                  year: 2010,
                  director: 'Christopher Nolan',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MovieContainer extends StatelessWidget {
  final String title;
  final int year;
  final String director;

  MovieContainer({
    required this.title,
    required this.year,
    required this.director,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // Altura reducida del Container
      width: 300, // Ancho reducido del Container
      decoration: BoxDecoration(
        color: Color(0xff6aa9c8),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Color(0x87000000),
            blurRadius: 6.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.center, // Alineación horizontal al centro
        mainAxisAlignment: MainAxisAlignment
            .spaceEvenly, // Distribuye el espacio uniformemente
        children: [
          Text(
            'Título de película',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Color(0xf0ffffff),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Año: $year',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          Text(
            'Director: $director',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
