import 'package:flutter/material.dart';
import 'package:travelapp/components/btmNavigator.dart';
import 'package:travelapp/components/color.dart';
import 'package:travelapp/view/auth/register.dart';
import 'package:travelapp/view/auth/verifyEmail.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 120),
              Text(
                "ໂປຣໃສ່ email ເພື່ອກສ້າງລະຫັດຜ່ານໃຫມ່",
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
                    //color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "example@gmail.com",
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
             
              SizedBox(height: 20),
             
              GestureDetector(
                onTap: () {
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
}
