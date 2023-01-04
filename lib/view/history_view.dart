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
        title: Text("History"),
        backgroundColor: Color.fromARGB(255, 17, 176, 150),
      ),
      body:
          SingleChildScrollView(
    child:

         Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children:  [
                SizedBox(
                  height: 85,
                ),
                 Padding(
                   padding: const EdgeInsets.all(20),
                   child: DupButtons(
                        buttonText: "Mess Cut Count",
                        buttonTextColor: Colors.black,
                        // buttonTextColor: Colors.white70,
                        buttonColor: Colors.blue,
                        // buttonWidth: 20,
                        // buttonHeight: 8.0,
                    onPress: (){
                          log("Mess cut count");
                          const MessCutCount();
                        }
                   ),
                 ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: DupButtons(
                    buttonText: "Present Day",
                    // buttonTextColor: Colors.white70,
                    buttonColor: Colors.red,
                    // buttonWidth: 20,
                    // buttonHeight: 8.0,
                    onPress: (){
                      log("clicked present day");
                      const MessCutCount();
                      },
                      buttonTextColor: Colors.white70,),
                    ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: DupButtons(
                    buttonText: "History",
                    // buttonTextColor: Colors.white70,
                    buttonColor: Colors.purpleAccent,
                    // buttonWidth: 20,
                    // buttonHeight: 8.0,
                    onPress: (){
                      log("History");
                      const MessCutCount();
                      },
                    buttonTextColor: Colors.white70,),
                ),
      ],
          )));
  }
}
