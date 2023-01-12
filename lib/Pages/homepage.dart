import 'package:flutter/material.dart';
import 'package:navigation_routing/Pages/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Homepage Z')),
      body: Center(
        child: Column(children: [
          TextButton(
              onPressed: () {
                //3rd Method
                Navigator.pushNamed(context, ExtractArgumentsScreen.routeName,
                    arguments: Arguments('Asik', 'Zaman'));

                //2nd Method
                /*  Navigator.pushNamed(
                  context,
                  '/secondpage',
                ); */

                //1st Method
                /* Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return SecondPage();
                }))); */
              },
              child: Text('Tap go navigate Extract page')),
        
        ]),
      ),
    );
  }
}

class ExtractArgumentsScreen extends StatelessWidget {
  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    final Arguments args =
        ModalRoute.of(context)!.settings.arguments as Arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title_bar),
      ),
      body: Center(
        child: Text(args.text_message),
      ),
    );
  }
}

class Arguments {
  final String title_bar;
  final String text_message;

  Arguments(this.title_bar, this.text_message);
}
