import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';
import 'range_option.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const RangeOption()
      ],
    );
  }
}
