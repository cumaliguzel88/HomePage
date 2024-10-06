import 'package:cumaxfit_home/util/app_function_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //const padding
    final double horizatalPadding = 40.0;
    final double verticalPadding = 45.0;
    //app function list
    final List appFunction = [
      //[name,image path]
      ["Gym Track", "assets/exercise-routine.png"],
      ["Todo List", "assets/schedule.png"],
      ["Gym Program", "assets/training-program.png"],
      ["Gym Analytics", "assets/analytics.png"],
    ];
    return Scaffold(
      backgroundColor: Colors.grey[400],
      drawer: Drawer(
        backgroundColor: Colors.grey[400],
        child: Column(
          children: [
            //App icon image
            //HEADER app icon
            DrawerHeader(
              child: Image.asset("assets/dumbbell.png"),
            ),
            // home page
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E "),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            //settings page
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S "),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "SettingsPageRoute");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text(
          "C U M A X F I T",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: horizatalPadding, vertical: verticalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //App icon image
            Center(
              child: Image.asset(
                "assets/dumbbell.png",
                height: 200,
                width: 200,
              ),
            ),
            // welcome home user(if user name what ever)
            const Text(
              "Welcome Home,",
              style: TextStyle(fontSize: 16),
            ),

            const Text(
              "USER NAME",
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 2,
              color: Colors.grey,
            ),
            //grid view app function
            Expanded(
                child: GridView.builder(
              itemCount: appFunction.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return AppFunctionBox(
                  appFunctionName: appFunction[index][0],
                  imagePath: appFunction[index][1],
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
