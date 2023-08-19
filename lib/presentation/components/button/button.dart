import 'package:flutter/material.dart';

enum IconPosition{
  left, right
}

class StandardButton {
  Widget primaryButton({
    required title,
    double? borderRadius,
    bool? isLoading,
    bool? isDisabled,
    Color? backgroundColor,
    Color? titleColor,
    Function()? onTap,
    IconPosition? iconPosition,
    Widget? icon
  }) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          child: Text("Oke"),
        ),
      ),
    );
  }
}
