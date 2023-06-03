import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget{


  const TextFieldInput({super.key,required this.textcontroller, required this.texthint,  this.isPass = false, required this.textInputType});
  final String texthint;
  final bool isPass;
  final TextEditingController textcontroller;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return TextField(
      controller: textcontroller,
      decoration: InputDecoration(
        hintText: texthint,
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        contentPadding: EdgeInsets.all(8),
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }

}