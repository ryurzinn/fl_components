import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool isPassword;

  final String formProperty;
  final Map<String,dynamic> formValues;



  const CustomInputField({
    Key? key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon, this.keyboardType, this.isPassword = false, required this.formProperty,required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: 'Diego Ramirez',
      textCapitalization: TextCapitalization.words,
      keyboardType:keyboardType,
      obscureText: isPassword,
      onChanged: (value) => formValues[formProperty] = value,
      
      validator: (value){
        if (value == null) return ' este campo es required ';
        return value.length <3 ? 'minimo 3 characters' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        // prefixIcon: Icon(Icons.verified_user_outlined),
        suffixIcon:suffixIcon == null? null : Icon(suffixIcon),
        icon: icon == null? null : Icon(icon),
        
      ),
    );
  }
}