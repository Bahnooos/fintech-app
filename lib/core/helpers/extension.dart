import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? argument}) {
    return Navigator.of(this).pushNamed(routeName, arguments: argument);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
      String routeNamed, RoutePredicate predicate,
      {Object? argument}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeNamed, predicate, arguments: argument);
  }

  void pop() => Navigator.pop(this);
}

extension CompactNumber on double {
  String toCompact() {
    if (this >= 1e12) {
      return "${(this / 1e12).toStringAsFixed(1)}T";
    } else if (this >= 1e9) {
      return "${(this / 1e9).toStringAsFixed(1)}B";
    } else if (this >= 1e6) {
      return "${(this / 1e6).toStringAsFixed(1)}M";
    } else if (this >= 1e3) {
      return "${(this / 1e3).toStringAsFixed(1)}K";
    }
    return toStringAsFixed(2);
  }
}