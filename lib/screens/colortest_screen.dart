import 'dart:async';
import 'package:flutter/material.dart';

class ColorTestScreen extends StatefulWidget {
  const ColorTestScreen({super.key});

  @override
  State<ColorTestScreen> createState() => _ColorTestScreenState();
}

class _ColorTestScreenState extends State<ColorTestScreen> {
  late Timer timer;

  ///변하는 색깔
  List<Color> arrColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
    Colors.white,
    Colors.black
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
