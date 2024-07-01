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
        // children: itemList
        //     .map((e) => Expanded(child: AllExpensesItem(itemModel: e)))
        //     .toList(),

        children: itemList.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;

      if (index == 1) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != index) {
                setState(() {
                  selectedIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesItem(
                itemModel: item,
                isActive: selectedIndex == index,
              ),
            ),
          ),
        );
      } else {
        return Expanded(
            child: GestureDetector(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: AllExpensesItem(
            itemModel: item,
            isActive: selectedIndex == index,
          ),
        ));
      }
    }).toList());
  }
}
