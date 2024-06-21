import 'package:flutter/material.dart';
import 'package:travelapp/components/color.dart';
import 'package:travelapp/view/chat/widget/messageLeft.dart';
import 'package:travelapp/view/chat/widget/message_image_left.dart';
import 'package:travelapp/view/chat/widget/message_image_rigth.dart';
import 'package:travelapp/view/chat/widget/message_rigth.dart';

class ChatMessage extends StatefulWidget {
  const ChatMessage({super.key});

  @override
  State<ChatMessage> createState() => _ChatMessageState();
}

class _ChatMessageState extends State<ChatMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 15,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: ListTile(
            leading: Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  "assets/images/menu1.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text("username"),
            subtitle: Text("Active 20m go"),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ListView.builder(
          shrinkWrap: true,
          primary: false,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  MessageRigth(),
                  MessageLeft(),
                  MessageImageLeft(),
                  MessageImageRigth(),
                ],
              );
            }),
      ),
      
      bottomNavigationBar: Container(
        height: 100,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
               padding: const EdgeInsets.symmetric(horizontal: 8),
               child: Container(
                  width: 320,
                  height: 50,
                  decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: TextField(
                     
                      textInputAction: TextInputAction.go,
                     
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: "ພິມຂໍ້ຄວາມ",
                        suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.photo,color: Colors.grey,))
                      ),
                    ),
                  ),
                ),
             ),
           IconButton(onPressed: (){}, icon: Icon(Icons.send,color: Colors.grey,))
          ],
        ),
      ),
    
    );
  }
}
