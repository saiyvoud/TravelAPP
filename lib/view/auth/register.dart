import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool _eye = true;

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
              Image.asset("assets/images/logo.png"),
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
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "firstname",
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(height: 10),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    //color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "lastname",
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(height: 10),
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
              SizedBox(height: 10),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    //color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: TextFormField(
                  obscureText: _eye,
                  decoration: InputDecoration(
                      hintText: "Password..",
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
              SizedBox(height: 10),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    //color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: TextFormField(
                  obscureText: _eye,
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
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff62BFC5),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text("Go to your new experience")
            ],
          ),
        ),
      ),
    );
  }
}
