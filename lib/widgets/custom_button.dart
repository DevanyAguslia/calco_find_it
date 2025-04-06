import 'package:flutter/material.dart';

import '../style/colors/calco_colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;

  const CustomButton({
    required this.title,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 183,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: CalcoColors.primary.color),
        onPressed: onPressed,
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
