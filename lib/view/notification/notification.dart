import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelapp/components/color.dart';
import 'package:travelapp/components/data.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Text(
              "Notification",
              style: TextStyle(
                fontSize: 18,
                color: primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SvgPicture.asset(
              "assets/icons/search.svg",
              color: primaryColor,
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: noti.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(80),
                            child: Image.asset(
                              noti[index]['image'],
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            noti[index]['name'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            noti[index]['content'],
                            style: TextStyle(
                              fontSize: 16,
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "13:00 17-07-2024",
                        style: TextStyle(fontSize: 11),
                      )
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
