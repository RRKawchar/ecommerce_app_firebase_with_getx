import 'package:ecommerece_app_with_firebase_and_mvvm/helper/binding.dart';
import 'package:ecommerece_app_with_firebase_and_mvvm/screens/auth/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      title: "Ecommerce app getx with Firebase and MVVM",
      home: LoginScreen(),
    );
  }
}
