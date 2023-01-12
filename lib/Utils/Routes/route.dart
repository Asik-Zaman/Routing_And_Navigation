import 'package:flutter/material.dart';
import 'package:navigation_routing/Utils/Pages/firstScreen.dart';
import 'package:navigation_routing/Utils/Pages/homePage.dart';
import 'package:navigation_routing/Utils/Pages/secondScreen.dart';
import 'package:navigation_routing/Utils/Routes/routes_id.dart';

class RouterNavigate {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesId.homePage:
        return MaterialPageRoute(builder: (context) => HomePageAnother());
      case RoutesId.firstScreen:
        return MaterialPageRoute(
            builder: (context) => FirstScreen(
                  data: settings.arguments as Map,
                ));
      case RoutesId.secondScreen:
        return MaterialPageRoute(builder: (context) => SecondScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
