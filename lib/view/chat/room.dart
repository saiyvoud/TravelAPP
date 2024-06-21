import 'package:flutter/material.dart';
import 'package:travelapp/components/color.dart';
import 'package:travelapp/view/chat/comunity/comunity.dart';
import 'package:travelapp/view/chat/widget/chat.dart';

class Room extends StatefulWidget {
  const Room({super.key});

  @override
  State<Room> createState() => _RoomState();
}

class _RoomState extends State<Room> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          height: 40,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "ຄົ້ນຫາແຊັດ",
              prefixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatMessage(),
                      ));
                },
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
                                "assets/images/menu1.jpeg",
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("username"),
                            Text("lastMessage"),
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
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        elevation: 5,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Comunity(),
              ));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(80),
          child: Image.asset(
            "assets/images/community.jpeg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
