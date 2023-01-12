import 'package:flutter/material.dart';
import 'package:navigation_routing/Pages/homepage.dart';
import 'package:navigation_routing/Pages/second_page.dart';
import 'package:navigation_routing/Utils/Routes/route.dart';
import 'package:navigation_routing/Utils/Routes/routes_id.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // If we are deaclaring routes then no need to define home property, Instead we use initialRoute
      //home: HomePage(),
      initialRoute: RoutesId.homePage,
      onGenerateRoute: RouterNavigate.generateRoute,
      /*  routes: <String, WidgetBuilder>{
        '/': (context) => HomePage(),
        '/secondpage': (context) => SecondPage(),
        ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen(),
      }, */
      /* onGenerateRoute: (settings) {
        if (settings.name == PassArgumentsScreen.routeName) {
          final args = settings.arguments as ScreenArguments;
          return MaterialPageRoute(builder: ((context) {
            return PassArgumentsScreen(
                title: args.title, message: args.message);
          }));
        }
        assert(false, 'Need to implement ${settings.name}');
        return null;
      }, */
    );
  }
}
/*
1st = Navigator push and pop...its works as a stack
2nd = namedRoute... we defines routes to the materialApp and
named the different routes and navigate its whenever needed. 
its also works as a stack
3rd = We can pass arguments through NameRoutes and we can extract those 
arguments by ModalRoute.of(context)!.settings.arguments and onGenerateRoutes methods
 */