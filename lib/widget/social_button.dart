import 'package:ecommerece_app_with_firebase_and_mvvm/widget/custom_text.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {

  final String text;
  final String image;
  final VoidCallback onPressed;
  const SocialButton({Key? key, required this.text, required this.image, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black12,
          width: 2
        )
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(

              elevation: 0.0,
              padding:const EdgeInsets.symmetric(horizontal: 20),
              backgroundColor: Colors.white
          ),
          onPressed: onPressed,
          child: Row(
            children: [
              Image.asset(image,width: 33,height: 33,),
              const SizedBox(width: 80,),
              CustomText(text: text,)
            ],
          )
      ),
    );
  }
}
