import 'package:flutter/material.dart';
import 'package:navigation_routing/Utils/Routes/route.dart';
import 'package:navigation_routing/Utils/Routes/routes_id.dart';

class HomePageAnother extends StatelessWidget {
  const HomePageAnother({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesId.firstScreen,
                      arguments: {'name': 'Asik'});
                },
                child: Text('First Screen')),
          ],
        ),
      ),
    );
  }
}
