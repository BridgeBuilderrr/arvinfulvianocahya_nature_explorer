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
        title: Text('Nature Explorer', style: TextStyle(color: Colors.green),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Image.network('https://picsum.photos/id/10/200/300', height: 400.0, width: double.infinity, fit: BoxFit.cover,),
              SizedBox(height: 16,),
              Text('A Peaceful Natural Escape', style: TextStyle(color: Colors.green),),
              SizedBox(height: 16,),
              Text('Discover, Explore, Reconnect', style: TextStyle(fontSize: 20),),
              SizedBox(height: 16,),
              Text('Discover the beauty of nature through breathtaking landscapes, peaceful forests, and stunning mountain views. Explore remarkable destinations, enjoy the fresh air, and reconnect with the natural world. From quiet lakes to scenic, trails, every journey offers a new experience. let nature inspire your next adventures and creat unforgetable memories along the way.'),
              SizedBox(height: 16,),
              SingleChildScrollView(
                child: Row(
                  children: [
                    _BuildGalleryImage('https://picsum.photos/id/10/300/200'),
                    SizedBox(width: 16,),
                    _BuildGalleryImage('https://picsum.photos/id/29/300/200'),
                    SizedBox(width: 16,),
                    _BuildGalleryImage('https://picsum.photos/id/37/300/200'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _BuildGalleryImage(String url){
  return ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Image.network(
      url,
      height: 300.0,
      width: 150.0,
      fit: BoxFit.cover,
    ),
  );
}