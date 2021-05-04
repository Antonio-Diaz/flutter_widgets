import 'package:flutter/material.dart';

import 'package:flutter_widgets/src/pages/Alert_page.dart';
import 'package:flutter_widgets/src/pages/Avatars_page.dart';
import 'package:flutter_widgets/src/pages/Home_Page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage()
  };
}
