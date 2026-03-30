import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';

class CustomTextfield extends StatefulWidget {
  const CustomTextfield({
    super.key,
    required this.hinttext,
    required this.hintcolor,
    required this.textcolor,
    required this.obscure,
    this.validator,
    this.onchange,
    this.prefixicon,
  });
  final String hinttext;
  final Color hintcolor;
  final Color textcolor;
  final bool obscure;
  final String? Function(String?)? validator;
  final void Function(String)? onchange;
  final Widget? prefixicon;

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  late bool obscure;

  @override
  void initState() {
    super.initState();
    obscure = widget.obscure;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextFormField(
        onChanged: widget.onchange,
        validator: widget.validator,
        obscureText: obscure,
        cursorColor: AppColors.kprimarycolor,
        style: TextStyle(color: widget.textcolor),
        decoration: InputDecoration(
          suffixIcon: widget.obscure
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      obscure = !obscure;
                    });
                  },
                  icon: Icon(
                    obscure ? CupertinoIcons.eye_slash : CupertinoIcons.eye,
                  ),
                )
              : null,

          fillColor: Colors.white,
          filled: true,
          hintStyle: TextStyle(color: widget.hintcolor),
          hintText: widget.hinttext,
          prefixIcon: widget.prefixicon,
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
