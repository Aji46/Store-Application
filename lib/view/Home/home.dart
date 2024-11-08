import 'package:bw1_mechine_task/constants/colors.dart';
import 'package:bw1_mechine_task/view/Home/Widgets/Craze%20deals.dart';
import 'package:bw1_mechine_task/view/Home/Widgets/Divider.dart';
import 'package:bw1_mechine_task/view/Home/Widgets/bottom_nav_bar.dart';
import 'package:bw1_mechine_task/view/Home/Widgets/button.dart';
import 'package:bw1_mechine_task/view/Home/Widgets/carosal.dart';
import 'package:bw1_mechine_task/view/Home/Widgets/category.dart';
import 'package:bw1_mechine_task/view/Home/Widgets/location.dart';
import 'package:bw1_mechine_task/view/Home/Widgets/more.dart';
import 'package:bw1_mechine_task/view/Home/Widgets/nearvy_store.dart';
import 'package:bw1_mechine_task/view/Home/Widgets/refer_and%20_earn.dart';
import 'package:bw1_mechine_task/view/Home/Widgets/search.dart';
import 'package:bw1_mechine_task/view/Home/Widgets/trending_list.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: LocationWidget(),
              ),
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: SearchWidget(),
              ),
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: Text(
                  "What would you like to do today?",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Category(),
              const More(),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Text(
                      "Top picks for you",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Carosal(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Text(
                      "Trending",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: MyColors.mycolor1,
                      ),
                    ),
                  ),
                ],
              ),
              const TrendingList(),
              const SizedBox(
                height: 10,
              ),
              const TrendingList(),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Text(
                      "Craze deals",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              CrazeDeals(),
              const Padding(
                  padding: EdgeInsets.all(13.0), child: ReferContainer()),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Text(
                      "Nearby stores",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: MyColors.mycolor1,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: NearvyStore(),
              ),
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: NearvyStore(),
              ),
              const SizedBox(height: 30),
              const Button(),
              const SizedBox(height: 20),
              const Divide(),
              const BottomNavBar(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
