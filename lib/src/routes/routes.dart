import 'package:flutter/material.dart';
import 'package:widgets/src/pages/alert_page.dart';
import 'package:widgets/src/pages/animated_container.dart';
import 'package:widgets/src/pages/avatar_page.dart';
import 'package:widgets/src/pages/card_page.dart';
import 'package:widgets/src/pages/home_page.dart';
import 'package:widgets/src/pages/input_page.dart';
import 'package:widgets/src/pages/listview_page.dart';
import 'package:widgets/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext contex) => HomePage(),
    '/alert': (BuildContext contex) => AlertPage(),
    '/avatar': (BuildContext contex) => AvatarPage(),
    '/card': (BuildContext contex) => CardPage(),
    '/animatedContainer': (BuildContext contex) => AnimatedContainerPage(),
    '/inputs': (BuildContext contex) => InputPage(),
    '/slider': (BuildContext contex) => SliderPage(),
    '/list': (BuildContext contex) => ListPage(),
  };
}
