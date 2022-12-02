import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ksp_smarthome/features/core/screens/navbar_screen/navbar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ksp Smart Home',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const navBarScreen(),
      
    );
  }
}
