import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:githubapiassignment/core/resources/color_res.dart';
import 'package:githubapiassignment/core/resources/dimension_res.dart';



class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  // final FormFieldValidator<String> validator;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool obscure;
  final bool readOnly;
  final String? initialValue;
  final bool digitOnly;
  // final VoidCallback onTap;
  // final VoidCallback onEditingCompleted;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  // final ValueChanged<String> onChanged;
  final bool isMulti;
  final bool autofocus;
  final bool enabled;
  final String? errorText;
  final Function()? onTap;
  final String label;
  final IconData? suffix;
  final IconData? prefix;
  final void Function()? togglePasswordVisibility;
  final String? helperText;

  const CustomTextFormField({
    Key? key,
    this.controller,
    required this.label,
    this.textInputAction=TextInputAction.next,
    this.initialValue,
    this.prefix,
    this.errorText,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.obscure = false,
    // required this.onTap,
    this.isMulti = false,
    this.readOnly = false,
    this.autofocus = false,
    this.suffix,
    this.togglePasswordVisibility,
    this.enabled = true,
    this.helperText,
    this.onTap,
    this.onChanged,
    this.digitOnly=false
    // required this.onEditingCompleted,
    // this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: DimensionRes.globalPadding,



          ),
      child: TextFormField(
        initialValue: initialValue,
        onTap: onTap,
        onChanged: onChanged,
        textInputAction: textInputAction,
        // onEditingComplete: onEditingCompleted,
        // autofocus: autofocus,
        minLines: isMulti ? 4 : 1,
        maxLines: isMulti ? null : 1,
        // onTap: onTap,
        // enabled: enabled,
        readOnly: readOnly,
        obscureText: obscure,
        keyboardType: keyboardType,
        controller: controller,
        inputFormatters:digitOnly? <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ]:null,
        decoration: InputDecoration(
          // errorText: errorText,
          // label: Text(
          //   label,
          //   style: const TextStyle(fontWeight: FontWeight.w600),
          // ),
          // labelText: label,
          filled: true,
          fillColor: Colors.white,
          hintText: label,

          hintStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey,
            fontSize: 14,
          ),
          prefixIcon:prefix == null?null:Icon(prefix,color: ColorRes.primaryColor,),
          helperText: helperText,
          contentPadding:prefix == null? const EdgeInsets.fromLTRB(19, 16, 0, 16):const EdgeInsets.fromLTRB(0, 16, 0, 16),
          suffixIcon: IconButton(
            onPressed: togglePasswordVisibility,
            icon: Icon(suffix,color: ColorRes.primaryColor,),
          ),
          // labelStyle: TextStyle(fontSize: lableFontSize()),
          // labelText: label,
          // hintStyle: const TextStyle(color: Colors.blueGrey, fontSize: 15),
          // contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          enabledBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(width: 1.0,),
            borderRadius: BorderRadius.circular(10),
          ),
          // border: textFieldfocused(),
          focusedBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(width: 1.0,),
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder:  OutlineInputBorder(
            borderSide:
            const BorderSide(width: 1.0, ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(width: 1.0, ),
            borderRadius: BorderRadius.circular(10),
          ),
          // errorBorder: errorrTextFieldBorder(),
          // focusedErrorBorder: errorrTextFieldBorder(),
        ),
        validator: validator,
      ),
    );
  }
}







