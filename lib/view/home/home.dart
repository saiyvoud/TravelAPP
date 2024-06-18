import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelapp/components/color.dart';
import 'package:travelapp/components/data.dart';
import 'package:travelapp/view/home/widget/card_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
     
     body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: 140,
              child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(80),
                            child: Image.asset(
                              data[index]['image'],
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            ),
                          ),
                        ),
                        Text(data[index]['title']),
                      ],
                    );
                  }),
            ),
            ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Divider(
                        color: Colors.black,
                      ),
                      CardWidgets(),
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}
