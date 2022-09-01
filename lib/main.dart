import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/provider.dart';
import 'package:provider_state_management/screens/Login_screen.dart';
import 'package:provider_state_management/screens/stateless_as_statefull.dart';

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
          ChangeNotifierProvider(create: ((context) => SliderProvider())),
          ChangeNotifierProvider(create: ((context) => ThemeProvider()))
        ],
        child: Builder(
          builder: (context) {
            final themeProvider = Provider.of<ThemeProvider>(context);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Provider state management',
              themeMode: themeProvider.thememode,
              darkTheme: ThemeData(brightness: Brightness.dark),
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: LoginScreen(),
            );
          },
        ));
  }
}
