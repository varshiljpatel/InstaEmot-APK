import 'package:flutter/material.dart';
import 'package:insta_emot/Home.dart';
import 'package:camera/camera.dart';

List<CameraDescription>? cameras;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "InstaEmot",

      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),

      home: const Home(),
    );
  }
}
