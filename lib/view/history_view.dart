import 'dart:developer';

import 'package:flutter/material.dart';

import '../widgets/buttons_common.dart';
import '../pages/mess_cut_count.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({super.key});

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History"),
        backgroundColor: const Color.fromARGB(255, 17, 176, 150),
      ),
      body:
          SingleChildScrollView(
    child:

         Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children:  const [
                SizedBox(
                  height: 85,
                ),
                 Padding(
                   padding: EdgeInsets.all(20),
                   child: DupButtons(
                        buttonText: "Mess Cut Count",
                        buttonTextColor: Colors.black,
                        // buttonTextColor: Colors.white70,
                        buttonColor: Colors.blue,
                        // buttonWidth: 20,
                        // buttonHeight: 8.0,
                    // onPress: (){
                    //       Navigator.push(context,
                    //            MaterialPageRoute(builder: (context)=>MessCutCount()));
                    //       log("Mess cut count");
                    //     },
  buttonWidth: 200,
                     buttonHeight:100,
                   ),
                 ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: DupButtons(
                    buttonText: "Present Day",
                    // buttonTextColor: Colors.white70,
                    buttonColor: Colors.red,
                    buttonHeight:100,
                    // buttonWidth: 20,
                    // buttonHeight: 8.0,
                    // onPress: (){
                    //   log("clicked present day");
                    //   const MessCutCount();
                    //   },
                      buttonTextColor: Colors.white70,
                    buttonWidth: 200,),
                    ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: DupButtons(
                    buttonText: "History",
                    buttonHeight:100,
                    // buttonTextColor: Colors.white70,
                    buttonColor: Colors.purpleAccent,
                    // buttonWidth: 20,
                    // buttonHeight: 8.0,
                    // onPress: (){
                    //   log("History");
                    //   const MessCutCount();
                    //   },
                    buttonTextColor: Colors.white70,
                    buttonWidth: 200,),
                ),
      ],
          )));
  }
}
