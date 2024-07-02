import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/views/widgets/all_expenses_item_listview.dart';
import 'package:flutter_responsive_dashboard/views/widgets/custom_background_container.dart';
import 'expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          AllExpensesHeader(title: "All Expenses"),
          SizedBox(height: 16),
          AllExpensesItemListview(),
        ],
      ),
    );
  }
}
