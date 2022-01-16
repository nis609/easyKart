
mixin ValidationMixin {
  String? validatePhone(String? value) {
    // if (value == null) {
    //  // return AppStrings.phoneValidaion0;
    // } else if (!RegExp(AppStrings.phoneValidationRegex).hasMatch(value)) {
    //   //return AppStrings.phoneValidaion1;
    // }
    return null;
  }

  String? emailValidateForLogin(String? value) {
    if (value?.isEmpty == true || value == null) {
      return 'Email Should not be empty';
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value)) {
      return 'Email is Invalid';
    }
    return null;
  }

  String? validateRequired(String? validate) {
    if (validate?.isEmpty == true) {
      return 'Required';
    } else if (validate == null) {
      return 'Required';
    }
    return null;
  }

  String? validateIntRequired(int? validate) {
    if (validate==null) {
      return 'Required';
    }
    return null;
  }

  String? eightORMore(String? eightORMoreS) {
    if (eightORMoreS == null) {
      return 'Required';
    } else if (eightORMoreS.length < 5) {
      return 'Must 8 or more characters';
    }
    return null;
  }
}
