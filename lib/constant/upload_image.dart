// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
//
//
// class ImageUpload extends StatefulWidget {
//   @override
//   _ImageUploadState createState() => _ImageUploadState();
// }
//
// class _ImageUploadState extends State<ImageUpload> {
//   late String imageUrl;
// @override
// void initState(){
//   imageUrl ="https://www.google.com/imgres?imgurl=https%3A%2F%2Fw0.peakpx.com%2Fwallpaper%2F939%2F973%2FHD-wallpaper-meme-chad-giga-chad-me-funny-af-giga-chad-meme-chad-funny-memes.jpg&imgrefurl=https%3A%2F%2Fwww.peakpx.com%2Fen%2Fsearch%3Fq%3Dgigas&tbnid=vsAY5G98IMfonM&vet=12ahUKEwipgJ36uOr7AhUxk9gFHQfEDvgQMygNegQIARBW..i&docid=LimmfUw7m7pe1M&w=800&h=1606&q=pexels%20gigachad&ved=2ahUKEwipgJ36uOr7AhUxk9gFHQfEDvgQMygNegQIARBW";
//   super.initState();
// }
//
//   @override
//   Widget build(BuildContext context) {
//     backgroundColor: Colors.white;
//     return Scaffold(
//     appBar: AppBar(
//     title: const Text('Upload Image',
//       style:
//       TextStyle(color: Colors.black87,
//           fontWeight: FontWeight.bold),),
//     centerTitle: true,
//     elevation: 0.0,
//     backgroundColor: Colors.white,
//     ),
//     body:  Container(
//       color: Colors.cyan,
//       child: Column(
//         children: <Widget>[
//           Center(
//             child: Container(
//               padding: EdgeInsets.all(10),
//               height: 100,
//                 width: 100,
//                 // margin: EdgeInsets.all(15),
//                 // padding: EdgeInsets.all(15),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: const BorderRadius.all(
//                     Radius.circular(15),
//                   ),
//                   border: Border.all(color: Colors.white),
//                   boxShadow: const [
//                     BoxShadow(
//                       color: Colors.black12,
//                       offset: Offset(2, 2),
//                       spreadRadius: 2,
//                       blurRadius: 1,
//                     ),
//                   ],
//                 ),
//                 child: (imageUrl != null)
//                     ? Image.network(imageUrl)
//                     : Image.network('https://i.imgur.com/sUFH1Aq.png'),
//
//             ),
//           ),
//           const SizedBox(height: 20.0,),
//           ElevatedButton(
//             child: Text("Upload Image",
//                 style: TextStyle(
//                 color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20)),
//             onPressed: (){
//
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.green,
//               // side: BorderSide(color: Colors.yellow, width: 5),
//               textStyle: const TextStyle(
//                   color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
//                   shape: const BeveledRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10))),
//               shadowColor: Colors.lightBlue,
//             ),
//           ),
//         ],
//       ),
//     ),
//     );
//   }
// }