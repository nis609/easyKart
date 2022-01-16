import 'package:flutter/cupertino.dart';

class BuildText extends StatelessWidget {
  const BuildText({
    Key? key,
    required this.text,
    required this.height,
    this.color,
    this.weight = FontWeight.w400,
    this.family = 'Poppins',
    this.align,
    this.textOverflow,
    this.maxLines,
  }) : super(key: key);

  final String? text;
  final double height;
  final Color? color;
  final FontWeight weight;
  final String family;
  final TextAlign? align;
  final TextOverflow? textOverflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: TextStyle(
        fontWeight: weight,
        fontSize: height/1.1,
        height: height/ 9,
        color: color,
        fontFamily: family,
      ),
      textAlign: align,
      overflow: textOverflow,
      maxLines: maxLines,
    );
  }
}