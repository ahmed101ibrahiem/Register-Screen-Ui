import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height-28);
        path.quadraticBezierTo(size.width/4, size.height-40,size.width/2,size.height-20);
path.quadraticBezierTo(3/4 * size.width, size.height,size.width,size.height-10);
path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}