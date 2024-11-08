import 'package:bw1_mechine_task/constants/colors.dart';
import 'package:flutter/material.dart';

class NearvyStore extends StatelessWidget {
  const NearvyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/Group 282.png',
              height: 80,
              width: 72,
              fit: BoxFit.contain,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Freshly Baker",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Sweets, North Indiana",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                const Text(
                  "Site No - 1  |  6.4 kms",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                ),
                SizedBox(
                  height: 8,
                  width: 35,
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 214, 214, 214),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: const Text(
                      "Top Store",
                      style: TextStyle(
                        fontFamily: "assets/fonts/Roboto-Bold.ttf",
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500,
                        fontSize: 5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/black star.png',
                      height: 15,
                      width: 15.53,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    const Text("4.1",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16))
                  ],
                ),
                const Text("45 mins",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: MyColors.mycolor8))
              ],
            ),
          ],
        ),
       Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    const Divider(
      color: Color.fromARGB(255, 209, 209, 209),
      height: 20,
      thickness: 1,
      indent: 113,
      endIndent: 10,
    ),
    
    Align(
      alignment: Alignment.topRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 16,
            width: 16,
            child: Image.asset(
              'assets/images/off.png',
              height: 16,
              width: 16,
              fit: BoxFit.contain,
            ),
          ),
          const Text("Upto 10% OFF",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 16,
            width: 16,
            child: Image.asset(
              'assets/images/grocery (1) 1.png',
              height: 16,
              width: 16,
              fit: BoxFit.contain,
            ),
          ),
          const Text(
            "3400+ items available",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
          ),
        ],
      ),
    ),
  ],
)

      ],
    );
  }
}
