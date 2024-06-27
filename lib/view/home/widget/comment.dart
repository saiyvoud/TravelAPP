import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';
import 'package:travelapp/components/color.dart';

class Comment extends StatefulWidget {
  const Comment({super.key});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  List comment = [
    {
      "id": 1,
      "profile": "assets/images/menu1.jpeg",
      "username": "Jack Stone",
      "comment":
          "hello myy friend sfdghjkl;'hgyerefoglsgdskfdal;fksdkfksdfksldfkdsfksdkfskdfkdsflksdlkfkdskfklsdfwerwrwrwrwrwrwadsfghjgfdsfdfdfdfdfdf",
    },
    {
      "id": 1,
      "profile": "assets/images/menu2.jpeg",
      "username": "Jack Stone",
      "comment":
          "hello myy friend sfdghjkl;'hgyerefoglsgdskfdal;fksdkfksdfksldfkdsfksdkfskdfkdsflksdlkfkdskfklsdfwerwrwrwrwrwrwadsfghjgfdsfdfdfdfdfdf",
    },
    {
      "id": 1,
      "profile": "assets/images/menu3.jpeg",
      "username": "Jack Stone",
      "comment":
          "hello myy friend sfdghjkl;'hgyerefoglsgdskfdal;fksdkfksdfksldfkdsfksdkfskdfkdsflksdlkfkdskfklsdfwerwrwrwrwrwrwadsfghjgfdsfdfdfdfdfdf",
    },
    {
      "id": 1,
      "profile": "assets/images/menu4.jpeg",
      "username": "Jack Stone",
      "comment":
          "hello myy friend sfdghjkl;'hgyerefoglsgdskfdal;fksdkfksdfksldfkdsfksdkfskdfkdsflksdlkfkdskfklsdfwerwrwrwrwrwrwadsfghjgfdsfdfdfdfdfdf",
    },
    {
      "id": 1,
      "profile": "assets/images/menu1.jpeg",
      "username": "Jack Stone",
      "comment":
          "hello myy friend sfdghjkl;'hgyerefoglsgdskfdal;fksdkfksdfksldfkdsfksdkfskdfkdsflksdlkfkdskfklsdfwerwrwrwrwrwrwadsfghjgfdsfdfdfdfdfdf",
    },
    {
      "id": 1,
      "profile": "assets/images/menu2.jpeg",
      "username": "Jack Stone",
      "comment":
          "hello myy friend sfdghjkl;'hgyerefoglsgdskfdal;fksdkfksdfksldfkdsfksdkfskdfkdsflksdlkfkdskfklsdfwerwrwrwrwrwrwadsfghjgfdsfdfdfdfdfdf",
    },
    {
      "id": 1,
      "profile": "assets/images/menu3.jpeg",
      "username": "Jack Stone",
      "comment":
          "hello myy friend sfdghjkl;'hgyerefoglsgdskfdal;fksdkfksdfksldfkdsfksdkfskdfkdsflksdlkfkdskfklsdfwerwrwrwrwrwrwadsfghjgfdsfdfdfdfdfdf",
    },
    {
      "id": 1,
      "profile": "assets/images/menu4.jpeg",
      "username": "Jack Stone",
      "comment":
          "hello myy friend sfdghjkl;'hgyerefoglsgdskfdal;fksdkfksdfksldfkdsfksdkfskdfkdsflksdlkfkdskfklsdfwerwrwrwrwrwrwadsfghjgfdsfdfdfdfdfdf",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: primaryColor,
          ),
        ),
        centerTitle: true,
        title: Text(
          "username",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
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
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Container(
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "ພິມສະແດງຄວາມຄິດເຫັນ",
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          "assets/icons/paper-plane.svg",
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
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
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
                moreStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
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
            ),
            SizedBox(height: 5),
            Container(
              height: 5,
              color: Colors.grey.shade200,
            ),
            SizedBox(height: 10),
            ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: comment.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                comment[index]['profile'],
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              comment[index]['username'],
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 260,
                              child: Text(
                                comment[index]['comment'],
                                maxLines: 10,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        // Spacer(),
                        // GestureDetector(
                        //     onTap: () {},
                        //     child: SvgPicture.asset(
                        //       "assets/icons/more.svg",
                        //       color: primaryColor,
                        //       height: 20,
                        //     )),
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
