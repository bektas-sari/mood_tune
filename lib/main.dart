import 'package:flutter/material.dart';
import 'mood_selection_screen.dart';

void main() {
  runApp(MoodTuneApp());
}

class MoodTuneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mood Tune',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Color(0xFFF6F6F6),
        textTheme: Typography.blackCupertino,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black87,
        ),
      ),
      home: MoodSelectionScreen(),
    );
  }
}
