import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelapp/components/color.dart';
import 'package:travelapp/view/profile/widget/myPost.dart';
import 'package:travelapp/view/profile/widget/mySave.dart';
import 'package:travelapp/view/profile/widget/myVideo.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int selectIndex = 0;
  TabController? controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverAppBar(
                expandedHeight: 370,
                toolbarHeight: 60,
                pinned: true,
                backgroundColor: Colors.white,
                leadingWidth: 120,
                leading: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    "assets/images/travel.jpeg",
                    fit: BoxFit.cover,
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
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    children: [
                      SizedBox(height: 150),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "260K",
                                  style: TextStyle(color: primaryColor),
                                ),
                                Text(
                                  "Followers",
                                  style: TextStyle(color: primaryColor),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    "assets/images/menu1.jpeg",
                                    height: 65,
                                    width: 65,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                    right: 0,
                                    child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Icon(
                                          Icons.edit,
                                          color: Colors.white,
                                          size: 15,
                                        )))
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "260K",
                                  style: TextStyle(color: primaryColor),
                                ),
                                Text(
                                  "Followers",
                                  style: TextStyle(color: primaryColor),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text("ວິວເບິ່ງ")),
                              ),
                            ),
                            Text(
                              "Jack Stone",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text("ວິວເບິ່ງ")),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 220,
                        decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              "sfdfdlfldgkgkljgjkfdgjfdgjsdfjldskjfkjsdkfjdskj",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                bottom: TabBar(
                  controller: controller,
                  onTap: (value) {
                    setState(() {
                      selectIndex = value;
                    });
                  },
                  unselectedLabelColor: primaryColor,
                  indicatorColor: primaryColor,
                  tabs: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/apps.svg",
                          height: 20,
                          color: selectIndex == 0 ? Colors.black : Colors.grey,
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      "assets/icons/play.svg",
                      height: 20,
                      color: selectIndex == 1 ? Colors.black : Colors.grey,
                    ),
                    SvgPicture.asset(
                      "assets/icons/bookmark.svg",
                      height: 20,
                      color: selectIndex == 2 ? Colors.black : Colors.grey,
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: controller,
            children: [
              MyPost(),
              MyVideo(),
              MySave(),
            ],
          ),
        ),
      ),
    );
  }
}
