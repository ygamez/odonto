import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:odontobb/UI/pages/themes/theme.dart';
import 'package:odontobb/ui/pages/Home/homepage.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {    
    return MaterialApp(      
      title: 'Odonto',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: AppTheme.textTheme,
        platform: TargetPlatform.iOS
        ),
      home:  const MyHomePage(),
      //AuthService().handleAth()
      // const Scaffold(
      //   body: SafeArea(
      //     top: false,
      //     bottom: false,
      //     child: NavigationHomeScreen(),
      //     ),
      // ),
      //home: const MyHomePage(title: 'Odonto BB Pagina Inicio'),
      //NavigationHomeScreen()
    );
  }
}




