import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = false;
  int? _selectedRadioValue = 0;
  final bool _isClickable = true;

  void _handleRadioValueChanged(int? value) {
    if (_isClickable) {
      setState(() {
        _selectedRadioValue = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.asset("images/chitchatlogo.png", height: 250,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "  Email",
                        style: TextStyle(color: Colors.black),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "john@gmail.com",
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.black)),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "  Password",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: TextFormField(
                          obscureText: !showPassword,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),
                            hintText: "Password",
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  showPassword = !showPassword;
                                });
                              },
                              child: Icon(
                                showPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Radio(
                              value: 1,
                              groupValue: _selectedRadioValue,
                              onChanged: _handleRadioValueChanged,
                            ),
                          ),
                          Text("Remember Me"),
                          SizedBox(
                            width: 140,
                          ),
                          Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        alignment: Alignment.center,
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Dont't have an account? "),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Sign up",
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 120,
                            color: Colors.grey,
                            height: 1,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Or with"),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 120,
                            color: Colors.grey,
                            height: 1,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          CustomSignUpButton(
                              imagePath: "logo_google.png", name: "Google"),
                          CustomSignUpButton(
                              imagePath: "logo_apple.png", name: "Apple")
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomSignUpButton extends StatelessWidget {
  final String? imagePath;
  final String? name;

  const CustomSignUpButton(
      {Key? key, @required this.imagePath, @required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset("images/$imagePath"), Text("${name}")],
      ),
    );
  }
}
