import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_responsive_dashboard/views/widgets/custom_drawer.dart';

class DesctopLayout extends StatelessWidget {
  const DesctopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDawer()),
      ],
    );
  }
}
