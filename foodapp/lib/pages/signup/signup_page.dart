import 'package:flutter/material.dart';
import 'package:foodapp/pages/signup/components/signup_auth_provider.dart';
import 'package:provider/provider.dart';

import '../../widgets/my_button.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignupPage> {
  TextEditingController fullName = TextEditingController();
  TextEditingController emailAddress = TextEditingController();
  TextEditingController password = TextEditingController();

  bool visibility = true;
  @override
  Widget build(BuildContext context) {
    SignupAuthProvider signupAuthProvider =
        Provider.of<SignupAuthProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  TextFormField(
                    controller: fullName,
                    decoration: InputDecoration(
                      hintText: "Full name",
                    ),
                  ),
                  TextFormField(
                    controller: emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email address",
                    ),
                  ),
                  TextFormField(
                    obscureText: visibility,
                    controller: password,
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            visibility = !visibility;
                          });
                        },
                        icon: Icon(
                          visibility ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  MyButton(
                    onPressed: () {
                      signupAuthProvider.signupValidation(
                          fullName: fullName,
                          context: context,
                          emailAddress: emailAddress,
                          password: password);
                    },
                    text: "SIGN UP",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?\t\t"),
                      Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Color.fromRGBO(251, 79, 20, 25),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
