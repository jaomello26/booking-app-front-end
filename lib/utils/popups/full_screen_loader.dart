import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/colors.dart';
import '../helpers/helper_functions.dart';
import '../loaders/animation_loader.dart';

/// A utility class for managing a full-screen loading dialog.
class FullScreenLoader {
  /// Open a full-screen loading dialog with a given text and animation.
  static void openLoadingDialog(String text, String animation) {
    Get.dialog(
      PopScope(
        canPop: false,
        child: Container(
          color: HelperFunctions.isDarkMode(Get.context!) ? TColors.dark : TColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),
              TAnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  /// Stop the currently open loading dialog.
  static void stopLoading() {
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }
  }
}
