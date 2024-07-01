import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:flutter_responsive_dashboard/views/widgets/expenses_header.dart';
import 'package:flutter_responsive_dashboard/views/widgets/income_chart.dart';
import 'package:flutter_responsive_dashboard/views/widgets/income_details.dart';

class InComeSection extends StatelessWidget {
  const InComeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          AllExpensesHeader(title: "Income"),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          ))
        ],
      ),
    );
  }
}
