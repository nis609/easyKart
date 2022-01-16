import 'package:flutter/material.dart';

import '../res/app_color.dart';
import 'misc.dart';
import 'progress.dart';

class AppButton extends StatelessWidget {
 

 const  AppButton(this._text, this._onPressed,
      {this.color = AppColor.mainCOLOR,
      this.fontColor = Colors.white,
      this.fontSize = 16});
       final String _text;
  final VoidCallback? _onPressed;
  final Color color;
  final Color fontColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        padding: const EdgeInsets.all(5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: _onPressed,
        color: color,
        textColor: Colors.white,
        child: BoldText(
          _text,
          fontSize: fontSize,
          color: fontColor,
        ),
      ),
    );
  }
}

class ProgressButton extends StatelessWidget {
  

  const ProgressButton(this._progress, this._text, this._onPressed);
final bool _progress;
  final String _text;
  final VoidCallback _onPressed;
  @override
  Widget build(BuildContext context) {
    return _progress
        ? Container(
            margin: const EdgeInsets.all(8),
            child: ProgressWidget(),
          )
        : AppButton(_text, _onPressed);
  }
}
