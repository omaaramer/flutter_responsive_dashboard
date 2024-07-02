import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/views/widgets/all_expenses.dart';
import 'package:flutter_responsive_dashboard/views/widgets/quick_invoice.dart';

class AllXEnesesAndQuickInvoiceSection extends StatelessWidget {
  const AllXEnesesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(height: 24),
        QuickInvoice(),
      ],
    );
  }
}
