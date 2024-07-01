import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/views/widgets/quick_invoice_form.dart';
import 'package:flutter_responsive_dashboard/views/widgets/title_text_field.dart';

import '../../utils/app_styles.dart';
import 'latest_trans_listview.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Latest Transaction", style: AppStyles.styleMedium16(context)),
        const SizedBox(height: 12),
        const LatestTransactionListview(),
        const Divider(height: 48),
        const QuickInvoiceForm(),
      ],
    );
  }
}
