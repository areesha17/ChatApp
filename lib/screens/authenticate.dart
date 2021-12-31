import 'package:chatroom/screens/Home_screen.dart';
import 'package:chatroom/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatelessWidget {
  final FirebaseAuth auth = FirebaseAuth.instance;
  

  @override
  Widget build(BuildContext context) {
     if (auth.currentUser != null) {
      return  Home();
    } else {
      return Login();
    }
  }
}