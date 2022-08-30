import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/count_provider.dart';
import 'package:provider_state_management/screens/slider_example.dart';
import 'package:provider_state_management/screens/timer_screens/with_provider_screen.dart';
import 'package:provider_state_management/screens/timer_screens/without_provider_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: ((context) => CountProvider()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Provider state management',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const SliderExampleScreen(),
        ));
  }
}
