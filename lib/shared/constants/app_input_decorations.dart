import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_typography.dart';

class AppInputDecorations {
  AppInputDecorations._();

  static InputDecoration inputDecoration({String? labelText, String? hintText}) {
    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      labelStyle: AppTypography.bodyText2.copyWith(color: AppColors.grey),
      hintStyle: AppTypography.bodyText2.copyWith(color: AppColors.grey),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: AppColors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: AppColors.primary),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: AppColors.grey),
      ),
    );
  }
}