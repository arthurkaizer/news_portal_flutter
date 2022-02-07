import 'package:flutter/material.dart';

import 'routes.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portal de Noticias',
      theme: chuckThemedata,
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }

  final ThemeData chuckThemedata = ThemeData(
    fontFamily: 'Poppins',
    primaryColor: Color(0xFFC70039),
    iconTheme: IconThemeData(
      color: Color(0xFFC70039),
    ),
  );
}
