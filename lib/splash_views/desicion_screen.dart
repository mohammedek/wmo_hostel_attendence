import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:wmo_hostel_attendence/auth/login.dart';
import 'package:wmo_hostel_attendence/auth/registration.dart';

import '../widgets/buttons_common.dart';

class DesicionScreen extends StatefulWidget {
  const DesicionScreen({Key? key}) : super(key: key);

  @override
  State<DesicionScreen> createState() => _DesicionScreenState();
}

class _DesicionScreenState extends State<DesicionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.indigo,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child:Image.asset("assets/images/desicion_screen.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 600),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                  // GestureDetector(
                  //     onTap:(){
                  //       print("lk");
                  //       Navigator.push(
                  //         context, MaterialPageRoute(builder: (context)=> Register()),);
                  //     },
                  //     child:S

                      DupButtons(
                            onPress: (){
                              Navigator.push(
                                context, MaterialPageRoute(builder: (context)=> const Register()));
                              },
                            buttonText: "Sign Up",
                            buttonTextColor:Colors.black54,
                            buttonColor: Colors.redAccent,
                            buttonWidth: 140,
                            buttonHeight: 40),

                   // InkWell(
                   //    onTap: (){
                   //      print("kl");
                   //      // Navigator.push(
                   //      //   context, MaterialPageRoute(builder: (context)=> const LoginPage()),);
                   //    },
                   //    child:
                      DupButtons(
                        onPress:() {
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context) => const LoginPage()));

                        },
    buttonText: "Login",
                          buttonTextColor:Colors.black54,
                          buttonColor: Colors.green,
                          buttonWidth: 150,
                          buttonHeight: 40),

                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
