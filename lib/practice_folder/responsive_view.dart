import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_1/practice_folder/constants.dart';

class ResponsiveView extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;

  const ResponsiveView({
    super.key,
    required this.mobileBody,
    required this.tabletBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, p1) {
        if (p1.maxWidth < phoneWidth) {
          return mobileBody;
        } else if (p1.maxWidth > phoneWidth ||
            MediaQuery.of(context).orientation == Orientation.landscape) {
          return tabletBody;
        } else {
          return const Text('Error');
        }
      },
    );
  }
}
