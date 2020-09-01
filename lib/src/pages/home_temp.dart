import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Component Temp')),
        body: ListView(children: _createShortItems()));
  }

  /*List<Widget> _createItems() {
    List<Widget> list = new List<Widget>();

    for (String opt in options) {
      final tempWidget = new ListTile(
        title: Text(opt),
      );
      list..add(tempWidget)..add(Divider());
    }

    return list;
  }*/

  List<Widget> _createShortItems() {
    return options.map((item) {
      return Column(
        children: <Widget>[
          new ListTile(
            title: Text(item + '!'),
            subtitle: Text('Cualquier Cosa'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
