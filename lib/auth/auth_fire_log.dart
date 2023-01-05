import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireAuthLog{
  static Future<User?> signUsingEmailPassword({
  required String email,
    required dynamic password,
    required BuildContext context,
}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try{
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    }on FirebaseAuthException catch(e){
      if(e.code == 'user-not-found') {
        print("No User Found On that email");
      }
        else if( e.code == 'wrong-password') {
        print('Wrong password provided.');

      }
      }
      return user;
    }
  }
