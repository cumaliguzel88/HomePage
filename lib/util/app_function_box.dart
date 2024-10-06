import 'package:flutter/material.dart';

class AppFunctionBox extends StatelessWidget {
  //box variable
  final String appFunctionName;
  final String imagePath;
  const AppFunctionBox(
      {super.key, required this.appFunctionName, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Navigate the pages
        switch (appFunctionName) {
          case "Gym Track":
            Navigator.pushNamed(context, "GymTrack");
            break;
          case "Todo List":
            Navigator.pushNamed(context, "TodoList");
            break;
          case "Gym Program":
            Navigator.pushNamed(context, "GymProgram");
            break;
          case "Gym Analytics":
            Navigator.pushNamed(context, "GymAnalytics");
            break;
        }
      },
      child: Container(
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: Colors.green[500], borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              //image
              Image.asset(
                imagePath,
                height: 85,
                fit: BoxFit.cover,
              ),
              //App function name
              const SizedBox(
                height: 5,
              ),
              Text(
                textAlign: TextAlign.center,
                appFunctionName,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
