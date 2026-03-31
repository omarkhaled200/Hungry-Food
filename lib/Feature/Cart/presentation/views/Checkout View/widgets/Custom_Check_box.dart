import 'package:flutter/material.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key, required this.onSelected});
  final Function(bool) onSelected;

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: Color(0xffEF2A39),
          value: ischecked,
          onChanged: (value) {
            setState(() {
              ischecked = value!;
              widget.onSelected(ischecked);
            });
          },
        ),
        CustomText(
          text: "Save card details for future payments",
          size: 14,
          color: Color(0xff808080),
          weight: FontWeight.w400,
        ),
      ],
    );
  }
}
