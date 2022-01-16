import 'package:flutter/material.dart';
import '../res/strings.dart';

import 'misc.dart';


class ErrorView extends StatelessWidget {
  

  ErrorView(this.onTap, {this.message = AppStrings.errorMessage});
final VoidCallback? onTap;
  final String message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: InkWell(
        onTap: onTap,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             const  Icon(Icons.cloud_off, color: Colors.grey, size: 96),
              const SizedBox(height: 12),
              Center(
                child: BoldText(
                  message,
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 4),
              if (onTap == null) const SizedBox.shrink() else const Text(AppStrings.tryAgain,
                      style: TextStyle(color: Colors.black54))
            ],
          ),
        ),
      ),
    );
  }
}
