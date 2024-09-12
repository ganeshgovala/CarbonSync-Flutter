// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CarbonFootprintForm extends StatefulWidget {
  final String name;
  final int inputCount;
  final String label1;
  final String label2;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  CarbonFootprintForm({
    required this.inputCount,
    required this.label1,
    required this.label2,
    required this.name,
    required this.controller1,
    required this.controller2,
    super.key,
  });
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
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width / 4.3,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.name,
              style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.label1 + ": ",
                  style: TextStyle(
                    fontFamily: 'Courier',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 75,
                  height: 40,
                  child: TextField(
                    controller: widget.controller1,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        width: 2,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        width: 2,
                      )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            widget.inputCount == 2 ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.label2 + ": ",
                  style: TextStyle(
                    fontFamily: 'Courier',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 75,
                  height: 40,
                  child: TextField(
                    controller: widget.controller2,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        width: 2,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        width: 2,
                      )),
                    ),
                  ),
                ),
              ],
            ) : Container(),
            // Text('Carbon Footprint: ${carbonFootprint.toStringAsFixed(2)} tones CO2'),
          ],
        ),
      ),
    );
  }
}
