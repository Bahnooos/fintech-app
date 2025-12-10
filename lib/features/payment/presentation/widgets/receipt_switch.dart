import 'package:fintech_app/core/theme/app_color.dart';
import 'package:fintech_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class ReceiptSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const ReceiptSwitch({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          'Send receipt to your email',
          style: TextStyles.font12PrimaryMeduim,
        ),
        Switch(
          value: value,
          onChanged: onChanged,
          activeColor: AppColors.primary,
        ),
      ],
    );
  }
}