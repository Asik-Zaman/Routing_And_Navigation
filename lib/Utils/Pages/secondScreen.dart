import 'package:flutter/material.dart';
import 'package:navigation_routing/Utils/Routes/routes_id.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesId.homePage);
                },
                child: Text('HomePage')),
          ],
        ),
      ),
    );
  }
}
