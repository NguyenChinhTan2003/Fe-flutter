import 'package:animated_snack_bar/animated_snack_bar.dart';

abstract class AppSnackbar {
  static showInfoSnackbarTop(context, String message) {
    AnimatedSnackBar.removeAll();
    AnimatedSnackBar.material(
      message,
      type: AnimatedSnackBarType.info,
      mobileSnackBarPosition:
          MobileSnackBarPosition.top, // Position of snackbar on mobile devices
      desktopSnackBarPosition: DesktopSnackBarPosition
          .topRight, // Position of snackbar on desktop devices
    ).show(context);
  }

  static showInfoSnackbarBottom(context, String message) {
    AnimatedSnackBar.removeAll();
    AnimatedSnackBar.material(
      message,
      type: AnimatedSnackBarType.info,
      mobileSnackBarPosition: MobileSnackBarPosition
          .bottom, // Position of snackbar on mobile devices
      desktopSnackBarPosition: DesktopSnackBarPosition
          .bottomRight, // Position of snackbar on desktop devices
    ).show(context);
  }

  static showErrorSnackbarTop(context, String message) {
    AnimatedSnackBar.removeAll();
    AnimatedSnackBar.material(
      message,
      type: AnimatedSnackBarType.error,
      mobileSnackBarPosition:
          MobileSnackBarPosition.top, // Position of snackbar on mobile devices
      desktopSnackBarPosition: DesktopSnackBarPosition
          .topRight, // Position of snackbar on desktop devices
    ).show(context);
  }

  static showErrorSnackbarBottom(context, String message) {
    AnimatedSnackBar.removeAll();
    AnimatedSnackBar.material(
      message,
      type: AnimatedSnackBarType.error,
      mobileSnackBarPosition: MobileSnackBarPosition
          .bottom, // Position of snackbar on mobile devices
      desktopSnackBarPosition: DesktopSnackBarPosition
          .bottomRight, // Position of snackbar on desktop devices
    ).show(context);
  }

  static cleanAllSnackbar() {
    AnimatedSnackBar.removeAll();
  }

  static showSuccessSnackbarTop(context, String message) {
    AnimatedSnackBar.removeAll();
    AnimatedSnackBar.material(
      message,
      type: AnimatedSnackBarType.success,
      mobileSnackBarPosition:
          MobileSnackBarPosition.top, // Position of snackbar on mobile devices
      desktopSnackBarPosition: DesktopSnackBarPosition
          .topRight, // Position of snackbar on desktop devices
    ).show(context);
  }

  static showSuccessSnackbarBottom(context, String message) {
    AnimatedSnackBar.removeAll();
    AnimatedSnackBar.material(
      message,
      type: AnimatedSnackBarType.success,
      mobileSnackBarPosition: MobileSnackBarPosition
          .bottom, // Position of snackbar on mobile devices
      desktopSnackBarPosition: DesktopSnackBarPosition
          .bottomRight, // Position of snackbar on desktop devices
    ).show(context);
  }

  static showWarningSnackbarTop(context, String message) {
    AnimatedSnackBar.removeAll();
    AnimatedSnackBar.material(
      message,
      type: AnimatedSnackBarType.warning,
      mobileSnackBarPosition:
          MobileSnackBarPosition.top, // Position of snackbar on mobile devices
      desktopSnackBarPosition: DesktopSnackBarPosition
          .topRight, // Position of snackbar on desktop devices
    ).show(context);
  }

  static showWarningSnackbarBottom(context, String message) {
    AnimatedSnackBar.removeAll();
    AnimatedSnackBar.material(
      message,
      type: AnimatedSnackBarType.warning,
      mobileSnackBarPosition: MobileSnackBarPosition
          .bottom, // Position of snackbar on mobile devices
      desktopSnackBarPosition: DesktopSnackBarPosition
          .bottomRight, // Position of snackbar on desktop devices
    ).show(context);
  }
}
