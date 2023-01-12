import 'package:flutter/material.dart';
import 'package:navigation_routing/Utils/Routes/routes_id.dart';

class FirstScreen extends StatelessWidget {
  final dynamic data;
  const FirstScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(data['name'])),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesId.secondScreen);
                },
                child: Text('Second Screen')),
          ],
        ),
      ),
    );
  }
}
