import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_otp_ver/pages/auth/fogot_password.dart';
import 'package:login_otp_ver/widget/auth_headers.dart';
import 'package:login_otp_ver/widget/my_button.dart';
import 'package:login_otp_ver/widget/my_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AuthHeadersWidget(
                headerTitle: 'Welcome back!',
                usersCred: 'New here?',
                usersCredButtonTitle: 'Create account',
              ),
              SizedBox(
                height: 40,
              ),
              MyTextField(
                hintText: 'Email Address',
                icon: Icons.alternate_email_outlined,
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                  hintText: 'Password',
                  icon: Icons.lock,
                  suffixIcon: OutlinedButton(
                    onPressed: () {
                      
                    },
                    child: Text("Forgot?"),
                  )),
              SizedBox(
                height: 40,
              ),
              MyButton(
                onTap: () {},
                title: 'Login',
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "or login with",
                  style: TextStyle(color: Color.fromARGB(255, 207, 192, 189)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Image.asset(
                        'lib/images/googleimage.jpg',
                        width: 20,
                      )),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: Icon(
                      Icons.apple,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: Icon(
                      Icons.facebook,
                      color: Colors.blue,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
