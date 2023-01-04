import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DetailsTile extends StatelessWidget {
  final String id_desc;
  final Color color;
  final String ? subtitle;
  // static  String ? active;
  // final VoidCallback ? onPress;

  const DetailsTile(
      {Key? key,
        required this.id_desc,
        required this.color,
         this.subtitle,

        // this.onPress,
        // required active,
        }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: ListTile(
          trailing:  Text("$subtitle",style:const TextStyle(fontWeight: FontWeight.bold)),
          title: Text(id_desc,style:const TextStyle(fontWeight: FontWeight.bold),),
          tileColor: color,
          iconColor: Colors.blue,
          // onTap: onPress
        ),
      ),
    );
  }
}
