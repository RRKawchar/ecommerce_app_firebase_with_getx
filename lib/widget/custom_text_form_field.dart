import 'package:ecommerece_app_with_firebase_and_mvvm/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {


  final String text;
  final String hintText;
  final Function(String?)? onSaved;
  final String Function(String?)? validator;
  const CustomTextFormField({Key? key, required this.text, required this.hintText, required this.onSaved, required this.validator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(
            text:text,
            fontSize: 14,
            color: Colors.grey.shade900,
          ),
          TextFormField(
            onSaved: onSaved,
            validator: validator,
            decoration:InputDecoration(
                hintText: hintText,
                hintStyle:const TextStyle(color: Colors.black),
                fillColor: Colors.white
            ),
          )
        ],
      ),
    );
  }
}
