import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/views/dashboard_view.dart';

void main() {
  runApp(const ResponsiveDachBoard());
}

class ResponsiveDachBoard extends StatelessWidget {
  const ResponsiveDachBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashboardView(),
    );
  }
}
