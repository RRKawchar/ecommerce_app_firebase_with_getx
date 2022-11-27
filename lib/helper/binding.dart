import 'package:ecommerece_app_with_firebase_and_mvvm/core/view_mdoel/auth_view_model.dart';
import 'package:get/get.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
  }



}