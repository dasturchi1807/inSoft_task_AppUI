import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sales_analytics_ui/core/asset/colors.dart';
import 'package:fl_chart/fl_chart.dart';

Widget SalesFigures(double height, double width) {
  return Column(
    children: [
      // Figuralar
      Container(
        height: height / 100 * 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sales Figures",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: AppColors.blue, shape: BoxShape.circle),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Marketing Sales",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: AppColors.green, shape: BoxShape.circle),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Cases Sales",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ],
              ),
              // Flow
              SizedBox(
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: LineChart(
                    LineChartData(
                      lineTouchData: LineTouchData(
                          touchTooltipData: LineTouchTooltipData(
                              maxContentWidth: 50,
                              tooltipRoundedRadius: 20,
                              tooltipMargin: 20,
                              getTooltipColor: (spot) {
                                return Colors.white;
                              },
                              getTooltipItems:
                                  (List<LineBarSpot> touchpadSpots) {
                                return touchpadSpots.map((spot) {
                                  final monthNames = [
                                    "May",
                                    "Jun",
                                    "July",
                                    "August",
                                    "September",
                                    "October"
                                  ];
                                  int index = spot.x.toInt();
                                  String month = monthNames[index];
                                  String value = "\$${spot.y.toInt()}";
                                  return LineTooltipItem(
                                      value,
                                      TextStyle(
                                          color: AppColors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                      children: [
                                        TextSpan(
                                            text: "\n$month",
                                            style: TextStyle(
                                              color: AppColors.grey,
                                              fontSize: 15,
                                            ))
                                      ]);
                                }).toList();
                              })),
                      minY: 0,
                      maxY: 1000,
                      extraLinesData: ExtraLinesData(verticalLines: [
                        VerticalLine(
                            x: 0, color: AppColors.grey, strokeWidth: 0.5),
                        VerticalLine(
                            x: 1, color: AppColors.grey, strokeWidth: 0.5),
                        VerticalLine(
                            x: 2, color: AppColors.grey, strokeWidth: 0.5),
                        VerticalLine(
                            x: 3, color: AppColors.grey, strokeWidth: 0.5),
                        VerticalLine(
                            x: 4, color: AppColors.grey, strokeWidth: 0.5),
                        VerticalLine(
                            x: 5, color: AppColors.grey, strokeWidth: 0.5),
                      ]),
                      titlesData: FlTitlesData(
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 40,
                              getTitlesWidget: (value, meta) {
                                final style = TextStyle(color: AppColors.grey);
                                switch (value.toInt()) {
                                  case 0:
                                  case 200:
                                  case 400:
                                  case 600:
                                  case 800:
                                  case 1000:
                                    return value.toInt() == 1000
                                        ? Text(
                                            "1k",
                                            style: style,
                                          )
                                        : Text(
                                            "${value.toInt()}",
                                            style: style,
                                          );
                                }
                                return Container();
                              }),
                        ),
                        rightTitles: const AxisTitles(),
                        topTitles: const AxisTitles(),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 1,
                            getTitlesWidget: (value, meta) {
                              TextStyle style = TextStyle(
                                color: AppColors.grey2,
                                fontSize: 15,
                              );
                              if (value == 0) {
                                return Text('May', style: style);
                              } else if (value == 1) {
                                return Text('Jun', style: style);
                              } else if (value == 2) {
                                return Text('Jul', style: style);
                              } else if (value == 3) {
                                return Text('Aug', style: style);
                              } else if (value == 4) {
                                return Text('Sep', style: style);
                              } else if (value == 5) {
                                return Text('Oct', style: style);
                              }
                              return Container();
                            },
                          ),
                        ),
                      ),
                      gridData: const FlGridData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          spots: const [
                            FlSpot(-0.3, 500),
                            FlSpot(0.5, 580),
                            FlSpot(1, 530),
                            FlSpot(1.5, 510),
                            FlSpot(2, 450),
                            FlSpot(2.5, 580),
                            FlSpot(3, 590),
                            FlSpot(3.5, 530),
                            FlSpot(4, 530),
                            FlSpot(4.5, 540),
                            FlSpot(4.8, 530),
                            FlSpot(5, 440),
                            FlSpot(5.3, 400),
                            FlSpot(5.5, 460),
                          ],
                          isCurved: true,
                          color: Colors.blue,
                          barWidth: 4,
                          belowBarData: BarAreaData(show: false),
                          dotData: const FlDotData(show: false),
                        ),
                        LineChartBarData(
                          spots: const [
                            FlSpot(-0.3, 600),
                            FlSpot(0, 570),
                            FlSpot(0.5, 480),
                            FlSpot(1, 510),
                            FlSpot(1.5, 700),
                            FlSpot(2, 690),
                            FlSpot(2.5, 620),
                            FlSpot(3, 600),
                            FlSpot(3.5, 500),
                            FlSpot(4, 480),
                            FlSpot(4.5, 520),
                            FlSpot(4.7, 600),
                            FlSpot(5, 590),
                            FlSpot(5.5, 470),
                          ],
                          isCurved: true,
                          color: Colors.green,
                          barWidth: 4,
                          belowBarData: BarAreaData(show: false),
                          dotData: const FlDotData(show: false),
                        ),
                      ],
                      borderData: FlBorderData(show: false),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      // Present Indicator
      Container(
        padding: const EdgeInsets.all(12),
        height: height / 100 * 12,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircularPercentIndicator(
                  radius: 30,
                  lineWidth: 3,
                  percent: 0.7,
                  backgroundColor: Colors.indigo.shade100,
                  progressColor: AppColors.blue,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Image.asset("assets/dart.png", height: 30, width: 30, color: AppColors.blue,),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("68%", style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600
                    ),),
                    Text("Hit Rate this year", style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                    ))
                  ],
                ),
              ],
            ),
            Row(
              children: [
                CircularPercentIndicator(
                  radius: 30,
                  lineWidth: 3,
                  percent: 0.7,
                  backgroundColor: Colors.greenAccent.shade100,
                  progressColor: AppColors.green,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Image.asset("assets/portfolio.png", height: 30, width: 30, color: AppColors.green,),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("76%", style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600
                    ),),
                    Text("Deals this year", style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w500
                    ))
                  ],
                ),
              ],
            ),

          ],
        )),
      const SizedBox(
        height: 15,
      ),
      Container(
        padding: const EdgeInsets.all(12),
        height: height / 100 * 12,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text("10,254", style: TextStyle(
                        fontSize: 25,
                      fontWeight: FontWeight.w600
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("1.5% ↓", style: TextStyle(
                        color: AppColors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
               Text("Visitors this year", style: TextStyle(
                   color: AppColors.grey,
                   fontSize: 18
               ))
              ],
            ),
            Image.asset("assets/trace.png", width: 150)
          ],
        ),
      )
    ],
  );
}
