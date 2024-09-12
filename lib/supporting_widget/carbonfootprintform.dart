// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';

class CarbonFootPrintForm extends StatelessWidget {
  const CarbonFootPrintForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Carbon Footprint Calculator')),
        body: CarbonFootprintForm(),
      ),
    );
  }
}

class CarbonFootprintForm extends StatefulWidget {
  @override
  _CarbonFootprintFormState createState() => _CarbonFootprintFormState();
}

class _CarbonFootprintFormState extends State<CarbonFootprintForm> {
  final _electricityController = TextEditingController();
  final _gasController = TextEditingController();
  double carbonFootprint = 0.0;

  void _calculateFootprint() {
    setState(() {
      // Placeholder formula for calculation
      double electricity = double.tryParse(_electricityController.text) ?? 0.0;
      double gas = double.tryParse(_gasController.text) ?? 0.0;
      carbonFootprint = electricity * 0.233 + gas * 0.185; // Dummy coefficients
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Excavation",
            style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 50,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
         Row(
           children: [
            Text(
              "Coal Extracted : ",
              style: TextStyle(
                fontFamily: 'Courier',
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 20),
            SizedBox(
              width: 120,
              height: 40,
              child: TextField(
                   decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                      )
                    ),
                   ),
               ),
            ),
           ],
         ),
          SizedBox(
            height: 20,
          ),
          TextField(
             decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Fuel"
             ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Submit'),
          ),
          SizedBox(height: 20),

          // Text('Carbon Footprint: ${carbonFootprint.toStringAsFixed(2)} tones CO2'),
        ],
      ),
    );
  }
}
