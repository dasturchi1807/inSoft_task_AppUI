import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class YearlyVisitorsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 100 * 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Year Selector
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {},
                  ),
                  const Text(
                    '2017',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Pie Chart
              SizedBox(
                height: 150,
                child: PieChart(
                  PieChartData(
                    sections: [
                      PieChartSectionData(
                        color: Colors.blue,
                        value: 2100,
                        title: 'Amazon',
                        radius: 50,
                        titleStyle: const TextStyle(fontSize: 0), // Hidden text in chart
                      ),
                      PieChartSectionData(
                        color: Colors.green,
                        value: 1900,
                        title: 'Ebay',
                        radius: 50,
                        titleStyle: const TextStyle(fontSize: 0), // Hidden text in chart
                      ),
                      PieChartSectionData(
                        color: Colors.orange,
                        value: 1000,
                        title: 'Alibaba',
                        radius: 50,
                        titleStyle: const TextStyle(fontSize: 0),
                      ),
                      PieChartSectionData(
                        color: Colors.amber,
                        value: 15700,
                        title: 'Shopify',
                        radius: 50,
                        titleStyle: const TextStyle(fontSize: 0),
                      ),
                    ],
                    centerSpaceRadius: 40,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Total Visitors Text
              const Text(
                '22.870',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Visitors this year',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 24),
              // Legend
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LegendItem(color: Colors.blue, label: 'Amazon', value: '2.1k'),
                      LegendItem(color: Colors.orange, label: 'Alibaba', value: '1k'),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LegendItem(color: Colors.green, label: 'Ebay', value: '1.9k'),
                      LegendItem(color: Colors.amber, label: 'Shopify', value: '15.7k'),
                    ],
                  )
                ],
              )
            ],
        ),
      ),
    );
  }
}

class LegendItem extends StatelessWidget {
  final Color color;
  final String label;
  final String value;

  const LegendItem({
    required this.color,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20)
            ),
            width: 15,
            height: 15,
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
