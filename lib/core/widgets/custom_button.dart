import 'package:fintech_app/core/theme/app_color.dart';
import 'package:fintech_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

enum ButtonType { filled, outlined }

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final ButtonType type;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final double? width;
  final double? height;
  final double borderRadius;
  final double borderWidth;
  final TextStyle? textStyle;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.type = ButtonType.filled,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
    this.width,
    this.height = 60,
    this.borderRadius = 30,
    this.borderWidth = 2,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final defaultBgColor = type == ButtonType.filled
        ? (backgroundColor ?? AppColors.primary)
        : AppColors.snowWhite;

    final defaultTextColor = type == ButtonType.filled
        ? (textColor ?? AppColors.snowWhite)
        : (textColor ?? AppColors.primary);

    return SizedBox(
      width: width,
      height: height,
      child: Material(
        color: defaultBgColor,
        borderRadius: BorderRadius.circular(borderRadius),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(borderRadius),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: borderColor ?? AppColors.primary,
                width: borderWidth,
              ),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: Center(
              child: Text(
                text,
                style:
                    textStyle ??
                    (type == ButtonType.filled
                        ? TextStyles.font18SnowWhiteBold.copyWith(
                            color: defaultTextColor,
                          )
                        : TextStyles.font18PrimaryBold.copyWith(
                            color: defaultTextColor,
                          )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
