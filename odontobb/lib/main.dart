import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:odontobb/UI/pages/themes/theme.dart';
import 'package:odontobb/domain/blocks/auth/auth_service.dart';
//import 'package:odontobb/ui/pages/log/screenlog/login.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      title: 'OdontoBB',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: AppTheme.textTheme,
        ),      
      home: AuthService().handleAth(),
      //AuthService().handleAth(), esto es lo que debe ir pero da error
      //const KickstarterPage(),
      //const Loginstarter(),
    );
  }
}




