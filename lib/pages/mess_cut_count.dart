import 'package:flutter/material.dart';

class MessCutCount extends StatelessWidget {
  const MessCutCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
    children:const [
      Center(
        child: Placeholder(
          color: Colors.amber,
          fallbackWidth: 100,
          fallbackHeight: 100,
          // strokeWidth: 20,
        ),
      ),

   ] );
  }
}
