import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

Widget PhoneNumberBox({
  required TextEditingController controller,
  required String hint,
  required Icon icon,
  required Color activeColor,
  required Color normalColor,
  Function? validator,
  Color? errorColor,
  TextStyle? textStyle,
  TextStyle? hintStyle,
  int? maxLength,
  Color? fillColor,
}) {
  return InternationalPhoneNumberInput(
    onInputChanged: (PhoneNumber number) {
      print(number.phoneNumber);
    },
    onInputValidated: (bool value) {
      print(value);
    },
    selectorConfig: SelectorConfig(
      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
    ),
    ignoreBlank: false,
    autoValidateMode: AutovalidateMode.disabled,
    selectorTextStyle: TextStyle(color: Colors.black),
    // initialValue: number,
    textFieldController: controller,
    formatInput: false,
    keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
    inputBorder: OutlineInputBorder(),
    inputDecoration: InputDecoration(
      filled: true,
      fillColor: (fillColor != null) ? fillColor : Colors.transparent,
      counter: const SizedBox.shrink(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.blue,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: errorColor ?? const Color(0xFFE72C37),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),

      suffixIcon: (icon != null) ? icon : Container(),

      contentPadding:
          const EdgeInsets.only(left: 20, bottom: 17, top: 17, right: 17),
      hintText: hint,
      // hintStyle: hintStyle,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.green,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    onSaved: (PhoneNumber number) {
      print('On Saved: $number');
    },
  );
}
