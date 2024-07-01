import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/model/all_expenses_item_model.dart';
import 'package:flutter_responsive_dashboard/views/widgets/inactive_and%20_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isActive});
  final AllExpensesItemModel itemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllEXpensesItem(itemModel: itemModel)
        : InActiveAllEXpensesItem(itemModel: itemModel);
  }
}
