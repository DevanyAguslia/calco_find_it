import 'package:calco/style/colors/calco_colors.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String title;
  final String? hintText;

  const CustomTextfield({
    required this.title,
    this.hintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: CalcoColors.grey.color,
                ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    BorderSide(color: CalcoColors.secondGrey.color, width: 1)),
          ),
        ),
        const SizedBox(height: 14),
      ],
    );
  }
}
