import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screens/screens/second_page.dart';

import 'home_page.dart';

class ThirdPage extends StatelessWidget {
  ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Third Screen'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    child: Text("Go to First Screen"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }),
                ElevatedButton(
                    child: Text("Go to Second Screen"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage()));
                    })
              ],
            )));
  }
}
