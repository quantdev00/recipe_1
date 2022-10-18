import 'package:flutter/material.dart';
import 'package:recipe_1/practice_folder/phone_body.dart';
import 'package:recipe_1/practice_folder/responsive_view.dart';
import 'package:recipe_1/practice_folder/tablet_body.dart';

class ResponsiveUi extends StatelessWidget {
  const ResponsiveUi({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveView(
        mobileBody: PhoneBody(), tabletBody: TableBody());
  }
}
