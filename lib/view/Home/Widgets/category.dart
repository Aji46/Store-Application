import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key});

  final List<String> images = [
    "assets/images/Food Delivery.png",
    "assets/images/medicines.png",
    "assets/images/Pet Supplies.png",
    "assets/images/gifts.png",
    "assets/images/meat.png",
    "assets/images/Make Up.png",
    "assets/images/Stationery.png",
    "assets/images/Stores.png",
  ];

  final List<String> names = [
    "Food Delivery",
    "Medicines",
    "Pet Supplies",
    "Gifts",
    "Meat",
    "Cosmetic",
    "Stationery",
    "Stores",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 1.0,
          childAspectRatio: 0.8, 
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          final nameParts = names[index].split(" ");
          final str1 = nameParts[0];
          final str2 = nameParts.length > 1 ? nameParts[1] : null;

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                   
                 
                  Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        images[index],
                        height: 45,
                        width: 45,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  index==0 || index==1|| index==2 || index==7 ?
                    Positioned(
                          top: 2,
                          right: 2, 
                      child: Image.asset(
                          "assets/images/10 off.png",
                          fit: BoxFit.fill,
                        ),
                    ):const SizedBox()
                ],
              ),
              Text(
                str1,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              if (str2 != null)
                Text(
                  str2,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
            ],
          );
        },
      ),
    );
    
  }
}
