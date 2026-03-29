import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.width,
    required this.heaight,
    this.onPressed,
    required this.text,
    this.backcolor = Colors.black,
    required this.textcolor,
  });

  final double width;
  final double heaight;
  final void Function()? onPressed;
  final String text;
  final Color? backcolor;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backcolor,
        fixedSize: Size(width * 0.7, heaight * 0.5),
        splashFactory: InkRipple.splashFactory,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textcolor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
