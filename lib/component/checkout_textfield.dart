import 'package:flutter/material.dart';
import '../res/app_color.dart';

class CheckOutField extends StatelessWidget {
  final String _hint;
  final String? initialValue;
  final TextInputType textInputType;
  final TextEditingController? controller;
  final IconData icon;

  final String? Function(String?)? validator;
  final String? Function(String?)? onSaved;
  final String? Function(String?)? onChanged;

  final bool enabled;
  final int? maxLength;
  final TextStyle? style;
  final double? width;
  final FocusNode node;
  // final TextEditingController? textEditingController;
  // final FocusNode? focusNode;
  // final GlobalKey<AppTextInputState> key;

  CheckOutField(this._hint,
      {this.textInputType = TextInputType.text,
      required this.icon,
      this.enabled = true,
      this.maxLength,
      this.controller,
      this.initialValue,
      this.validator,
      this.onSaved,
      this.style,
      this.onChanged,
      required this.node,
      // this.textEditingController,
      // this.focusNode,
      this.width});
  // FocusNode fieldNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light().copyWith(
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
        focusNode: node,
        onChanged: onChanged,
        validator: validator,
        cursorColor: Theme.of(context).primaryColorDark,
        obscureText: textInputType == TextInputType.visiblePassword,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColor.primaryColor.withOpacity(0.3), width: 1.5),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: AppColor.primaryColor, width: 1.5),
            borderRadius: BorderRadius.circular(5),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.5),
            borderRadius: BorderRadius.circular(5),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.5),
            borderRadius: BorderRadius.circular(5),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 1.5),
            borderRadius: BorderRadius.circular(50),
          ),
          prefixIcon: Icon(
            icon,
            color: node.hasFocus ? Theme.of(context).primaryColor : Colors.grey,
            size: width,
          ),
          hintText: _hint,
          labelText: _hint,
          hintStyle: style,
          fillColor: Colors.white,
        ),
        keyboardType: textInputType,
      ),
    );
  }
}
