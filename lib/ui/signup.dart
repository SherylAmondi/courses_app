import 'dart:html';

import 'package:courses_app/ui/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view_courses.dart';
import 'widgets/btn.dart';
import 'widgets/txt_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late String _currentSelectedValue;

  get newValue => null;

  get state => null;

  @override
  void initState() {
    _currentSelectedValue = 'Mentee';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _selectType = ["Mentee", "Mentor/Teacher"];
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
                        image: AssetImage("images/signup2.png"))),
              ),
              //'Adding Space '/
              SizedBox(
                height: 18,
              ),
              //"text "/
              Text(
                "Welcome to Pwani Teknowgalz Courses! \n\nCreate Account",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(letterSpacing: 1.2),
              ),

              //"Adding Space"
              SizedBox(
                height: 30,
              ),

              //"Dropdown formfield"
              FormField<String>(builder: (FormFieldState<String> State) {
                return InputDecorator(
                    decoration: InputDecoration(
                        errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 16),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Mentor or Mentee?',
                        contentPadding: const EdgeInsets.only(
                            left: 14, bottom: 16, top: 16),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(15)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(15))),
                    child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                      value: _currentSelectedValue,
                      isDense: true,
                      onChanged: (newValue) {
                        setState(() {
                          _currentSelectedValue = newValue!;
                          state.didChange(newValue);
                        });
                      },
                      items: _selectType.map((String value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value));
                      }).toList(),
                    )));
              }),
              //"Adding Space"/
              SizedBox(height: 16),

              //"Our Custom Text Field"/
              TxtField(
                  inputType: TextInputType.text,
                  hintText: 'Full name',
                  obscureText: false),

              //"Adding Space"/
              SizedBox(height: 16),

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
              SizedBox(height: 20),

              //"custom button"/
              Btn(
                text: 'Register',
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
                  Get.to(() => Login());
                },
                child: RichText(
                    text: TextSpan(
                        text: "Already have an account?",
                        style: TextStyle(color: Colors.black87),
                        children: <TextSpan>[
                      TextSpan(
                          text: " Login",
                          style:
                              TextStyle(color: Color.fromRGBO(230, 88, 62, 1)))
                    ])),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
