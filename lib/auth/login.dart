import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:wmo_hostel_attendence/widgets/buttons_common.dart';

import '../widgets/custom_textfeild.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.amber,
      //   title: Text("Login,"),
      // ),
      body:
      Padding(
        padding:EdgeInsets.all(10),
        child: ListView(
          children: [
        Container(
          height: 200,
                  decoration: const BoxDecoration(
                color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
        topRight: Radius.circular(30)),
              ),
                  child:const Center(
                      child: Text("Login",textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          fontSize: 65
                        )
                      ),
                    ),
        ),
         customTextFeild(),
            customPasswordFeild(),
            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:(
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children:[
              //     Text('Forget password?',
              //       style: TextStyle(fontSize: 12.0)),
                 DupButtons(
                     buttonText: "Submit",
                     buttonTextColor: Colors.blue,
                     buttonColor: Colors.blue,
                   buttonWidth: 150,
                   buttonHeight: 100,)

            // ]
              )),
      // )
    ])));
  }
}
