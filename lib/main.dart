import 'package:flutter/material.dart';
import 'package:rr_flutter7/post_screen.dart';

void main() {
  runApp(const MainApp());
}

//TODO: Maybe Add autogeenration for json (json_serializable and build_runner)).
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostScreen(),
    );
  }
}
