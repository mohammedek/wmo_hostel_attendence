import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:wmo_hostel_attendence/widgets/buttons_common.dart';

import '../widgets/custom_textfeild.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Future<FirebaseApp>_initializeFirebase() async{
    FirebaseApp firebaseApp = await Firebase.initializeApp();
        return firebaseApp;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.amber,
      //   title: Text("Login,"),
      // ),
      body:
      FutureBuilder(
        future: _initializeFirebase(),
        builder: (context,snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListView(
                      children: [
                        Container(
                          height: 200,
                          decoration: const BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30)),
                          ),
                          child: const Center(
                            child: Text("Login", textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 65
                                )
                            ),
                          ),
                        ),
                        const customTextFeild(),
                        const customPasswordFeild(),
                        const SizedBox(height: 30.0,),
                         Padding(
                            padding: EdgeInsets.all(10.0),
                            child: (
                            DupButtons(
                              onPress:(){
                                print("sclkwlkfh");
                              },
                                  buttonText: "Submit",
                                  buttonTextColor: Colors.blue,
                                  buttonColor: Colors.blue,
                                  buttonWidth: 10,
                                  buttonHeight: 40,)),
                            ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        //   children:  [
                        //     SizedBox(
                        //       height: 50,
                        //       width: 200,
                        //       child: GestureDetector(
                        //         onTap: (){
                        //             Dialog(
                        //             child: Text("Contact The administrator"),
                        //           );
                        //         },
                        //           child: Text("Forgot Password ?",
                        //             style: TextStyle(color:Colors.redAccent ),
                        //           )),
                        //     )
                        //   ],
                        // )
                      ])
              );
          }
          return  const Center(
              child: CircularProgressIndicator());
        })
      );
  }
}
