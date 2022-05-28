import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    Myapp()
  );
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget> [
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.white,
                child: Text('Container 1'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


