import 'package:flutter/material.dart';

dynamic navigateTo({
  required BuildContext context,
  required Widget widget,
}) {
  return Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}

dynamic navigateOff({
  required BuildContext context,
  required Widget widget,
}) {
  return Navigator.of(context).pushReplacement(
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}
