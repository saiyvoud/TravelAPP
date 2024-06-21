import 'package:flutter/material.dart';
import 'package:travelapp/components/color.dart';

class MessageRigth extends StatelessWidget {
  const MessageRigth({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
           
            children: [
              Spacer(),
              Container(
               width: 240,
               
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: primaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "ສະບາຍດີ ຍິນດດີຕ້ອນຮັບ ທຸກທ່ານ! ສະບາຍດີ ຍິນດດີຕ້ອນຮັບ ທຸກທ່ານ!ສະບາຍດີ ຍິນດດີຕ້ອນຮັບ ທຸກທ່ານ!ສະບາຍດີ ຍິນດດີຕ້ອນຮັບ ທຸກທ່ານ!",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Spacer(),
              Text("12:00 PM"),
              SizedBox(width: 10),
            ],
          )
        ],
      ),
   
    );
  
  }
}
