import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/utils/size_config.dart';
import 'package:flutter_responsive_dashboard/views/adaptive_layout_widget.dart';
import 'package:flutter_responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:flutter_responsive_dashboard/views/widgets/desctop_layout.dart';
import 'package:flutter_responsive_dashboard/views/widgets/mobile_layout.dart';
import 'package:flutter_responsive_dashboard/views/widgets/tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDawer()
          : null,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: const Color(0xfffafafa),
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ))
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          desktopLayout: (context) => const DesctopLayout()),
    );
  }
}
