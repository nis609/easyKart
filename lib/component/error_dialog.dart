
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

enum ErrorEnum { success, error }


void ErrorDialog(
    {required BuildContext context,  VoidCallback? onPressed, required String errorMessage, required ErrorEnum enumvalue}) {
  var errorMessage1 = errorMessage;
  if (errorMessage1 == 'Unauthorised request') {
    errorMessage1 = 'Email or Password is incorrect';
  }
  switch (enumvalue) {
    case ErrorEnum.error:
      AwesomeDialog(
              context: context,
              dialogType: DialogType.ERROR,
              animType: AnimType.RIGHSLIDE,
              title: 'Error Occured',
              desc: errorMessage1,
              btnOkOnPress: () {
                Navigator.pop(context);
              },
              btnOkIcon: Icons.cancel,
              btnOkColor: Colors.yellow)
          .show();
      break;
    case ErrorEnum.success:
      AwesomeDialog(
        context: context,
        animType: AnimType.LEFTSLIDE,
        headerAnimationLoop: false,
        dialogType: DialogType.SUCCES,
        showCloseIcon: true,
        title: errorMessage1,
        desc: 'Success',
        btnOkOnPress: () {},
        btnOkIcon: Icons.check_circle,
        onDissmissCallback: (type) {},
      ).show();
      break;
    default:
  }
}
