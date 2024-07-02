import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/views/dashboard_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const ResponsiveDachBoard(),
    ),
  );
}

class ResponsiveDachBoard extends StatelessWidget {
  const ResponsiveDachBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}
