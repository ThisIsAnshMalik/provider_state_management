import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/provider.dart';

class AppThemeScreen extends StatefulWidget {
  const AppThemeScreen({Key? key}) : super(key: key);

  @override
  State<AppThemeScreen> createState() => _AppThemeScreenState();
}

class _AppThemeScreenState extends State<AppThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text("App Theme Screen")),
      body: Column(
        children: [
          RadioListTile(
              title: const Text("Light Mode"),
              value: ThemeMode.light,
              groupValue: themeProvider.thememode,
              onChanged: ((value) {
                themeProvider.setTheme(ThemeMode.light);
              })),
          RadioListTile(
              title: const Text("dark Mode"),
              value: ThemeMode.dark,
              groupValue: themeProvider.thememode,
              onChanged: ((value) {
                themeProvider.setTheme(ThemeMode.dark);
              })),
          RadioListTile(
              title: const Text("System Mode"),
              value: ThemeMode.system,
              groupValue: themeProvider.thememode,
              onChanged: ((value) {
                themeProvider.setTheme(ThemeMode.system);
              })),
        ],
      ),
    );
  }
}
