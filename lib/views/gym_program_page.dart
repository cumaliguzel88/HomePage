import 'package:flutter/material.dart';

class GymProgramPage extends StatelessWidget {
  const GymProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Gym Program",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gym Program Page ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
