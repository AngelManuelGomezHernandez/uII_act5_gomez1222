import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4100ab),
        title: const Text(
          "Mostrar imagenes 1222",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
            ),
            Text(
              "Imagen en la carpeta",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xff0f6cb9),
              ),
            ),
            SizedBox(
              height: 250,
              width: 350,
              child: Image.asset(
                "assets/mono.jpg",
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
            ),
            Text(
              "Imagen WEB",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xff0f6cb9),
              ),
            ),
            SizedBox(
              height: 250,
              width: 350,
              child: Image.network(
                "https://i.pinimg.com/736x/a9/1b/64/a91b645428fe11bbc21d05dd1de32008.jpg",
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
