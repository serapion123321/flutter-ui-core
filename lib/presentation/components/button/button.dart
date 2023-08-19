import 'package:flutter/material.dart';
import 'package:flutter_ui_core/presentation/utility/utility.dart';
import 'package:get/get.dart';

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
      borderRadius: BorderRadius.circular(borderRadius ?? 12),
      child: InkWell(
        splashColor: splashColor ?? ColorTheme.white,
        borderRadius: BorderRadius.circular(borderRadius ?? 12),
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          width: Get.width,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 12),
            border: Border.all(color: ColorTheme.primary500)
          ),
          child: childContainerWidget(
            iconPosition: iconPosition ?? IconPosition.left,
            body: standardBodyText(text: title, color: titleColor ?? ColorTheme.black),
            icon: icon
          )
        ),
      ),
    );
  }

  Widget childContainerWidget({
  required IconPosition iconPosition,
  required Widget body,
  Widget? icon
  }) {
    if(icon == null){
      return body;
    } else {
      if(iconPosition == IconPosition.left){
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            body,
          ],
        );
      } else {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            body,
            icon,
          ],
        );
      }
    }
  }
}
