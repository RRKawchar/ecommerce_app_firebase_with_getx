import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController {

  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes:['email']);
  final FirebaseAuth _auth=FirebaseAuth.instance;
  // final FacebookLogin _facebookLogin =FacebookLogin();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void googleSignInMethod()async{

   final GoogleSignInAccount? googleUser= await _googleSignIn.signIn();

   print(googleUser);

   GoogleSignInAuthentication googleSignInAuthentication=
       await googleUser!.authentication;
   print("Test one :$googleSignInAuthentication");

    final AuthCredential credential= GoogleAuthProvider.credential(
     idToken: googleSignInAuthentication.idToken,
     accessToken: googleSignInAuthentication.accessToken
   );
    print("Test Token: $credential");

   UserCredential userCredential= await _auth.signInWithCredential(credential);
     print("I am User : ${userCredential.user}");




  }

  // void facebookSignInMethod()async{
  //
  //   FacebookLoginResult result=await _facebookLogin.logIn(['email']);
  //
  //   final accessToken=result.accessToken.token;
  //
  //   if(result.status==FacebookLoginStatus.loggedIn){
  //     final facebookCredential=FacebookAuthProvider.credential(accessToken);
  //     await _auth.signInWithCredential(facebookCredential);
  //   }
  // }
}
