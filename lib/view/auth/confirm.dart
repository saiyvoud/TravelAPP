import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:travelapp/components/color.dart';
import 'package:travelapp/components/loading.dart';
import 'package:travelapp/provider/auth_provider.dart';
import 'package:travelapp/view/auth/login.dart';

import 'package:travelapp/view/auth/verifyEmail.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({super.key});

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  bool _eye = true;
  final email = TextEditingController();
  final password = TextEditingController();
  final confrim = TextEditingController();
  final globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
      builder: (context,user,child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Form(
            key: globalKey,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 120),
                    Center(
                      child: Text(
                        "ສ້າງລະຫັດຜ່ານໃຫມ່",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Divider(
                      indent: 50,
                      endIndent: 50,
                    ),
                    SizedBox(height: 10),
                    Text("email"),
                    SizedBox(height: 10),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: TextFormField(
                        controller: email,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "ອີເມວຫ້າມວ່າງ!";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: "email@gmail.com",
                            contentPadding: EdgeInsets.symmetric(horizontal: 15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("ລະຫັດຜ່ານໃຫມ່"),
                    SizedBox(height: 10),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: TextFormField(
                        obscureText: _eye,
                        controller: password,
                         validator: (value) {
                            if (value!.isEmpty) {
                              return "ລະຫັດຜ່ານຫ້າມວ່າງ!";
                            }
                            return null;
                          },
                        decoration: InputDecoration(
                            hintText: "password..",
                            contentPadding: EdgeInsets.symmetric(horizontal: 15),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _eye = !_eye;
                                });
                              },
                              icon: Icon(Icons.remove_red_eye),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("ຢືນຢັນລະຫັດຜ່ານ"),
                    SizedBox(height: 10),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: TextFormField(
                        obscureText: _eye,
                        controller: confrim,
                         validator: (value) {
                            if (!value!.contains(password.text)) {
                              return "ລະຫັດຜ່ານບໍ່ຕົງກັນ";
                            }
                            return null;
                          },
                        decoration: InputDecoration(
                            hintText: "Comfirm Password..",
                            contentPadding: EdgeInsets.symmetric(horizontal: 15),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _eye = !_eye;
                                });
                              },
                              icon: Icon(Icons.remove_red_eye),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        if(globalKey.currentState!.validate()){
                          Loading(context);
                          user.forgetPassword(email: email.text, password: password.text);
                        }
                      
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xff62BFC5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "ຢືນຢັນ",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Back",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
