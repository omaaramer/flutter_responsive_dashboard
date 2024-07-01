import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:flutter_responsive_dashboard/views/widgets/income_section.dart';
import 'package:flutter_responsive_dashboard/views/widgets/my_cards_section.dart';
import 'package:flutter_responsive_dashboard/views/widgets/transction_history.dart';

class MyCardAndTransSection extends StatelessWidget {
  const MyCardAndTransSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(height: 40),
          TrasnctionHistory(),
        ],
      ),
    );
  }
}
