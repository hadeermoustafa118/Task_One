import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class CountryTextField extends StatelessWidget {
  const CountryTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Phone Number',
          style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
        ),
        SizedBox(
          height: 10.0,
        ),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Phone number is not registered';
            }
          },
          decoration: InputDecoration(
            hintText: '1009874151',
            hintStyle: TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.teal),
              borderRadius: BorderRadius.circular(8),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.red),
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 2),
            prefixIcon: CountryCodePicker(
              initialSelection: 'EG',
              textStyle: TextStyle(fontSize: 16, color: Colors.black),
              showFlag: false,
            ),
          ),
        ),
      ],
    );
  }
}
