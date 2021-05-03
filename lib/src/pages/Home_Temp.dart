import 'dart:convert';

import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets Temp"),
      ),
      body: ListView(
        children: _createItemsShort(),
      ),
    );
  }

  List<Widget> _createItems() {
    List<Widget> list = new List<Widget>();

    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      // '..' referencia al objeto
      list..add(tempWidget)..add(Divider());
    }

    return list;
  }

  List<Widget> _createItemsShort() {
    return options.map((opt) {
      return Column(
        children: [
          ListTile(
            title: Text(opt + '!'),
            subtitle: Text('Something'),
            leading: Icon(Icons.add_circle_outline),
            trailing: Icon(Icons.arrow_drop_down_outlined),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
