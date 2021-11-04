import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  final _googleSingIn = GoogleSignIn();
  var googleAccount = Rx<GoogleSignInAccount?>(null);

  login() async {
    googleAccount.value = await _googleSingIn.signIn();
    final list = await FirebaseAuth.instance
        .fetchSignInMethodsForEmail(googleAccount.value!.email);
    final googleAuth = await googleAccount.value!.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await FirebaseAuth.instance
        .signInWithCredential(credential)
        .then((value) async {
      final auth = FirebaseAuth.instance;
      final userId = auth.currentUser!.uid;
      final snapShot =
          await FirebaseFirestore.instance.collection('user').doc(userId).get();

      if (!snapShot.exists) {
        Map<String, String> map;

        map = {
          'Name': auth.currentUser!.displayName.toString(),
          'Email': auth.currentUser!.email.toString(),
          'imgUrl' : googleAccount.value?.photoUrl ?? 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Google_Chrome_icon_%28September_2014%29.svg/1200px-Google_Chrome_icon_%28September_2014%29.svg.png',};
        await FirebaseFirestore.instance.collection('user').doc(userId).set(map);
        print("done"); // You can add data to Firebase Firestore here
      }
    }).catchError((error) {
      FirebaseAuthException e = error;
      print(e.message.toString());
    });
  }

  //Facebook

  Future<bool> fbLogin(BuildContext context) async {
    final fb = FacebookLogin();
    //await fb.logOut();
    final res = await fb.logIn(permissions: [
      FacebookPermission.publicProfile,
      FacebookPermission.email,
    ]);
    switch (res.status) {
      case FacebookLoginStatus.success:
        // Logged in
        // Send access token to server for validation and auth
        final FacebookAccessToken accessToken = res.accessToken!;
        print('Access token: ${accessToken.token}');
        final email = await fb.getUserEmail();
        final profile = await fb.getUserProfile();
        if (email != null) {
          final OAuthCredential facebookAuthCredential =
              FacebookAuthProvider.credential(accessToken.token);
          FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
          final auth = FirebaseAuth.instance;
          final userId = auth.currentUser!.uid;
          final snapShot = await FirebaseFirestore.instance
              .collection('user')
              .doc(userId)
              .get();
          if (!snapShot.exists) {
            try{
            Map<String, String> map;
            map = {''
                    'Name': profile!.name!,
                    'Email': email,
                    'imgUrl': auth.currentUser!.photoURL!,
            };
      await FirebaseFirestore.instance.collection('user').doc(userId).set(map);
            print( "Fb Successful" );
       return true;
            }
      on FirebaseException catch (e){
              print(e.toString());
              return false;
      }
      // You can add data to Firebase Firestore here
          }
        }
        break;
      case FacebookLoginStatus.cancel:
        print("Login cancelled by user");
        break;
      case FacebookLoginStatus.error:
        print('Error while log in: ${res.error}');
        break;
    }
    return true;
    //firebase
  }
}
