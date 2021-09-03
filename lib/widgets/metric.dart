import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

typedef void StringCallback(double height, double weight);

class MetricCard extends StatelessWidget {
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  final StringCallback callback;

  MetricCard({required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: 200,
            height: 50,
            child: Row(
              children: [
                Text('Weight'),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 100,
                  height: 35,
                  child: TextField(
                    controller: weightController,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.red)),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  ),
                ),
                Text('kg'),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: Row(
              children: [
                Text('Height'),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 100,
                  height: 35,
                  child: TextField(
                    controller: heightController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.red)),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  ),
                ),
                Text('cm'),
              ],
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(80, 100, 900, 1),
                onPrimary: Colors.white70,
                elevation: 6,
                shadowColor: Colors.teal,
              ),
              child: Text('Calculate Now'),
              onPressed: () {
                print('here');
                callback( double.parse(weightController.text), double.parse(heightController.text));
              }),
        ],
      ),
    );
  }
}
