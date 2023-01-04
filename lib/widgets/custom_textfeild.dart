import 'package:flutter/material.dart';

class customTextFeild extends StatefulWidget {
  const customTextFeild({Key? key,
  }) : super(key: key);

  @override
  State<customTextFeild> createState() => _customTextFeildState();
}

class _customTextFeildState extends State<customTextFeild> {

  TextEditingController emailcontroller= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
        child:  TextField(
          controller: emailcontroller,
          keyboardType: TextInputType.emailAddress,
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              hintText: "Email Address",
          ),
        ),
      ),
    );

  }
}



class customPasswordFeild extends StatefulWidget {
  const customPasswordFeild({Key? key,
  })
      : super(key: key);

  @override
  State<customPasswordFeild> createState() => _customPasswordFeildState();
}

class _customPasswordFeildState extends State<customPasswordFeild> {
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
        child:  TextField(
          controller: passwordController,
          keyboardType: TextInputType.visiblePassword,
          textAlign: TextAlign.start,
          obscureText: true,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.visibility_off),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            // focusedErrorBorder: OutlineInputBorder(),
            hintText: "Password",
          ),
        ),
      ),
    );

  }
}

