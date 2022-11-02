import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultFormField extends StatelessWidget {
  const DefaultFormField({
    Key? key,
    this.onSubmit,
    this.onChange,
    this.onTap,
    this.validate,
    this.label,
    this.prefix,
    this.suffix,
    this.suffixPressed,
    this.border,
    this.indexLenght,
    this.hint,
    this.width,
    this.height,
    this.labelTextColor,
    required this.controller,
    this.type,
  }) : super(key: key);

  final ValueChanged<String>? onSubmit;
  final ValueChanged<String>? onChange;
  final GestureTapCallback? onTap;
  final bool isPassword = false;
  final FormFieldValidator<String>? validate;
  final String? label;
  final IconData? prefix;
  final IconData? suffix;
  final VoidCallback? suffixPressed;
  final bool isClickable = true;
  final int maxLines = 1;
  final InputBorder? border;
  final int? indexLenght;
  final String? hint;
  final double? width;
  final double? height;
  final Color? labelTextColor;
  final textColor = Colors.black;
  final textAlign = TextAlign.start;
  final TextEditingController controller;
  final TextInputType? type;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        textAlign: textAlign,
        inputFormatters: [
          LengthLimitingTextInputFormatter(indexLenght),
        ],
        maxLines: maxLines,
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        enabled: isClickable,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        onTap: onTap,
        style: TextStyle(
          color: textColor,
        ),
        validator: validate,
        decoration: InputDecoration(
          labelText: label,
          labelStyle:
              TextStyle(color: labelTextColor, fontWeight: FontWeight.bold),
          hintText: hint,
          prefixIcon: Icon(
            prefix,
            color: Colors.lightBlue,
          ),
          suffixIcon: suffix != null
              ? IconButton(
                  onPressed: suffixPressed,
                  icon: Icon(
                    suffix,
                  ),
                )
              : null,
          border: border,
        ),
      ),
    );
  }
}
