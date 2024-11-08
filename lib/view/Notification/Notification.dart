
import 'package:bw1_mechine_task/Controller/Provider/notification_provider.dart';
import 'package:bw1_mechine_task/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {
      Provider.of<NotificationProvider>(context, listen: false).fetchNotifications();
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notifications",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_circle_left_sharp,
            color: MyColors.mycolor1,
            size: 25,
          ),
        ),
      ),
      body: SafeArea(
        child: Consumer<NotificationProvider>(
          builder: (context, provider, child) {
            if (provider.isLoading) {
              return const Center(
                child: CircularProgressIndicator(color: MyColors.mycolor1),
              );
            }

            if (provider.notificationResponse == null ||
                provider.notificationResponse!.data.isEmpty) {
              return const Center(child: Text('No notifications available.'));
            }

            return SizedBox(
              width: double.infinity, 
              child: ListView.separated(
                shrinkWrap: true,    
                physics: const AlwaysScrollableScrollPhysics(), 
                itemCount: provider.notificationResponse!.data.length,
                itemBuilder: (BuildContext context, int index) {
                  final notification = provider.notificationResponse!.data[index];
                  
                  return SizedBox(
                    width: double.infinity,  
                    child: ListTile(
                      leading:
                          Image.asset(
                              "assets/images/${notification.image}",
                              width: 30,
                              height: 30,
                              fit: BoxFit.cover,
                            ),
                      title: Text(
                        notification.title,
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min, 
                        children: [
                          Text(
                            notification.body,
                            overflow: TextOverflow.ellipsis, 
                          ),
                          const SizedBox(height: 4),
                          Text(
                            ' ${notification.timestamp.toLocal().toString().split(' ')[1]}',
                            style: const TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
