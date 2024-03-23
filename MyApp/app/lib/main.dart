import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'flutter demo',
        theme: ThemeData(
            // primarySwatch: Colors.blue,
            ),
        debugShowCheckedModeBanner: false,
        home: const FirstPage());
  }
}

//first page
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "First Page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            /*
            onPrimary: Colors.black,
            Primary: Colors.black,
            */
            backgroundColor: Colors.black,
            foregroundColor: const Color.fromARGB(255, 225, 221, 7),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const SecoundPage();
                },
              ),
            );
          },
          child: const Text("click me to nevigate"),
        ),
      ),
    );
  }
}

//secound page
class SecoundPage extends StatelessWidget {
  const SecoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text(
          "Secound Page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: const Center(
        child: Text("nevigated"),
      ),
    );
  }
}
