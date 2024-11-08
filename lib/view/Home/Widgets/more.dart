import 'package:bw1_mechine_task/constants/colors.dart';
import 'package:flutter/material.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return 
           const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "More",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: MyColors.mycolor1),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: MyColors.mycolor1,
                  )
                ],
              ); 
  }
}
