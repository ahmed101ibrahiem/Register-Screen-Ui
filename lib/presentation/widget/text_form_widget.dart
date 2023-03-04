import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final IconData iconData;
  final TextInputType keyboaredTybe;
  bool obscureText ;
  String? Function(String? val)? validate;
   final int? num;
   IconData? suffixIcon;
   CustomTextField({
    required this.keyboaredTybe,
    this.validate,
    this.obscureText =false,
    this.suffixIcon,
    required this.label,
    this.num,
    required this.iconData,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboaredTybe,
      validator: widget.validate,
      obscureText:widget.obscureText,
      decoration: InputDecoration(
          label: Text(widget.label),
          labelStyle: const TextStyle(color: kColor, fontWeight: FontWeight.bold),
          //suffixIcon: Icon(Icons.email,color: kColor),
          border: InputBorder.none,
          filled: true,
          suffixIcon:widget.suffixIcon != null? IconButton(onPressed: (){
            setState(() {
              widget.obscureText = !widget.obscureText;
            });
          },color: kColor, icon:widget.obscureText? Icon(Icons.visibility_sharp):Icon(Icons.visibility_off_sharp),):null,
           isDense: true,
          prefixIcon: Icon(widget.iconData, color: kColor)),
    );
  }
}
