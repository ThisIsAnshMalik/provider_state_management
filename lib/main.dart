import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/provider.dart';
import 'package:provider_state_management/screens/favourite/favourite_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: ((context) => CountProvider())),
          ChangeNotifierProvider(create: ((context) => FavouriteProvider())),
          ChangeNotifierProvider(create: ((context) => SliderProvider()))
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Provider state management',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const FavouriteScreen(),
        ));
  }
}
