import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/component/RoundButton.dart';

import '../component/InternetException.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.red,
          ),
        ),
      );
  }
}
