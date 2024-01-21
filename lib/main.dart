import 'package:flutter/material.dart';

import 'Page/check_page.dart';
import 'Page/design_button.dart';
import 'Page/home_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home:CheckPage(),
    );
  }
}
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('CGPA Calculator'),
//         ),
//         body: CGPACalculator(),
//       ),
//     );
//   }
// }
//
// class CGPACalculator extends StatefulWidget {
//   @override
//   _CGPACalculatorState createState() => _CGPACalculatorState();
// }
//
// class _CGPACalculatorState extends State<CGPACalculator> {
//   TextEditingController numberController =TextEditingController();
//   List<double> sgpaList = [];
//   double totalCGPA = 0.0;
//
//   void _addSGPA(double sgpa) {
//     setState(() {
//       sgpaList.add(sgpa);
//       totalCGPA = _calculateTotalCGPA();
//     });
//   }
//
//   double _calculateTotalCGPA() {
//     double sum = sgpaList.reduce((value, element) => value + element);
//     return sum / sgpaList.length;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           TextField(
//           controller: numberController,
//             keyboardType: TextInputType.numberWithOptions(decimal: true),
//             decoration: InputDecoration(labelText: 'Enter SGPA'),
//             onSubmitted: (value) {
//               double sgpa = double.tryParse(value) ?? 0.0;
//               if (sgpa > 0.0 && sgpa <= 4.0) {
//                 _addSGPA(sgpa);
//               } else {
//                 // Handle invalid input
//                 print('Invalid SGPA. Please enter a value between 0.0 and 4.0');
//               }
//             },
//           ),
//           SizedBox(height: 16),
//           TextButton(onPressed: (){
//             double sgpa = double.tryParse(numberController.text) ?? 0.0;
//             if (sgpa > 0.0 && sgpa <= 4.0) {
//               _addSGPA(sgpa);
//             } else {
//               // Handle invalid input
//               print('Invalid SGPA. Please enter a value between 0.0 and 4.0');
//             }
//           }, child: Text('Save')),
//           SizedBox(height: 16),
//           Text('Total CGPA: ${totalCGPA.toStringAsFixed(2)}'),
//         ],
//       ),
//     );
//   }
// }



