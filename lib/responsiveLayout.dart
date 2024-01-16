import 'package:flutter/material.dart';
import 'package:web_app/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final mobileBody;
  final desktopBody;
  const ResponsiveLayout({
    super.key,
    required this.mobileBody,
    required this.desktopBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
