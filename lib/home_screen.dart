import 'dart:async';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Timer timer;
  List<Color> arrColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple
  ];
  int nextcolor = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        nextcolor++;
        if (nextcolor >= arrColors.length) {
          nextcolor = 0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () => setState(() {
          nextcolor++;
          if (nextcolor >= arrColors.length) {
            nextcolor = 0;
          }
        }),
        child: Container(
          color: arrColors[nextcolor],
        ),
      ),
    );
  }
}
