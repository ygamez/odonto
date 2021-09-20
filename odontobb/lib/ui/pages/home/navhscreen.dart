// import 'package:flutter/material.dart';
// import 'package:odontobb/UI/pages/Home/homepage.dart';
// import 'package:odontobb/UI/pages/customdraw/drawer_user_controller.dart';
// import 'package:odontobb/UI/pages/customdraw/homdrawer.dart';
// import 'package:odontobb/UI/pages/abaoutscrenn/aboutscr.dart';
// import 'package:odontobb/UI/pages/log/screenlog/singupper.dart';

// class NavigationHomeScreen extends StatefulWidget {
//   const NavigationHomeScreen({Key? key}) : super(key: key);

//   @override
//   _NavigationHomeScreenState createState() => _NavigationHomeScreenState();
// }

// class _NavigationHomeScreenState extends State<NavigationHomeScreen> {
//   Widget screenView =  MyHomePage();
//   DrawerIndex drawerIndex = DrawerIndex.home;
//   //LoginUser loginUser 0= 

//   @override
//   Widget build(BuildContext context) {
//     return DrawerUserController(

//       screenIndex: drawerIndex,
//       drawerWidth: MediaQuery.of(context).size.width * 0.75,
//       onDrawerCall: (DrawerIndex drawerIndexdata) {
//         changeIndex(drawerIndexdata);
//         //callback from drawer for replace screen as user need with passing DrawerIndex(Enum index)
//       },
//       screenView: screenView,
//       //we replace s
//     );
//   }

//     void changeIndex(DrawerIndex drawerIndexdata) {
//     if (drawerIndex != drawerIndexdata) {
//       drawerIndex = drawerIndexdata;
//       if (drawerIndex == DrawerIndex.home) {
//         if (mounted) {
//           setState(() {
//             screenView =  MyHomePage();
//           });
//         }
//       } else if (drawerIndex == DrawerIndex.help) {
//         if (mounted) {
//           setState(() {
//             //screenView = const HelpScreen();
//             screenView = const AboutScreen();
//           }); 
//         }
//       } else if (drawerIndex == DrawerIndex.feedback) {
//         if (mounted) {
//           setState(() {
//             //screenView = const FeedbackScreen();
//           });
//         }
//       } else if (drawerIndex == DrawerIndex.login) {
//         if (mounted) {
//           setState(() {
//             screenView = KickstarterPage();
//           });
//         }
//       } else if (drawerIndex == DrawerIndex.about) {
//         if (mounted) {
//           setState(() {
//             screenView = const AboutScreen();
//           });
//         }
//       }
//     }
//   }
// }