import 'package:flutter/material.dart';
import 'package:provider_state_management/screens/without_provider_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider state management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WithoutProviderScreen(),
    );
  }
}
