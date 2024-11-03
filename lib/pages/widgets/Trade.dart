import 'package:flutter/material.dart';
import 'package:sales_analytics_ui/core/asset/colors.dart';

Widget trade(double height, double width) {
  return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              overview(height, width, "Sales", 2.5, 10289, 21340),
              overview(height, width, "Purchase", 0.5, 20921, 19000)
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              overview(height, width, "Return", -1.5, 149, 165),
              overview(height, width, "Marketing", 2.5, 17390, 10500)
            ],
          )
        ],
  );
}

Widget overview(double height, double width, String name, double per, int price, int annual) {
  return Container(
    height: height / 100 * 17,
    width: width / 100 * 45,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                const SizedBox(width: 10),
                Text(per > 0 ? "+$per% ↑" : "$per% ↓", style: TextStyle(
                  color: per > 0 ? AppColors.green : AppColors.red,
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                ),)
              ],
            ),
          Text("\$$price", style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700
          ),),
          Text("Compared to (\$$annual last year)", style: const TextStyle(
            fontSize: 14,
            color: Colors.grey
          ))
        ],
      ),
    )
  );
}