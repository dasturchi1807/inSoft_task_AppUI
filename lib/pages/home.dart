import 'package:flutter/material.dart';
import 'package:sales_analytics_ui/pages/widgets/NewCustomers.dart';
import 'package:sales_analytics_ui/pages/widgets/RetailSales.dart';
import 'package:sales_analytics_ui/pages/widgets/SalesReportCard.dart';
import 'package:sales_analytics_ui/pages/widgets/YearlyVisitorsCard.dart';
import 'package:sales_analytics_ui/pages/widgets/Appbar.dart';
import 'package:sales_analytics_ui/pages/widgets/SalesFigures.dart';
import 'package:sales_analytics_ui/pages/widgets/Trade.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height =  MediaQuery.of(context).size.height;
    double width =  MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFFAFAFB),
      appBar: appBar(height, width),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: ListView(
          children: [
            trade(height, width),
            const SizedBox(
              height: 30,
            ),
            SalesFigures(height, width),
            const SizedBox(
              height: 30,
            ),
            SalesReportCard(),
            const SizedBox(
              height: 30,
            ),
          YearlyVisitorsCard(),
            const SizedBox(
              height: 30,
            ),
            RetailSalesWidget(),
            const SizedBox(
              height: 30,
            ),
            NewCustomers(height: height, width: width),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
