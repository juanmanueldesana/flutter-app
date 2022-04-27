import 'package:flutter/material.dart';
import 'package:primera_app_clase/main.dart';
import 'package:provider/provider.dart';
import '../provider/theme_provider.dart';
import '../widget/change_theme_button_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? "DarkTheme"
        : "LightTheme";

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text(MyApp.title),
            actions: [
              ChangeThemeButtonWidget(),
            ]),
        body: Center(
            child: Text("Hello in $text!",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ))));
  }
}
