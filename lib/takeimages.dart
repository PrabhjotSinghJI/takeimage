import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login/login.dart';

class TakeImage extends StatefulWidget {
  const TakeImage({super.key});

  @override
  State<TakeImage> createState() => _TakeImageState();
}

class _TakeImageState extends State<TakeImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: TextButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (ctx) => Platform.isIOS
                  ? CupertinoAlertDialog(
                      title: Text('Logout'),
                      content: Text('Would you like to LogOut'),
                      actions: [
                        CupertinoButton(onPressed: () {}, child: Text("Login")),
                        CupertinoButton(
                            onPressed: () {}, child: Text("Login Out"))
                      ],
                    )
                  : AlertDialog(
                      title: Text('Logout'),
                      content: Text('Would you like to Logout'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(ctx);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Login(),
                                  ));
                            },
                            child: Text("yes")),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(ctx);
                            },
                            child: Text("no"))
                      ],
                    ));
        },
        child: Text('Login / Logout'),
      ),
    ));
  }
}
