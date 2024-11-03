import 'package:flutter/material.dart';

import '../../core/asset/colors.dart';

AppBar appBar(double height, double width) {
  return AppBar(
    backgroundColor: Colors.white,
    leadingWidth: double.maxFinite,
    toolbarHeight: 75,
    leading: Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          const Icon(Icons.menu, size: 35),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(color: AppColors.grey, width: 1)
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, size: 35, color: AppColors.grey2,),
                    Text("Search", style: TextStyle(color: AppColors.grey2, fontSize: 23)),
                  ],
                )
            ),
          ),
          // SizedBox(
          //   width: 10,
          // ),
          Stack(
            children: [
              IconButton(onPressed: () {},
                  icon: const Icon(Icons.notifications_none_rounded, size: 35,)),
              Positioned(
                  left: 29,
                  top: 13,
                  child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: AppColors.red,
                          shape: BoxShape.circle
                      ))),
            ],
          )
        ],
      ),
    ),
  );
}