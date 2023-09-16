import 'package:flutter/material.dart';
import 'package:flutter_ui_core/presentation/utility/utility.dart';

enum IconPosition{
  left, right
}

class StandardFab {
  FloatingActionButton fab({
    required Widget iconWidget,
    String? title,
    bool isDisabled = false,
    bool isLoading = false,
    Function()? onTap,
    Color? backgroundColor,
    Color? disabledBackgroundColor,
    Color? titleColor,
    Color? disabledTitleColor,
    Color? loadingColor,
    double? elevation,
    IconPosition? iconPosition,
  }) {
    return FloatingActionButton(
      onPressed: isLoading || isDisabled ? (){} : onTap,
      isExtended: title != null ? true : false,
      backgroundColor: isDisabled
          ? disabledBackgroundColor ?? ColorTheme.grey700
          : backgroundColor ?? ColorTheme.primary700,
      elevation: elevation ?? 1,
      child: isLoading ? loadingFabWidet(
          loadingWidget: CircularProgressIndicator(
            color: loadingColor ?? titleColor ?? ColorTheme.black,
          ),
      ) : childFabWidget(
          iconPosition: iconPosition ?? IconPosition.left,
          body: standardHeaderText(
              fontSize: StandardFontSize.h6,
              text: title,
              color: isDisabled
                  ? disabledTitleColor ?? ColorTheme.black
                  : titleColor ?? ColorTheme.black
          ),
          icon: iconWidget
      ),
    );
  }

  Widget childFabWidget({
    required IconPosition iconPosition,
    required Widget body,
    required Widget icon
  }) {
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

  Widget loadingFabWidet({
    required Widget loadingWidget,
  }){
    return loadingWidget;
  }
}
