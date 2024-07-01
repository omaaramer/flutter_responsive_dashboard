import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/views/adaptive_layout_widget.dart';
import 'package:flutter_responsive_dashboard/views/widgets/desctop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => const Placeholder(),
          tabletLayout: (context) => const Placeholder(),
          desktopLayout: (context) => const DesctopLayout()),
    );
  }
}
