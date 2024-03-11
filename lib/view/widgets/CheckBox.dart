import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool? valueCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: //getCheckBox(),
    );
  }

//   CheckBox getCheckBox() {
//     return Checkbox(
//         value: valueCheckbox,
//         onChanged: (value) {
//           valueCheckbox = value;
//           setState(() {});
//         });
//   }
// }
