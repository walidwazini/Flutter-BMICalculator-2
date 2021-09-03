import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImperialCard extends StatefulWidget {
  //const ImperialCard({Key? key}) : super(key: key);

  @override
  _ImperialCardState createState() => _ImperialCardState();
}

class _ImperialCardState extends State<ImperialCard> {
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container( child: Column(children: [
      // Weight Imperial
      SizedBox(width: 200, height: 50,
        child: Row( children: [
            Text('Weight'),
            SizedBox(width: 10,),
            SizedBox(width: 100, height: 15,
              child: TextField(
                controller: weightController,
                decoration: InputDecoration(
                  hintText: ' Your Height',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            Text('lb'),
          ],
        ),
      ),
      SizedBox(height: 10,),
      SizedBox(
        width: 200,
        height: 50,
        child: Row(
          children: [
            Text('Height'),
            SizedBox(width: 10,),
            SizedBox(width: 40, height: 15,
              child: TextField(
                controller: heightController,
                decoration: InputDecoration(hintText: ' ft',),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            Text('ft'),
            SizedBox(width: 8,),
            SizedBox(width: 40, height: 15,
              child: TextField(
                  decoration: InputDecoration(
                    hintText: ' inch',
                  )),
            ),
            Text('inch'),
          ],
        ),
      ),

    ],),
    );
  }
}
