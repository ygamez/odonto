import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:odontobb/ui/pages/home/homepage.dart';
import 'package:odontobb/ui/pages/log/screenlog/login.dart';

class AuthService{
  //handle Authenticatin
  handleAth(){
    return StreamBuilder(
      //stream: FirebaseAuth.instance.authStateChanges(),
      //initialData: initialData,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return const MyHomePage();
        }else{
          return loginpage();
        }
        
      },
    );
    

  }

}