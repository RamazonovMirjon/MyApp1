import 'package:flutter/material.dart';
import 'package:peshot/core/components/theme_comp.dart';
import 'package:peshot/routes/my_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final MyRoute _myRoute = MyRoute();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'birinchi app',
      theme: ThemeComp.materialTheme,
      initialRoute: "/intro",
      onGenerateRoute: _myRoute.onGenerateRoute,
    );
  }
}
