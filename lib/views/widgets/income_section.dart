import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:flutter_responsive_dashboard/views/widgets/expenses_header.dart';
import 'package:flutter_responsive_dashboard/views/widgets/income_section_body.dart';

class InComeSection extends StatelessWidget {
  const InComeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          AllExpensesHeader(title: "Income"),
          IncomSectionBody(),
        ],
      ),
    );
  }
}
