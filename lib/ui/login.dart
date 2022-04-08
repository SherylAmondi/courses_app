import 'package:courses_app/ui/forgot_pass.dart';
import 'package:courses_app/ui/signup.dart';
import 'package:courses_app/ui/view_courses.dart';
import 'package:courses_app/ui/widgets/btn.dart';
import 'package:courses_app/ui/widgets/txt_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: Get.size.height * .3,
                width: Get.size.width * 0.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/login2.png"))),
              ),
              //'Adding Space '/
              SizedBox(
                height: 18,
              ),
              //"text "/
              Text(
                "Login",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold, letterSpacing: 1.2),
              ),

              //"Adding Space"
              SizedBox(
                height: 30,
              ),

              //"Our Custom Text Field"/
              TxtField(
                  inputType: TextInputType.emailAddress,
                  hintText: 'Email',
                  obscureText: false),

              //"Adding Space"/
              SizedBox(height: 16),

              //"Our Custom Text Field"/
              TxtField(
                  inputType: TextInputType.text,
                  hintText: 'Password',
                  obscureText: true),

              //"Adding Space"/
              SizedBox(height: 10),

              //"A row with a button at the end"/
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Get.to(() => ForgotPass());
                      },
                      child: const Text(
                        'Forgot Password?',
                        style:
                            TextStyle(color: Color.fromRGBO(247, 153, 46, 1)),
                      ))
                ],
              ),
              //"Adding Space"/
              SizedBox(
                height: 10,
              ),

              //"custom button"/
              Btn(
                text: 'Login',
                onPressed: () {
                  Get.to(() => ViewCourses());
                },
              ),
              //space
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => SignUp());
                },
                child: RichText(
                    text: TextSpan(
                        text: "Don\'t have an account?",
                        style: TextStyle(color: Colors.black87),
                        children: <TextSpan>[
                      TextSpan(
                          text: " Sign up",
                          style:
                              TextStyle(color: Color.fromRGBO(230, 88, 62, 1)))
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
