import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  ScrollController _scroll = new ScrollController();

  List<int> _numbers = new List();
  int _lastItem = 0;

  @override
  void initState() {
    super.initState();
    addNums();

    _scroll.addListener(() {
      if (_scroll.position.pixels == _scroll.position.maxScrollExtent) {
        addNums();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return RefreshIndicator(
      onRefresh: getPage,
      child: ListView.builder(
        controller: _scroll,
        itemCount: _numbers.length,
        itemBuilder: (BuildContext context, int index) {
          final image = _numbers[index];
          return FadeInImage(
            image: NetworkImage('https://picsum.photos/seed/$image/500/300'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          );
        },
      ),
    );
  }

  void addNums() {
    for (var i = 0; i < 10; i++) {
      _lastItem++;
      _numbers.add(_lastItem++);
    }
    setState(() {});
  }

  Future<Null> getPage() async {
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      _numbers.clear();
      _lastItem++;
      addNums();
    });
    return Future.delayed(duration);
  }
}
