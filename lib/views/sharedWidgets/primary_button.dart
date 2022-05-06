import 'package:flutter/material.dart';
import 'package:githubapiassignment/core/resources/color_res.dart';
import 'package:githubapiassignment/core/resources/dimension_res.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(DimensionRes.globalPadding),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(
            double.infinity,
           40,
          ),
          primary: ColorRes.primaryColor,
          // textStyle: const TextStyle(fontSize: DimensionRes.buttonFontSize),
          // side: const BorderSide(width: 10, color: ColorRes.formBorderColor),
          // shape: OutlinedBorder(side: const BorderSide(width: 10, color: ColorRes.formBorderColor),)
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 15, color: Colors.white),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
