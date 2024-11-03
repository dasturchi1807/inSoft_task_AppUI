import 'package:flutter/material.dart';

import '../../core/asset/colors.dart';

Widget overview(double height, double width) {
  return Container(
    padding: const EdgeInsets.only(left: 5, right: 5),
    height: height / 100 * 10,
    width: width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Overview", style: TextStyle(
                color: AppColors.black,
                fontSize: 30,
                fontWeight: FontWeight.w500
            ),),
            Row(
              children: [
                Text("Show: ", style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 20
                ),),
                Text("This Year", style: TextStyle(
                    color: AppColors.black,
                    fontSize: 20
                ),),
                Icon(Icons.arrow_drop_down, size: 30, color: AppColors.grey,)
              ],
            )
          ],
        ),
        IconButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.blue,
                fixedSize: const Size(50, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
            ),
            icon: const Icon(Icons.file_open_outlined, color: Colors.white, size: 30))
      ],
    ),
  );
}