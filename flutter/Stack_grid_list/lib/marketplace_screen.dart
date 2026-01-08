import 'package:flutter/material.dart';
import 'product_card.dart';
class MarketplaceScreen extends StatelessWidget {
  const MarketplaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shoe Marketplace")),
      backgroundColor: Colors.grey[200], // Light grey background looks better

      // ---------------- THE GRID ----------------
      body: GridView.builder(
        padding: const EdgeInsets.all(10), // Padding around the whole grid
        itemCount: 6, // We want to show 6 shoes

        // This Delegate controls the Layout
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,      // 2 Columns
          crossAxisSpacing: 10,   // Horizontal gap
          mainAxisSpacing: 10,    // Vertical gap
          childAspectRatio: 0.8,  // width / height (Play with this number!)
        ),

        // This builds every single item
        itemBuilder: (context, index) {
          return const ProductCard();
        },
      ),
    );
  }
}