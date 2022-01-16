import 'package:flutter/material.dart';
import 'misc.dart';

class TrasparentContainer extends StatelessWidget {
  const TrasparentContainer({
    Key? key,
    required this.width,
    required this.child,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 18,
      margin: const EdgeInsets.all(0),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1.5),
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(50),
      ),
      child: child,
    );
  }
}

Widget buildDividerText(double width, String text, double margin) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: margin),
    child: Row(children: <Widget>[
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 10, right: 20),
            child: const Divider(
              color: Colors.white,
              height: 36,
              thickness: 0.7,
            )),
      ),
      BoldText(
        text,
        weight: FontWeight.w200,
        fontSize: width * 5,
      ),
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 20, right: 10),
            child: const Divider(
              color: Colors.white,
              height: 36,
              thickness: 0.7,
            )),
      ),
    ]),
  );
}
