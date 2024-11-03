import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class SalesReportCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Row
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sales Report",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "2017-2018",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Legend Row
            const Row(
              children: [
                LegendItem(color: Colors.blue, text: "Online Sales"),
                SizedBox(width: 16),
                LegendItem(color: Colors.green, text: "Offline Sales"),
              ],
            ),
            const SizedBox(height: 16),
            // Bar Chart
            SizedBox(
              height: 200,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  barGroups: [
                    _makeGroupData(0, 500, 250),
                    _makeGroupData(1, 800, 600),
                    _makeGroupData(2, 400, 300),
                    _makeGroupData(3, 700, 500),
                    _makeGroupData(4, 1000, 650),
                    _makeGroupData(5, 900, 500),
                  ],
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        getTitlesWidget: (value, meta) {
                          return Text("\$${value.toInt()}");
                        },
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          const months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun"];
                          return Text(months[value.toInt()]);
                        },
                      ),
                    ),
                  ),
                  gridData: const FlGridData(show: false),
                  borderData: FlBorderData(show: false),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BarChartGroupData _makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      x: x,
      barsSpace: 8,
      barRods: [
        BarChartRodData(
          toY: y1,
          color: Colors.blue,
          width: 10,
          borderRadius: BorderRadius.circular(4),
        ),
        BarChartRodData(
          toY: y2,
          color: Colors.green,
          width: 10,
          borderRadius: BorderRadius.circular(4),
        ),
      ],
    );
  }
}

class LegendItem extends StatelessWidget {
  final Color color;
  final String text;

  const LegendItem({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 4),
        Text(text),
      ],
    );
  }
}