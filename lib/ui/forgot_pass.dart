import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'reset_pass.dart';
import 'widgets/btn.dart';
import 'widgets/txt_field.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
    	width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,
    	padding: EdgeInsets.all(20),
    	child: SingleChildScrollView(
      	child: Column(
        	children: [
          	SizedBox(height: MediaQuery.of(context).size.height * .09),
          	Container(
            	height: MediaQuery.of(context).size.height * .3,
            	width: MediaQuery.of(context).size.height * .3,
            	decoration: BoxDecoration(
                	image: DecorationImage(
                    	image: AssetImage("images/forgotpass2.png"))),
          	),
          	SizedBox(height: 18),
          	Text("Forgot Password",
              	style: Theme.of(context).textTheme.headline5!.copyWith()),
          	SizedBox(height: 30),
          	TxtField(hintText: "Enter your email",
              	inputType: TextInputType.emailAddress,
              	obscureText: false),
          	SizedBox(height: 16),
          	Btn(
              	text: "Reset password",
              	onPressed: () {
                	Get.to(() => ResetPass());
              	}),
          	SizedBox(height: 25),
        	],
      	),


      ),
      ),  
    );
  }
}