import 'package:flutter/material.dart';
class TrendingList extends StatelessWidget{
  String title;
  String img;
  num nights;
  num days;
  num price;

  TrendingList({super.key,required this.title, required this.nights, required this.days, required this.price, required this.img});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
        child: Container(
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 8,
              ),
            ],
          ),
          child: Row(
            children: [
              // Left Side: Image
              Container(
                height: 120,
                width: 150,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  child: Image.network(
                    img,
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
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        maxLines: 1, // Prevents text breaking layout if too long
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(Icons.schedule, size: 16, color: Colors.grey),
                          SizedBox(width: 5),
                          Text(
                            "$nights nights - $days days",
                            style: TextStyle(color: Colors.grey, fontSize: 13,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Spacer(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$$price',
                            style: TextStyle(
                              color: Colors.blue,
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
    );
  }
}