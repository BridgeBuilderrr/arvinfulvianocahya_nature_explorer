import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nature Explorer',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.green),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nature Explorer'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              _BuildImage('https://picsum.photos/id/10/200/300'),
              Text('A Peaceful Natural Escape'),
              SizedBox(height: 16,),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _BuildImage(String url){
  return ClipRRect(
    child: Image.network(
      url,
      height: 250,
      width: 250,
    ),
  );
}