import 'package:flutter/material.dart';

class CustomTimeButton extends StatelessWidget {
  final String? time;
  final String? imageUrl;
  final String? title;

  const CustomTimeButton({
    this.time,
    this.imageUrl,
    this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 64,
          margin: const EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Color(0xff010101).withOpacity(0.05),
                    offset: Offset(2, 3),
                    blurRadius: 9.9)
              ]),
          alignment: Alignment.center,
          child: time != null
              ? Text(
                  time!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall,
                )
              : Image.asset(
                  imageUrl!,
                  width: 30,
                  height: 30,
                ),
        ),
        Text(
          title ?? "Menit",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
