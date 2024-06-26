import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';
import 'package:travelapp/components/color.dart';

class CardWidgets extends StatefulWidget {
  const CardWidgets({super.key});

  @override
  State<CardWidgets> createState() => _CardWidgetsState();
}

class _CardWidgetsState extends State<CardWidgets> {
  List comment = [
    {
      "id": 1,
      "profile": "assets/images/menu1.jpeg",
      "username": "Jack Stone",
      "comment": "hello myy friend",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    "assets/icons/user.svg",
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "username",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "ວັງວຽງ ເມືອງເຟືອງ ແຂວງວຽງຈັນ",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              Spacer(),
              GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    "assets/icons/more.svg",
                    color: primaryColor,
                    height: 20,
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                "assets/images/menu1.jpeg",
                fit: BoxFit.cover,
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ReadMoreText(
            "sfdghjkl;'hgyerefoglsgdskfdal;fksdkfksdfksldfkdsfksdkfskdfkdsflksdlkfkdskfklsdfwerwrwrwrwrwrwadsfghjgfdsfdfdfdfdfdf",
            trimLines: 2,
            colorClickableText: primaryColor,
            trimMode: TrimMode.Line,
            style: TextStyle(fontSize: 15),
            trimCollapsedText: 'ອ່ານເພີ່ມ',
            trimExpandedText: ' ນ້ອຍລົງ',
            lessStyle: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: primaryColor),
            moreStyle: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: primaryColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Spacer(),
              SvgPicture.asset(
                "assets/icons/heart.svg",
                height: 20,
                color: primaryColor,
              ),
              SizedBox(width: 15),
              SvgPicture.asset(
                "assets/icons/comment.svg",
                height: 20,
                color: primaryColor,
              ),
              SizedBox(width: 15),
              SvgPicture.asset(
                "assets/icons/share.svg",
                height: 20,
                color: primaryColor,
              ),
              SizedBox(width: 10),
            ],
          ),
        )
      ],
    );
  }
}
