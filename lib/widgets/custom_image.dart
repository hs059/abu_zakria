


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


/// Here I put the image name like assets/>>> so I don't repeat writing it
/// I use custom to png and svg images

class CustomPngImage extends StatelessWidget {
  final String imageName;
  final double height;
  final double width;
  final Color color;
  CustomPngImage({this.imageName, this.height, this.width, this.color});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$imageName.png',
      height: height ?? 30.h,
      width: width ?? 30.w,
      fit: BoxFit.fill,
      color: color,
    );
  }
}

class CustomSvgImage extends StatelessWidget {
  final String imageName;
  final double height;
  final double width;
  final Color color;
  CustomSvgImage({
    this.imageName,
    this.height,
    this.width,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/svg/$imageName.svg',
      color: color,
      height: height ?? 30.h,
      width: width ?? 30.w,
      fit: BoxFit.contain,
    );
  }
}
