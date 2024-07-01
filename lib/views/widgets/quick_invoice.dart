import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/utils/app_styles.dart';
import 'package:flutter_responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:flutter_responsive_dashboard/views/widgets/latest_transaction_section.dart';
import 'package:flutter_responsive_dashboard/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
        ],
      ),
    );
  }
}
