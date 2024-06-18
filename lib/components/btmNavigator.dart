import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelapp/components/color.dart';
import 'package:travelapp/view/chat/room.dart';
import 'package:travelapp/view/home/home.dart';
import 'package:travelapp/view/profile/profile.dart';

class BtmNavigator extends StatefulWidget {
  const BtmNavigator({super.key});

  @override
  State<BtmNavigator> createState() => _BtmNavigatorState();
}

class _BtmNavigatorState extends State<BtmNavigator> {
  int currentIndex = 0;
  List children = [
    HomeView(),
    Room(),
    Container(
      height: 100,
      decoration: BoxDecoration(color: primaryColor),
    ),
    Container(
      height: 100,
      decoration: BoxDecoration(color: primaryColor),
    ),
    Profile(),
  ];
  ontTap(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: ontTap,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/home.svg",color: primaryColor,),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/comment.svg",color: primaryColor,),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/add.svg",color: primaryColor,),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/bell.svg",color: primaryColor,),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/user.svg",color: primaryColor,),
            label: ""
          ),
          
        ],
      ),
    );
  }
}
