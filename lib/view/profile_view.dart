// import 'dart:math';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:wmo_hostel_attendence/constant/upload_image.dart';

import '../widgets/details_tile.dart';

// final user =  FirebaseAuth.instance.currentUser;
//  if( user!=null) {
// final email = user.email;
// final photoUrl =user.photoURL;
// }

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 17, 176, 150),
        title: const Text(" Your Profile"),
      ),
      body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Padding(padding: EdgeInsets.all(5)),
            CircleAvatar(
              backgroundImage: const NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/wmo-hostel-attendence.appspot.com/o/WhatsApp%20Image%202022-09-24%20at%2010.19.18%20PM.jpeg?alt=media&token=12ab0922-ef67-4024-8f12-b613964b8ca1'),
              radius: 70,
            ),


            // Container(
            //   padding: const EdgeInsets.only(
            //     left: 35,
            //   ),
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(19),
            //       border: Border.all(color: Colors.white)),
            //   child: IconButton(
            //     iconSize: 50,
            //     color: Colors.amber,
            //     hoverColor: Colors.white,
            //     padding: const EdgeInsets.only(left: 30, bottom: 10),
            //     onPressed: () {
            //         Navigator.push(
            //             context, MaterialPageRoute(
            //             builder: (BuildContext)=> ImageUpload()));
            //       },
            //     icon: const Icon(Icons.file_upload_rounded),
            //   ),
            // ),
            Column(
              children: [
               DetailsTile(
                   id_desc: '938y434y8',
                   color: Colors.redAccent,
                   subtitle: "MOHAMMEDEK159@.COM".toLowerCase(),
                 // active:"Active",
                   ),
                DetailsTile(
                  id_desc:"2nd year" ,
                  color: Colors.redAccent,
                  subtitle: "bca",),
                DetailsTile(
                    id_desc: "9744609937", color: Colors.redAccent,subtitle: "thalassery",)
                ],
            )
          ]),
    );
  }
}
