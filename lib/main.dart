import 'package:flutter/material.dart';
import 'package:push_app/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme().getTheme(),
      home: const Scaffold(
        body: Center(
          child: Text('Hello, Material 3!'),
        ),
      ),
    );
  }
}
