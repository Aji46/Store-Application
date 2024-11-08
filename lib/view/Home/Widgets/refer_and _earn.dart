import 'package:bw1_mechine_task/constants/colors.dart';
import 'package:flutter/material.dart';

class ReferContainer extends StatelessWidget {
  const ReferContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return 
          Container(
      width: 374,
      height: 88,
      decoration: BoxDecoration(
        color: const Color(0xFF4CD964), // Light green color from image
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Refer & Earn",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Text(
                        "Invite your friends & earn 15% off",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: MyColors.mycolor1,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset(
              'assets/images/gift.png',
              height: 60,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    ); 
  }
}
