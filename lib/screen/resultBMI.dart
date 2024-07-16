import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  Result(
      {super.key, required this.height, required this.age, required this.weight, required this.result, required this.gender,});

  final double height;

  final int age;

  final int weight;

  final double result;

  final bool gender ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text("weight : $weight",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Text("Height  :${height.round()} ",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Text("Gender : ${gender ? "Male" : "female"}",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Text("Age : $age",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Text("Result : ${result.round()}",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
