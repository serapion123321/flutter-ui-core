library flutter_ui_core;
import 'package:flutter_ui_core/presentation/utility/typography.dart';

class InitialValue{
  static setBodyFontSize({
    double? bodyTextXxl,
    double? bodyTextXl,
    double? bodyTextL,
    double? bodyTextM,
    double? bodyTextS,
    double? bodyTextXs,
    double? bodyTextXxs,
  }){
    StandardFontSize.bodyTextXxl = bodyTextXxl ?? 28;
    StandardFontSize.bodyTextXl = bodyTextXl ?? 24;
    StandardFontSize.bodyTextL = bodyTextL ?? 20;
    StandardFontSize.bodyTextM = bodyTextM ?? 16;
    StandardFontSize.bodyTextS = bodyTextS ?? 12;
    StandardFontSize.bodyTextXs = bodyTextXs ?? 10;
    StandardFontSize.bodyTextXxs = bodyTextXxs ?? 8;
  }

  static setHeaderFontSize({
    double? h1,
    double? h2,
    double? h3,
    double? h4,
    double? h5,
    double? h6,
  }){
    StandardFontSize.h1 = h1 ?? 32;
    StandardFontSize.h2 = h2 ?? 28;
    StandardFontSize.h3 = h3 ?? 24;
    StandardFontSize.h4 = h4 ?? 20;
    StandardFontSize.h5 = h5 ?? 16;
    StandardFontSize.h6 = h6 ?? 12;
  }
}
