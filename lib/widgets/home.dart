import 'package:bmi_calculator_2/widgets/imperial.dart';
import 'package:bmi_calculator_2/widgets/metric.dart';
import 'package:flutter/material.dart';

class CalculationPage extends StatefulWidget {
  // const CalculationPage({Key? key}) : super(key: key);
  @override
  _CalculationPageState createState() => _CalculationPageState();
}

class _CalculationPageState extends State<CalculationPage> {
  bool selection = true;

  final weightValue = 0;
  final heightValue = 0;

  void insertValue() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 80, 8, 8),
          child: Center(
            child: Column(
              children: [
                //Row(children: [ selection ? Test2() : Test1()],),
                //buildSwitch123(),
                Container(
                    width: 300,
                    height: 400,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildSwitch123(),
                          MetricCard(
                              callback: (weight, height) => {
                                print(weight)
                              }),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSwitch123() => Transform.scale(
        scale: 1,
        child: Switch.adaptive(
            // thumbColor: MaterialStateProperty.all(Colors.red),
            // trackColor: MaterialStateProperty.all(Colors.orange),
            activeColor: Colors.blueAccent,
            activeTrackColor: Colors.blue.withOpacity(0.45),
            value: selection,
            onChanged: (value) => setState(() => this.selection = value)),
      );
}
