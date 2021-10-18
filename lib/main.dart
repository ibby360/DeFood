import 'package:flutter/material.dart';
import 'defood_theme.dart';
import 'screens/home.dart';

void main() {
  runApp(const DeFood());
}

class DeFood extends StatelessWidget {
  const DeFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = DefoodTheme.dark();
    // TODO: Apply Home widget
    // ignore: prefer_const_constructors
    return MaterialApp(
      theme: theme,
      title: 'DeFood',
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
