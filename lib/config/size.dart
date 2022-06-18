import 'package:flutter/cupertino.dart';

myWidth(context) {
  double vertical = MediaQuery.of(context).padding.top +
      MediaQuery.of(context).padding.bottom;
  return (MediaQuery.of(context).size.width - vertical);
}

myHeight(context) {
  double horizontal = MediaQuery.of(context).padding.left +
      MediaQuery.of(context).padding.right;

  return (MediaQuery.of(context).size.height - horizontal);
}

orientation(context) {
  return MediaQuery.of(context).orientation;
}

verticalSpace(context) {
  return SizedBox(
    height: myHeight(context) * 0.01,
  );
}