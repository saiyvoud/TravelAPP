import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelapp/components/btmNavigator.dart';
import 'package:travelapp/components/color.dart';
import 'package:travelapp/provider/auth_provider.dart';
import 'package:travelapp/view/auth/register.dart';
import 'package:travelapp/view/auth/verifyEmail.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
      builder: (context,userProvider,child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(height: 120),
                  Text(
                    "ໂປຣໃສ່ ເບີໂທລະສັບ ເພື່ອກສ້າງລະຫັດຜ່ານໃຫມ່",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(
                    indent: 50,
                    endIndent: 50,
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                       
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: TextFormField(
                      controller: email,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: "20 xx..",
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                 
                  SizedBox(height: 20),
                 
                  GestureDetector(
                    onTap: () {
                      // userProvider.sendEmail(email: email.text);
                     
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VerifyEmail(),
                          ));
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xff62BFC5),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "ສົ່ງ",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextButton(
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
                  SizedBox(height: 10),
                  Text("ຖ້າພົບບັນຫາໃຫ້ຕິດຕໍ່ຫາ ແອັດມິນ")
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
