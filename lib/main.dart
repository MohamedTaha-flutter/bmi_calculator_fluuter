import 'package:flutter/material.dart';
import 'package:untitled5/screen/BMI%20calculator.dart';
import 'package:untitled5/screen/login_screen.dart';
import 'package:untitled5/screen/messenger_screen.dart';

main()
{
  runApp(
     RunApp()
  );
}

class RunApp extends StatelessWidget {
  const RunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiCalculator(),
    );
  }
}
