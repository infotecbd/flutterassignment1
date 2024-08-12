import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeActvity(),
    );
  }
}

class HomeActvity extends StatelessWidget {
  const HomeActvity({super.key});

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Greeting App"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("Hello World", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red)),
            Text("Welcome to Flutter", style: TextStyle(fontSize:19),
            ),
            SizedBox(height: 20),
            Image.network("https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png",  width: 150,
              height: 150,),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){MySnackBar("Button Pressed!",context);}, child: Text('Press Me'),
              style: ElevatedButton.styleFrom(  backgroundColor: Colors.green,),),

          ],
    )
    ),
      );
  }
}

