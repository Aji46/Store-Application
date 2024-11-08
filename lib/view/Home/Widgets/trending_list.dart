import 'package:flutter/material.dart';

class TrendingList extends StatelessWidget {
  const TrendingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 88,
      padding: const EdgeInsets.symmetric(horizontal: 17.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0,left: 10.0),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  width: 80,
                  height: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        8), 
                    child: Image.asset(
                      'assets/images/Icecrem.png',
                      height: 88,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Mithas Bhandar",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      "Sweets, North Indian",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      "(store location)  |  6.4 kms",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),

                    Row(
                      children: [
                           Image.asset(
                      'assets/images/black star.png',
                      height: 15,
                      width: 15.53,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 5,),
                        const Text(
                          "4.1  |  45 mins",
                          style:
                              TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
