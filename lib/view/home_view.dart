import 'package:flutter/material.dart';
import 'package:wmo_hostel_attendence/constant/get_image_on_time.dart';
import 'package:wmo_hostel_attendence/widgets/details_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.exit_to_app_outlined,color: Colors.red,))
        ],
        // leading: IconButton(onPressed: () {
        //     FirebaseAuth.instance.signOut();
        //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
        // },
        //   icon: const Icon(Icons.exit_to_app_outlined),),
        // automaticallyImplyLeading: true,
        // elevation: 5,
        iconTheme: const IconThemeData(
          color: Colors.cyan,
        ),
        backgroundColor: Color.fromARGB(255, 17, 176, 150),
        title: Text("HI,Ek"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white54,
        child: ListView(
          children: [
            DetailsTile(id_desc: "hjhdh", color: Colors.red)
          ],
        ),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(160, 169, 206, 206),
                  borderRadius: BorderRadius.circular(9)),
              padding: EdgeInsets.all(10),
              child: Text(
                "Date : ${DateTime.now().toString().split(" ").first}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Color.fromARGB(255, 74, 65, 74),
                    border: Border.all()),
                margin: EdgeInsets.all(14),
                alignment: Alignment.center,
                child: Image.asset(
                  getImageBasedOnDate(
                    DateTime.now(),
                  ),
                ),
              ),
            ),
            Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 100,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {// FirebaseFirestore.instance//     .collection('DailyAttendance')//.add({//"is_present": true,//   "update_at": FieldValue.serverTimestamp(),//   "created_at": DateTime.now(),//   "date": DateTime.now(),// "user_id": FirebaseAuth.instance.currentUser?.uid,// "email":FirebaseAuth.instance.currentUser!.email,

                      print("pressed");
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 13, 122, 7)),
                    child: Icon(Icons.check),
                  ),
                ),
              ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                    width: 100,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {
                          // await FirebaseFirestore.instance//.collection('DailyAttendance')//     .add({//   "is_present": false,//   "update_at": FieldValue.serverTimestamp(),//   "created_at": DateTime.now(),//   "date": DateTime.now(),//   "user_id": FirebaseAuth.instance.currentUser?.uid,//   "email":FirebaseAuth.instance.currentUser!.email,
                          print("pressed1");
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red),
                        child: Icon(Icons.close))))
          ]),
    ]));
  }
}
