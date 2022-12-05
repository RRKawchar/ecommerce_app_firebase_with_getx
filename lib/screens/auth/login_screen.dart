import 'package:ecommerece_app_with_firebase_and_mvvm/constants/constants.dart';
import 'package:ecommerece_app_with_firebase_and_mvvm/core/view_mdoel/auth_view_model.dart';
import 'package:ecommerece_app_with_firebase_and_mvvm/widget/custom_button.dart';
import 'package:ecommerece_app_with_firebase_and_mvvm/widget/custom_text.dart';
import 'package:ecommerece_app_with_firebase_and_mvvm/widget/custom_text_form_field.dart';
import 'package:ecommerece_app_with_firebase_and_mvvm/widget/social_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
   LoginScreen({Key? key}) : super(key: key);


  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Welcome",
                    fontSize: 30,
                  ),
                  CustomText(
                    text: "Sign Up",
                    fontSize: 18,
                    color: primaryColor,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              CustomText(
                text: "Sign in to Continue",
                fontSize: 14,
                color: Colors.grey,
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                text: "Email",
                hintText: "rrk@gmail.com",
                onSaved: (value) {
                  controller.email=value!;
                },
                validator: (value) {
                 if(value==null){
                   print("ERROR");
                 }
                 print(" Not Error");
                 return "Enter valid email";
                },
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                  text: "Password",
                  hintText: "********",
                  onSaved: (value) {
                    controller.password=value!;
                  },
                  validator: (value) {
                    if(value==null){
                      print("error");
                    }
                    return "Enter password";
                  }),
              const SizedBox(
                height: 10,
              ),
              CustomText(
                text: "Forget Password",
                fontSize: 14,
                alignment: Alignment.topRight,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                text: "SIGN IN",
                onPressed: () {


                     controller.signInWithEmailAndPassword();



                },
              ),
              const SizedBox(height: 20,),
              CustomText(
                text: "-OR-",
                alignment: Alignment.center,
              ),
              const SizedBox(height: 40,),
               SocialButton(
                image: "assets/icons/facebook.png",
                text: "Sign In With Facebook",
                onPressed: (){
                    // controller.facebookSignInMethod();
                  print("Facebook button clicked");
                },
              ),
              const SizedBox(height: 40,),
              SocialButton(
               image: "assets/icons/google.png",
               text: "Sign In With google",
                onPressed: (){

                 controller.googleSignInMethod();
                  print("Google button clicked");
                },
             ),

            ],
          ),
        ),
      ),
    );
  }
}
