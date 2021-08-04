import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculationPage extends StatefulWidget {
  const CalculationPage({Key? key}) : super(key: key);

  @override
  _CalculationPageState createState() => _CalculationPageState();
}

class _CalculationPageState extends State<CalculationPage> {
  var weightMetric = 'kg';
  var heightMetric = 'cm';
  var weightEnglish = 'lb';
  var heightImpr1 = 'ft';
  var heightImpr2 = 'inch';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
        child: Center(
          child: Column(
            children: [
              Text('BMI Calculator'),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 30,
              ),

              // -----------   Weight Metrics
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
                      height: 15,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: ' Your weight',
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    Text(weightMetric),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),

              // -----------   Height Metrics
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
                      height: 15,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: ' Your Height',
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    Text(heightMetric),
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
                  onPressed: () {}),

              SizedBox(
                height: 15,
              ),

              // Weight Imperial
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
                      height: 15,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: ' Your Height',
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    Text(weightEnglish),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
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
                      width: 40,
                      height: 15,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: ' ft',
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    Text(heightImpr1),
                    SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      width: 40,
                      height: 15,
                      child: TextField(
                          decoration: InputDecoration(
                        hintText: ' inch',
                      )),
                    ),
                    Text(heightImpr2),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
