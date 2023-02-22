import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData iconData;
  final TextInputType keyboaredTybe;
   final int? num;
   IconData? suffixIcon;
   CustomTextField({
    required this.keyboaredTybe,
    
    this.suffixIcon,
    required this.label,
    this.num,
    required this.iconData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboaredTybe,
      obscureText:num != null ?true:false,
      decoration: InputDecoration(
      
          label: Text(label),
          labelStyle: const TextStyle(color: kColor, fontWeight: FontWeight.bold),
          //suffixIcon: Icon(Icons.email,color: kColor),
          border: InputBorder.none,

          filled: true,
          suffixIcon:suffixIcon != null? Icon(suffixIcon,color: kColor,):null,
           isDense: true,
          prefixIcon: Icon(iconData, color: kColor)),
    );
  }
}
