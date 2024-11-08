import 'package:bw1_mechine_task/constants/colors.dart';
import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return 
          const Row(children: [
            Icon(Icons.location_on, color:MyColors.mycolor1,),
            Text("ABCD,New Delhi" , style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,  
                height: 1.25,
                 ),),
            Icon(Icons.keyboard_arrow_down_sharp , color:MyColors.mycolor1,)
          ],);  
  }
}
