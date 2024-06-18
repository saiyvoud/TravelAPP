import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelapp/components/color.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  // Initial Selected Value
  String? dropdownvalue;

  // List of items in our dropdown menu
  var items = [
    'Advanger',
    'Relax',
    'Resort',
    'natural',
 
  ];
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
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Post",
                style: TextStyle(
                  fontSize: 18,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
            
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/images/menu1.jpeg",
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(width: 10),
                    Text("Jack Stone")
                  ],
                ),
              ),
                TextFormField(
                decoration: InputDecoration(
                  hintText: "Topic",
                  hintStyle: TextStyle(color: primaryColor,fontSize: 18,fontWeight: FontWeight.bold,)
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 100,
                decoration: BoxDecoration(color: Colors.grey.shade400),
                child: TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                      hintText: "Create your caption",
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.grey.shade400),
                child: Icon(
                  Icons.add,
                  size: 40,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 50,
                            
                  decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: DropdownButton(
                      // Initial Value
                      value: dropdownvalue,
                      
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),
                      hint: Text("Categories"),
                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("Add Location"),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
