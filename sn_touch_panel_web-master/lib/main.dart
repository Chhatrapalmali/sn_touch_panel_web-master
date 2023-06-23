import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/helper/theme.dart';

import 'views/home_screen/widget_tree.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // MQTTService().initializeAndConnect();
    return GetMaterialApp(
      title: 'Smart Node Touch',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: lightThemeData(),
      darkTheme: darkThemeData(),
      home: const SafeArea(child: WidgetTree()),
    );
  }
}
