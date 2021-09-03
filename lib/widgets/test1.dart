import 'package:flutter/material.dart';
import 'dart:core';

class Test1 extends StatefulWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  _Test1State createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  // List<Quote> quotes = [
  //   Quote(author: 'Oswar Wilde', text:'Text 1'),
  //   Quote(author: 'David Osvaldo', text:'Text 2'),
  //   Quote(author: 'Maria Heronos', text:'Text 3'),
  // ];

  @override
  Widget build(BuildContext context) {
    // return Icon(Icons.attach_file);
    return Container( child: Column( children: [
      SizedBox(width:300,child: TextField())
    ],),
    );
  }
}

