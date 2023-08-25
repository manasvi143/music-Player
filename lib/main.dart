import 'package:flutter/material.dart';

import 'package:music_player/tabs.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 4, 101, 185),
          ),
          iconButtonTheme: const IconButtonThemeData(
            style: ButtonStyle(
              iconColor: MaterialStatePropertyAll(Colors.white),
            ),
          ),
        ),
        home: const Tabs());
  }
}
