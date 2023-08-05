library flutter_ui_core;

import 'package:flutter_ui_core/presentation/utility/typography.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class InitialValue{
  static setBodyFontSize({
    double? bodyTextXxl = 28,
    double? bodyTextXl = 24,
    double? bodyTextL = 20,
    double? bodyTextM = 16,
    double? bodyTextS = 12,
    double? bodyTextXs = 10,
    double? bodyTextXxs = 8,
  }){
    StandardFontSize.bodyTextXxl = bodyTextXxl ?? 28;
    StandardFontSize.bodyTextXl = bodyTextXl ?? 24;
    StandardFontSize.bodyTextL = bodyTextL ?? 20;
    StandardFontSize.bodyTextM = bodyTextM ?? 16;
    StandardFontSize.bodyTextS = bodyTextS ?? 12;
    StandardFontSize.bodyTextXs = bodyTextXs ?? 10;
    StandardFontSize.bodyTextXxs = bodyTextXxs ?? 8;
  }
  

}
