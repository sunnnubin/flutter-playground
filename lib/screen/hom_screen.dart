import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Title'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "test",
                  style: TextStyle(fontSize: 50),
                ),
                const SizedBox(
                  height: 200,
                ),
                ElevatedButton(
                  onPressed: () {
                    debugPrint('btn');
                  },
                  child: const Text("data"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
