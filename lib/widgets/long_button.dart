import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  const LongButton(
      {super.key,
      this.onTap,
      required this.colorCode,
      this.title,
      this.textStyle});
  final int colorCode;
  final void Function()? onTap;
  final String? title;

  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        // margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Color(colorCode), borderRadius: BorderRadius.circular(60)),
        child: Center(
          child: Text(
            title ?? 'Join the movement',
            style: textStyle ??
                const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
          ),
        ),
      ),
    );
  }
}
