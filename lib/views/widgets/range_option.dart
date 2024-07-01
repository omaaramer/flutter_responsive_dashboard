
import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/utils/app_styles.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xfff1f1f1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text(
            "Monthly",
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(width: 18),
          Transform.rotate(
              angle: -1.57079633,
              child: const Icon(Icons.arrow_back_ios_new_rounded),),
        ],
      ),
    );
  }
}
