import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MetricCard extends StatefulWidget {
  const MetricCard({Key? key}) : super(key: key);

  @override
  _MetricCardState createState() => _MetricCardState();
}

class _MetricCardState extends State<MetricCard> {
  var weightMetric = 'kg';
  var heightMetric = 'cm';

  @override
  Widget build(BuildContext context) {
    return Container( child: Column( children: [
      SizedBox(width: 200, height: 50,
        child: Row(children: [
            Text('Weight'),
            SizedBox(width: 10,),
            SizedBox(
              width: 100, height: 15,
              child: TextField(
                decoration: InputDecoration(hintText: ' Your weight',),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            Text(weightMetric),
          ],
        ),
      ),
      SizedBox(height: 30,),
      SizedBox( width: 200, height: 50,
        child: Row(
          children: [
            Text('Height'),
            SizedBox(width: 10,),
            SizedBox(
              width: 100, height: 15,
              child: TextField(
                decoration: InputDecoration(hintText: ' Your Height',),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            Text(heightMetric),
          ],
        ),
      ),
    ],),
    );
  }
}
