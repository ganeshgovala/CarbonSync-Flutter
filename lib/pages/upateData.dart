// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers


import 'package:carbonsync/supporting_widget/carbonfootprintform.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Updatedata extends StatefulWidget {
  TextEditingController _excavationController = TextEditingController();
  TextEditingController _transportationDeiselController = TextEditingController();
  TextEditingController _transportationPetrolController = TextEditingController();
  TextEditingController _machineryDieselController = TextEditingController();
  TextEditingController _machineryElectricityController = TextEditingController();
  TextEditingController _othersController = TextEditingController();
  Updatedata({super.key});

  @override
  State<Updatedata> createState() => _UpdatedataState();
}

class _UpdatedataState extends State<Updatedata> {

  Future<void> addData() async {

    DateTime date = DateTime.now();
    String _date = "${date.day} - ${date.month} - ${date.year}";

    if(widget._excavationController.text != "" &&
       widget._transportationDeiselController.text != "" &&
       widget._transportationPetrolController.text != "" &&
       widget._machineryDieselController.text != "" &&
       widget._machineryElectricityController.text != "" && 
       widget._othersController.text != ""
    ) 
    {
      Map<String, String> data = ({
        'Excavation' : widget._excavationController.text,
        'TransportationDeisel' : widget._transportationDeiselController.text,
        'TransportationPetrol' : widget._transportationPetrolController.text,
        'MachineryDeisel' : widget._machineryDieselController.text,
        'MachineryElectricity' : widget._machineryElectricityController.text,
        'Others' : widget._othersController.text,
      });

      FirebaseFirestore.instance
        .collection('DayWiseData')
        .doc(_date.toString())
        .collection('data')
        .add(data);
    } else {
      showDialog(
        context: context, 
        builder: ((context) {
          return AlertDialog(
            title: Text("Some Input Fields are empty"),
          );
        })
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();
    String _date = "${date.day} / ${date.month} / ${date.year}";
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 230, 227, 227),
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Update Data", style: TextStyle(
                      color: Colors.black,
                      fontSize: 54,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text("Date Today : ", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        )),
                        Text(_date, style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ))
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        CarbonFootprintForm(name: "Excavation", inputCount: 1, label1: "Amount of Coal Produced", label2: "", controller1: widget._excavationController, controller2: widget._excavationController,),
                        CarbonFootprintForm(name: "Transportation", inputCount: 2, label1: "Total Diesel Consumed", label2: "Total Petrol Consumed", controller1: widget._transportationDeiselController, controller2: widget._transportationPetrolController,),
                        CarbonFootprintForm(name: "Machinery", inputCount: 2, label1: "Total Diesel Consumed", label2: "Total Electricity Consumed", controller1: widget._machineryDieselController, controller2: widget._machineryElectricityController,),
                        CarbonFootprintForm(name: "Others", inputCount: 2, label1: "Type of Material used", label2: "Amount of material used", controller1: widget._othersController, controller2: widget._othersController,),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            addData();
                            // widget._excavationController.text = "";
                            // widget._transportationDeiselController.text = "";
                            // widget._transportationPetrolController.text = "";
                            // widget._machineryDieselController.text = "";
                            // widget._machineryElectricityController.text = "";
                            // widget._othersController.text = "";
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                            child: Text("Submit", style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800
                            ),),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
