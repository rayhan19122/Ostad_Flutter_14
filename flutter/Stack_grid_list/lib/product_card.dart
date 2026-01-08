import 'package:flutter/material.dart';
class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // We don't set specific Width/Height here!
      // The Grid controls the size now.
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          // IMAGE
          Positioned.fill( // .fill makes it match the parent size
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                "https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80",
                fit: BoxFit.cover,
              ),
            ),
          ),

          // TEXT
          const Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              "Nike Air",
              style: TextStyle(
                color: Colors.white, // Changed to white to see on image
                fontWeight: FontWeight.bold,
                fontSize: 18,
                shadows: [Shadow(blurRadius: 10, color: Colors.black)], // Text Shadow
              ),
            ),
          ),

          // BADGE
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                "50%",
                style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}