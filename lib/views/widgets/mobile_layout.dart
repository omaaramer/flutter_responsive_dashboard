import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_dashboard/views/widgets/all_expenses_and_quick_invoice_layout.dart';
import 'package:flutter_responsive_dashboard/views/widgets/income_section.dart';
import 'package:flutter_responsive_dashboard/views/widgets/my_card_and_trans_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllXEnesesAndQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCardAndTransSection(),
          SizedBox(height: 24),
          InComeSection(),
        ],
      ),
    );
  }
}
