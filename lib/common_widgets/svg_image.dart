import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImage extends StatelessWidget {
  final String path;
  final double? width;
  final double? height;
  final Color? color;

  const SvgImage(
      {Key? key, required this.path, this.width, this.height, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: width,
      height: height,
      color: color,
    );
  }
}
