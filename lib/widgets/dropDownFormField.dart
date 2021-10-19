import 'package:flutter/material.dart';

String selectedValue = 'One';

class DropDownFormWidget extends StatefulWidget {
  const DropDownFormWidget({Key? key}) : super(key: key);

  @override
  _DropDownFormWidgetState createState() => _DropDownFormWidgetState();
}

class _DropDownFormWidgetState extends State<DropDownFormWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.redAccent, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.redAccent, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
        dropdownColor: Colors.white,
        value: selectedValue,
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        items: <String>['One', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList());
  }
}
