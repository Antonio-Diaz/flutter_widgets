import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/providers/menu_providers.dart';
import 'package:flutter_widgets/src/util/icon_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets App'),
      ),
      body: _listView(),
    );
  }

  Widget _listView() {
    return FutureBuilder(
      future: menuProvider.loadData(),
/*       initialData: [],
 */
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print(snapshot.data);
        return ListView(
          children: _createItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _createItems(List<dynamic> data) {
    final List<Widget> options = [];

    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        subtitle: Text(element['texto']),
        leading: getIcons(element['icon']),
        trailing: Icon(
          Icons.arrow_drop_down_sharp,
          color: Colors.blue,
        ),
        onTap: () {},
      );

      options..add(widgetTemp)..add(Divider());
    });

    return options;
  }
}
