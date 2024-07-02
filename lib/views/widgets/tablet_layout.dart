import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_dashboard/views/widgets/all_expenses_and_quick_invoice_layout.dart';
import 'package:flutter_responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:flutter_responsive_dashboard/views/widgets/income_section.dart';
import 'package:flutter_responsive_dashboard/views/widgets/mobile_layout.dart';
import 'package:flutter_responsive_dashboard/views/widgets/my_card_and_trans_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDawer()),
        SizedBox(width: 32),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: MobileLayout(),
            )),
        SizedBox(width: 32),
      ],
    );
  }
}
