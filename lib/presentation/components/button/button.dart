import 'package:flutter/material.dart';
import 'package:flutter_ui_core/presentation/utility/utility.dart';

enum IconPosition{
  left, right
}

class StandardButton {
  Widget primaryButton({
    required title,
    double? borderRadius,
    double? elevation,
    bool? isLoading,
    bool? isDisabled,
    Color? backgroundColor,
    Color? titleColor,
    Color? splashColor,
    Function()? onTap,
    IconPosition? iconPosition,
    Widget? icon
  }) {
    return Material(
      color: backgroundColor ?? ColorTheme.primary700,
      elevation: elevation ?? 1,
      child: InkWell(
        splashColor: splashColor ?? ColorTheme.white,
        borderRadius: BorderRadius.circular(borderRadius ?? 12),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: standardBodyText(text: title),
        ),
      ),
    );
  }
}
