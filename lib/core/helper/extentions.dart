import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) =>
      Navigator.of(this).pushNamed(routeName, arguments: arguments);

  Future<dynamic> pushReplaceNamed(String routeName, {Object? arguments}) =>
      Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
          {Object? arguments}) =>
      Navigator.of(this).pushNamedAndRemoveUntil(routeName, (_) => false,
          arguments: arguments);

  void pop() => Navigator.of(this).pop();
}

extension NullableSringExtension on String? {
  bool get isEmpty => (this == null || this == '');
  bool get isNotEmpty => (this != null && this != '');
}

extension AppBuildContext on BuildContext {
  // Usage example: `context.theme`
  ThemeData get theme => Theme.of(this);

  void showMaterialSnackBar(
    String content, {
    Color? backgroundColor,
    Color? color,
  }) =>
      ScaffoldMessenger.of(this)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            content: Text(
              content,
              style: TextStyle(
                color: color ?? Theme.of(this).colorScheme.onSurfaceVariant,
              ),
            ),
            behavior: SnackBarBehavior.floating,
            backgroundColor:
                backgroundColor ?? Theme.of(this).colorScheme.surfaceVariant,
          ),
        );

  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}
