import 'package:flutter/material.dart';


class CalorieCalculatorPage extends StatefulWidget {
  @override
  _CalorieCalculatorPageState createState() => _CalorieCalculatorPageState();
}

class _CalorieCalculatorPageState extends State<CalorieCalculatorPage> {
  int age=0;
  double height=0.0;
  double weight=0.0;
  double calories=0.0;
  String? b=null;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade500,
      appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent.shade400,
          title: Text('Kalori Hesaplayıcı',
              style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1)
          )
          ,centerTitle: true
      ),
      body: Form(
        key: _formKey,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              hint: Text('cinsiyet seç'),
              value: b,
              items: [
                DropdownMenuItem(
                  child: Text('ERKEK'),
                  value: 'ERKEK',

                ),
                DropdownMenuItem(
                  child: Text('BAYAN'),
                  value: 'BAYAN',

                ),
              ],
              onChanged: (value) {
                setState(() {
                  b =value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Yaşınızı girin',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  age = int.parse(value);
                });
              },
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'boyunu gir',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  height = double.parse(value);
                });
              },
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'kilonuzu girin',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  weight = double.parse(value);
                });
              },
            ),

            Container(
                width: 160.0,
                child: ElevatedButton(
                  child: const Text('Hesaplama'),
                  onPressed: () {
                    if (b=='BAYAN')
                    {
                      setState(() {
                        calories = calculateCalories2(age, height, weight);
                      });
                    }
                    else if (b=='ERKEK')
                    {
                      setState(() {
                        calories = calculateCalories(age, height, weight);
                      });
                    }

                  }
                  ,
                )
            ),

            // Container(
            //   child: ElevatedButton(
            //   onPressed: () {
            //     if (_formKey.currentState.validate()) {
            //       _formKey.currentState.save();
            //       setState(() {
            //         calories = calculateCalories(age, height, weight);
            //       });
            //     }
            //   },
            //         Text('Calculate'),
            // ),
            // )
            if (calories != null)
              Text(
                'yakman gerek $calories kalori',
                style: TextStyle(fontSize: 20),
              ),
          ],
        ),
      ),
    );
  }
}
double calculateCalories(int age, double height, double weight) {
  // Calculate the number of calories using the Harris-Benedict equation
  return (6.2 * weight) + (12.7 * height) - (6.76 * age) + 66;
}
double calculateCalories2(int age, double height, double weight) {
  // Calculate the number of calories using the Harris-Benedict equation
  return (4.35 * weight) + (4.7 * height) - (4.7 * age) + 655.1;
}
