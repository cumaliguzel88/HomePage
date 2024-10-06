import 'package:cumaxfit_home/views/gym_analytics.dart';
import 'package:cumaxfit_home/views/gym_program_page.dart';
import 'package:cumaxfit_home/views/gym_track_page.dart';
import 'package:cumaxfit_home/views/home_page.dart';
import 'package:cumaxfit_home/views/settings_page.dart';
import 'package:cumaxfit_home/views/todo_list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "SettingsPageRoute": (context) => const SettingsPage(),
        "GymTrack": (context) => const GymTrackPage(),
        "TodoList": (context) => const TodoListPage(),
        "GymProgram": (context) => const GymProgramPage(),
        "GymAnalytics": (context) => const GymAnalytics(),
      },
    );
  }
}
