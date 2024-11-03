import 'package:flutter/material.dart';

import '../../core/asset/colors.dart';

class NewCustomers extends StatelessWidget {
  final height;
  final width;
  const NewCustomers({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 100 * 65,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("New Customers", style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600
                ),),
                Icon(Icons.more_horiz, size: 30,)
              ],
            ),
            Customers('1', "Francis Holzworth", "00222"),
            Customers('2', "Kaylyn Yokel", "00222"),
            Customers('3', "Kimberly Muro", "00222"),
            Customers('4', "Jack Sause", "00222"),
            Customers('5', "Rebekkah Lafantano", "00222"),
            Divider(color: AppColors.grey, height: 15, thickness: 1,),
            const SizedBox(height: 10,),
            Center(child: Text("VIEW MORE CUSTOMERS", style: TextStyle(fontSize: 17, color: AppColors.blue, fontWeight: FontWeight.w500),))
          ],
        ),
      ),
    );
  }

  Widget Customers(String img, String name, String id) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListTile(
        leading: CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage("assets/humans/$img.png"),
        ),
        title: Text(name, style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600
        ),),
        subtitle: Text("Customer ID#$id"),
        trailing: Icon(Icons.email_outlined, size: 30, color: AppColors.grey,),
      ),
    );
  }
}