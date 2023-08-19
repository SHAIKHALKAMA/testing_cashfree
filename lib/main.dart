import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing_cashfree/utils/routes/myroutes.dart';
import 'package:testing_cashfree/utils/routes/nav_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: RouteConstants.bottomview,
      getPages: NavRouter.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
