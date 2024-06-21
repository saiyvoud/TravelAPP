import 'package:flutter/material.dart';
import 'package:travelapp/components/color.dart';

class MessageLeft extends StatelessWidget {
  const MessageLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
     
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 30,
                width: 30,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                  "assets/images/menu1.jpeg",
                  fit: BoxFit.cover,
                )),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: Colors.grey,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "ທຸກທ່ານສະບາຍດີ ຍິນດດີຕ້ອນຮັບ ທຸກທ່ານ",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Text("12:00 PM"),
                  SizedBox(width: 10)
                ],
              ),
            ],
          ),
        ],
      ),
   
    );
  }
}
