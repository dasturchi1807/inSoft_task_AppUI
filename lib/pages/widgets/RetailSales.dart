import 'package:flutter/material.dart';

class RetailSalesWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Map
          SizedBox(
            height: 150,
            child: Stack(
              children: [
                Image.asset("assets/map.png"),
                Positioned(
                  top: 30,
                  child: Container(
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: const Center(
                      child: Text("United States", style: TextStyle(
                        fontSize: 15,
                        color: Colors.white
                      ),),
                    ),
                  ),
                )
              ],
            )
          ),
          const SizedBox(height: 16),
          // Title
          const Text(
            "Top Retail Sales Locations",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          // Sales info
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "19,870",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Image.asset(
                    'assets/usa.png',
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            "Our most customers in USA",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          // Legend
          Column(
            children: [
              _buildLegendItem("Massive", Colors.blue, "15.7k"),
              _buildLegendItem("Large", Colors.orange, "4.9k"),
              _buildLegendItem("Medium", Colors.amber, "2.4k"),
              _buildLegendItem("Small", Colors.grey, "980"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLegendItem(String label, Color color, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 6,
                backgroundColor: color,
              ),
              const SizedBox(width: 8),
              Text(label, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            ],
          ),
          Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}