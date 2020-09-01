import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _heitgh = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
          child: AnimatedContainer(
        curve: Curves.fastOutSlowIn,
        width: _width,
        height: _heitgh,
        decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        duration: Duration(seconds: 1),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(
          Icons.play_arrow_outlined,
        ),
        onPressed: () => _change(),
      ),
    );
  }

  void _change() {
    final radom = Random();
    _width = radom.nextInt(300).toDouble();
    _heitgh = radom.nextInt(300).toDouble();
    _color = Color.fromRGBO(
        radom.nextInt(255), radom.nextInt(255), radom.nextInt(255), 1);
    setState(() {});
    _borderRadius = BorderRadius.circular(radom.nextInt(100).toDouble());
  }
}
