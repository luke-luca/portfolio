import 'package:flutter/material.dart';
import 'package:portfolio/bootstrap.dart';
import 'package:portfolio/consts.dart';

void main() {
  bootstrap(() => const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.shadedColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Text('Hi')],
          ),
        ),
      ),
    );
  }
}
