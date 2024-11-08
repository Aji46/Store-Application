import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return     Padding(
      padding: const EdgeInsets.only(right:15.0,left: 15.0),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
               Image.asset(
                        'assets/images/home.png',
                        height: 30,
                        width: 31.2,
                        fit: BoxFit.contain,
                      ),
                      const Text("Home",style:TextStyle(fontWeight:FontWeight.w500,fontSize: 14) ,),
            ],
          ),
             Column(
            children: [
               Image.asset(
                        'assets/images/cart.png',
                        height: 30,
                        width: 31.2,
                        fit: BoxFit.contain,
                      ),
                      const Text("Cart",style:TextStyle(fontWeight:FontWeight.w500,fontSize: 14) ,),
            ],
          ),
             Column(
            children: [
               Image.asset(
                        'assets/images/my order.png',
                        height: 30,
                        width: 31.2,
                        fit: BoxFit.contain,
                      ),
                      const Text("My Order",style:TextStyle(fontWeight:FontWeight.w500,fontSize: 14) ,),
            ],
          ),
             Column(
            children: [
               Image.asset(
                        'assets/images/people.png',
                        height: 30,
                        width: 31.2,
                        fit: BoxFit.contain,
                      ),
                      const Text("Account",style:TextStyle(fontWeight:FontWeight.w500,fontSize: 14) ,),
            ],
          ),
        ],
      ),
    );
        
  }
}
