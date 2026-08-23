import 'package:flutter/material.dart';
import 'screens/alarm_screen.dart';

void main() {
  runApp(const AlarmApp());
}

class AlarmApp extends StatelessWidget {
  const AlarmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alarmas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF1A1A1A),
        fontFamily: 'Roboto',
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF1A5C3A),
          surface: Color(0xFF1A1A1A),
          onSurface: Color(0xFFF5F5DC),
        ),
        useMaterial3: true,
      ),
      home: const AlarmScreen(),
    );
  }
}