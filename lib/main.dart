import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: App(),
      ),
    );

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int i = 0;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: controller1,
            ),
            TextField(
              controller: controller2,
            ),
            Text(
              i.toString(),
              style: TextStyle(
                  fontSize: 76.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange),
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          int a = int.parse(controller1.text);
          int b = int.parse(controller2.text);
          setState(() {
            i = a + b;
          });
        },
        icon: Icon(
          Icons.add_box,
          size: 36.0,
          color: Colors.pink,
        ),
      ),
    );
  }
}
