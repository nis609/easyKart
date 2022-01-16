import 'package:ecoomerce_app/res/app_color.dart';
import 'package:flutter/material.dart';

class AppTextInput extends StatelessWidget {
  final String _hint;
  final String? initialValue;
  final TextInputType textInputType;
  final TextEditingController? controller;
  final IconData icon;

  final String? Function(String?)? validator;
  final String? Function(String?)? onSaved;
  final bool enabled;
  final int? maxLength;
  final TextStyle? style;
  final double? width;
  // final FocusNode? focusNode;
  // final GlobalKey<AppTextInputState> key;

  AppTextInput(this._hint,
      {this.textInputType = TextInputType.text,
      required this.icon,
      this.enabled = true,
      this.maxLength,
      this.controller,
      this.initialValue,
      this.validator,
      this.onSaved,
      this.style,
      // this.focusNode,
      this.width});
  // FocusNode fieldNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark().copyWith(
        primaryColor: AppColor.primaryColor,
        colorScheme: const ColorScheme.dark().copyWith(
          secondary: Colors.red,
          primary: AppColor.primaryColor,
        ),
      ),
      child: TextFormField(
        initialValue: initialValue,
        enabled: enabled,
        maxLength: maxLength,
        controller: controller,
        style: style,
        // focusNode: focusNode,
        onSaved: onSaved,
        validator: validator,
        cursorColor: Theme.of(context).primaryColorDark,
        obscureText: textInputType == TextInputType.visiblePassword,
        decoration: InputDecoration(

          contentPadding: EdgeInsets.symmetric(horizontal: 10),

          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black26, width: 1.5),
            borderRadius: BorderRadius.circular(3),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black26, width: 1.5),
            borderRadius: BorderRadius.circular(3),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black26, width: 1.5),
            borderRadius: BorderRadius.circular(3),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.5),
            borderRadius: BorderRadius.circular(3),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black26, width: 1.5),
            borderRadius: BorderRadius.circular(3),
          ),
          // prefixIcon: Icon(
          //   icon,
          //   // color: focusNode!.hasFocus
          //   //     ? Theme.of(context).primaryColor
          //   //     : Colors.black27,
          //   size: width,
          // ),
          hintText: _hint,
          hintStyle: style,
          fillColor: Colors.grey.shade400,
        ),
        keyboardType: textInputType,
      ),
    );
  }
}
