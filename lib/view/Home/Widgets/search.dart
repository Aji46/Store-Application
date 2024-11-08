import 'package:bw1_mechine_task/constants/colors.dart';
import 'package:bw1_mechine_task/view/Notification/Notification.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 6,
          child: Container(
              decoration: const BoxDecoration(
                color: MyColors.mycolor5,
              ),
              child: SizedBox(
                width: 272,
                height: 48,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Search for product/stores",
                    labelStyle: const TextStyle(
                        fontSize: 16,
                        color: MyColors.mycolor3,
                        fontFamily: "assets/fonts/Quicksand-Light.ttf",
                        fontWeight: FontWeight.w400),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/Search.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 12),
                  ),
                ),
              )),
        ),
        Expanded(
          flex: 1,
          child: Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.notifications_outlined,
                  size: 30,
                  color: MyColors.mycolor2,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationPage()),
                  );
                },
              ),
              Positioned(
                top: 2,
                right: 2,
                child: Container(
                  padding: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 16.15,
                    minHeight: 16.15,
                  ),
                  child: const Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Image.asset(
            'assets/images/label.png',
            width: 30,
            height: 30,
          ),
        ),
      ],
    );
  }
}
