import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/model/all_expenses_item_model.dart';
import 'package:flutter_responsive_dashboard/utils/app_images.dart';
import 'package:flutter_responsive_dashboard/views/widgets/all_expenses_item.dart';

class AllExpensesItemListview extends StatefulWidget {
  const AllExpensesItemListview({super.key});

  @override
  State<AllExpensesItemListview> createState() =>
      _AllExpensesItemListviewState();
}

class _AllExpensesItemListviewState extends State<AllExpensesItemListview> {
  int selectedIndex = 0;
  final itemList = const [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: "Balance",
        date: "April 2024",
        price: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: "Income",
        date: "April 2024",
        price: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: "Expenses",
        date: "April 2024",
        price: r"$20,129"),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != 0) {
                setState(() {
                  selectedIndex = 0;
                });
              }
            },
            child: AllExpensesItem(
              itemModel: itemList[0],
              isActive: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != 1) {
                setState(() {
                  selectedIndex = 1;
                });
              }
            },
            child: AllExpensesItem(
              itemModel: itemList[1],
              isActive: selectedIndex == 1,
            ),
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != 2) {
                setState(() {
                  selectedIndex = 2;
                });
              }
            },
            child: AllExpensesItem(
              itemModel: itemList[2],
              isActive: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );
  }
}
