import 'package:flutter/material.dart';
import 'package:flutter_ui_core/presentation/utility/utility.dart';
import 'package:get/get.dart';

enum IconPosition{
  left, right
}

enum ButtonSize{
  fullWidth,
  large,
  medium,
  small,
}

double funcButtonSizeConverter(ButtonSize buttonSize) {
  switch (buttonSize) {
    case ButtonSize.fullWidth:
      return Get.width;
    case ButtonSize.large:
      return Get.width * 0.75;
    case ButtonSize.medium:
      return Get.width * 0.50;
    case ButtonSize.small:
      return Get.width * 0.25;
  }
}

double funcLoadingSizeConverter(ButtonSize buttonSize) {
  switch (buttonSize) {
    case ButtonSize.fullWidth:
      return StandardFontSize.h3;
    case ButtonSize.large:
      return StandardFontSize.h4;
    case ButtonSize.medium:
      return StandardFontSize.h5;
    case ButtonSize.small:
      return StandardFontSize.h6;
  }
}

double funcFontSizeConverter(ButtonSize buttonSize){
  switch (buttonSize) {
    case ButtonSize.fullWidth:
      return StandardFontSize.h3;
    case ButtonSize.large:
      return StandardFontSize.h4;
    case ButtonSize.medium:
      return StandardFontSize.h5;
    case ButtonSize.small:
      return StandardFontSize.h6;
  }
}

class StandardButton {
  Widget primaryButton({
    required title,
    EdgeInsets? margin,
    ButtonSize? buttonSize,
    double? borderRadius,
    double? elevation,
    bool isLoading = false,
    bool isDisabled = false,
    Color? backgroundColor,
    Color? disabledBackgroundColor,
    Color? titleColor,
    Color? disabledTitleColor,
    Color? splashColor,
    Color? disabledSplashColor,
    Color? borderColor,
    Color? disabledBorderColor,
    Color? loadingColor,
    Widget? loadingWidget,
    Function()? onTap,
    IconPosition? iconPosition,
    Widget? iconWidget
  }) {
    return Padding(
      padding : margin ?? const EdgeInsets.symmetric(vertical: 4),
      child: Material(
        color: isDisabled
            ? disabledBackgroundColor ?? ColorTheme.grey700
            : backgroundColor ?? ColorTheme.primary700,
        elevation: elevation ?? 1,
        borderRadius: BorderRadius.circular(borderRadius ?? 12),
        child: InkWell(
          splashColor: isDisabled ? Colors.transparent : splashColor ?? ColorTheme.white,
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          onTap: onTap,
          child: Container(
            alignment: Alignment.center,
            width: funcButtonSizeConverter(buttonSize ?? ButtonSize.fullWidth),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius ?? 12),
              border: Border.all(
                  color: isDisabled
                      ? disabledBorderColor ?? ColorTheme.black
                      : borderColor ?? ColorTheme.primary500
              )
            ),
            child: isLoading ? loadingChildContainer(
              loadingWidget: loadingWidget ?? SizedBox(
                height: funcLoadingSizeConverter(buttonSize ?? ButtonSize.fullWidth),
                width: funcLoadingSizeConverter(buttonSize ?? ButtonSize.fullWidth),
                child:  CircularProgressIndicator(
                  color: loadingColor,
                ),
              )
            ) : childContainerWidget(
              iconPosition: iconPosition ?? IconPosition.left,
              body: standardHeaderText(
                  fontSize: funcFontSizeConverter(buttonSize ?? ButtonSize.fullWidth),
                  text: title,
                  color: isDisabled
                      ? disabledTitleColor ?? ColorTheme.black
                      : titleColor ?? ColorTheme.black
              ),
              icon: iconWidget
            )
          ),
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

  Widget loadingChildContainer({
  required Widget loadingWidget,
  }){
    return loadingWidget;
  }
}
