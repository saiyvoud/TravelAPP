import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MySave extends StatefulWidget {
  const MySave({super.key});

  @override
  State<MySave> createState() => _MySaveState();
}

class _MySaveState extends State<MySave> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 12,
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/menu1.jpeg",
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 15,
                left: 10,
                child: SvgPicture.asset(
                  "assets/icons/play.svg",
                  height: 15,
                  color: Colors.white,
                ),
              )
            ],
          );
        });
  }
}
