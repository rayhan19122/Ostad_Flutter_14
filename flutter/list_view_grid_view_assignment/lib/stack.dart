import 'package:flutter/material.dart';
class St extends StatelessWidget{
  const St({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    // Left Side: Image
                    Container(
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        child: Image.network(
                          'https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // Right Side: Content
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Romantic Paris Gateway",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15,
                              ),
                              // maxLines: 1, // Prevents text breaking layout if too long
                              // overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 5),
                            const Row(
                              children: [
                                Icon(Icons.schedule, size: 16, color: Colors.white70),
                                SizedBox(width: 5),
                                Text(
                                  "4 nights - 5 days",
                                  style: TextStyle(color: Colors.white70, fontSize: 12),
                                ),
                              ],
                            ),
                            const Spacer(),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '\$799',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    backgroundColor: Colors.blue,
                                    minimumSize: Size.zero,
                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                    //tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Book Now',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),

        ),
      ),
    );
  }
}