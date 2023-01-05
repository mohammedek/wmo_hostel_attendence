import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class FireAuth  {
static Future<User?> registerUsingEmailPassword({
  required String name,
  required String email,
  required dynamic password,
  required String image,
required String address,

}) async{
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user;
  try {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
      user = FirebaseAuth.instance.currentUser;
      await user!.updatePhotoURL(image);
      await user.updateDisplayName(name);
      user = auth.currentUser;
    }on FirebaseAuthException catch(e){
    if(e.code == 'weak password'){
     print("weak passwprd");
    }else if(e.code == 'email-already-in-use'){
      print("Alred Registerd");
    }
  }
  catch(e){
    print(e);
  }
  return user;
}
}