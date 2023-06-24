

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tino_mall/firebaseConst/firebase.dart';
import 'package:velocity_x/velocity_x.dart';

class Authcontroller extends GetxController{
  String get usersCollection => usersCollection;


  // login method
  Future<UserCredential?> loginMethod(email,password,context) async{
    UserCredential? userCredential;

    try{
 await auth.signInWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch (e) {
  VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }
  //signup
  Future<UserCredential?> signupMethod({required BuildContext context, required String email, required String password}) async {
    UserCredential? userCredential;

    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }
   storeUserData({name, password, email,phone}) async {
    DocumentReference store =
    firestore.collection(usersCollection).doc(currentUser!.uid);
    store.set(
        {'name': name, 'password': password, 'email': email, 'phone':phone, 'imageUrl': ''});
  }
  signoutMethod(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }


}