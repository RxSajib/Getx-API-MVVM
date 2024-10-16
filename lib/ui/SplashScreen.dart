import 'package:flutter/material.dart';

import '../data/AppException.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        throw InternetException("no internet");
      }),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
