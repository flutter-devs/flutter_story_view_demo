
import 'package:flutter/material.dart';
import 'package:flutter_story_view_demo/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),

  );
}

