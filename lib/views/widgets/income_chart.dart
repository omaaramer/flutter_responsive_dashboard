import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData:
          PieTouchData(touchCallback: (FlTouchEvent event, pieTouchResponse) {
        touchedIndex =
            pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
        setState(() {});
      }),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
            radius: touchedIndex == 0 ? 60 : 50,
            color: const Color(0xFF208CC8),
            value: 40,
            showTitle: false),
        PieChartSectionData(
            radius: touchedIndex == 1 ? 60 : 50,
            color: const Color(0xFF4EB7F2),
            value: 25,
            showTitle: false),
        PieChartSectionData(
            radius: touchedIndex == 2 ? 60 : 50,
            color: const Color(0xFF064061),
            value: 20,
            showTitle: false),
        PieChartSectionData(
            radius: touchedIndex == 3 ? 60 : 50,
            color: const Color(0xFFE2DECD),
            value: 22,
            showTitle: false),
      ],
    );
  }
}
