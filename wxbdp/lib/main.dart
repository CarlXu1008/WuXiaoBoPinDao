import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import './Config/application.dart';
import './Config/routers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  MyApp() {
    final router = Router();
    Routers.configureRoutes(router);
    Application.router = router;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Application.router.generator,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      )
    );
  }
}

