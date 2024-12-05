import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(title: 'Hello, World!'));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Text(
                'Contador: $counter',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                setState(() {
                  counter++;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              child: Text('Resetar Contador'),
            ),
          ],
        ),
      ),
    );
  }
}