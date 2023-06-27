import 'dart:async';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Timer timer;

  ///변하는 색깔
  List<Color> arrColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple
  ];

  ///다음색 배열로 변환해주는 변수
  int _nextcolor = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        _nextcolor++;
        if (_nextcolor >= arrColors.length) {
          _nextcolor = 0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () => setState(() {
          _nextcolor++;
          if (_nextcolor >= arrColors.length) {
            _nextcolor = 0;
          }
        }),
        child: Container(
          color: arrColors[_nextcolor],
        ),
      ),
    );
  }
}
