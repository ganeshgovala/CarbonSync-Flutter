// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class Calculations {

//   int totalCoal = 0;

//   Widget calculations() {
//     Stream<QuerySnapshot> getTasks() {
//       return FirebaseFirestore.instance
//           .collection('DayWiseData')
//           .doc('13 - 9 - 2024')
//           .collection('data')
//           .snapshots();
//     }

//     return StreamBuilder<QuerySnapshot>(
//       stream: getTasks(),
//       builder: (context, snapshot) {
//         if (snapshot.hasError) {
//           return Text("There is an error");
//         }

//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return CircularProgressIndicator();
//         }

//         final data = snapshot.data;

//         // Ensure data is not null and has documents
//         if (data == null || data.docs.isEmpty) {
//           return Text("No data available");
//         }

//         double total = 0;

//         // Loop through all documents and calculate total
//         for (var doc in data.docs) {
//           total += (doc['Excavation'] != null
//                   ? double.tryParse(doc['Excavation'].toString()) ?? 0
//                   : 0) *
//               1;
//           total += (doc['MachineryDeisel'] != null
//                   ? double.tryParse(doc['MachineryDeisel'].toString()) ?? 0
//                   : 0) *
//               2.68;
//           total += (doc['MachineryElectricity'] != null
//                   ? double.tryParse(doc['MachineryElectricity'].toString()) ?? 0
//                   : 0) *
//               0.82;
//           total += (doc['TransportationDeisel'] != null
//                   ? double.tryParse(doc['TransportationDeisel'].toString()) ?? 0
//                   : 0) *
//               2.68;
//           total += (doc['TransportationPetrol'] != null
//                   ? double.tryParse(doc['TransportationPetrol'].toString()) ?? 0
//                   : 0) *
//               2.3;
//           total += (doc['Others'] != null
//                   ? double.tryParse(doc['Others'].toString()) ?? 0
//                   : 0) *
//               2.68;

//           totalCoal = coal;
//         }

//         return Text(
//           total.toString(),
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 50,
//           ),
//         );
//       },
//     );
//   }

//   int total() {
//     return total;
//   }
// }
