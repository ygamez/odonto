
//import 'dart:js';

// ignore: avoid_web_libraries_in_flutter, unused_import
import 'dart:js';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:odontobb/domain/blocks/animation/sliderigrout.dart';
import 'package:odontobb/UI/model/modelscla.dart';
import 'package:odontobb/ui/pages/Doctor/sceen/doctorlist.dart';
import 'package:odontobb/UI/pages/log/screenlog/singupper.dart';


// ignore: unused_element
const _kpages = <String, IconData>{
  'All': Icons.all_inbox,
  //'parte superior': Icons.android_sharp,
};

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  //const MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  //final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class 
_MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {  

  late TabController tb;

  // List<HomeList> homeList = HomeList.homeList;
  // bool multiple = true;
  // late final AnimationController animationController;
  // int lengdtabc = 5;
  
// void initState() {
  //   super.initState();
  //   tb = TabController(length: lengdtabc, vsync: this);
  //   tb.addListener(_handleTabSelection);
  // }
  //  void _handleTabSelection() {
  //   setState(() {});
  // }

Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration());
    return true;
  }
  
  // @override
  // void dispose() {
  //   animationController.dispose();
  //   super.dispose();
  // }

  late MediaQueryData queryData;
  @override
  

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[100],
        leading: const Icon(Icons.menu),
        title: const Text(''),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: (){},
            ),
            IconButton(
            icon: const Icon(Icons.schedule),
            onPressed: (){},
            ),
            IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: (){},
            ),
          IconButton(
            icon: const Icon(Icons.person_add_alt),
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const KickstarterPage()),
                );
            }  
            ),            
        ],
      ),  
      body: ListView(
        
        children: [

          const SizedBox(height: 20,),          
            RichText(
            text: TextSpan(
              text: "Odonto",
              style: TextStyle(
                  fontSize: 27,
                  fontFamily: "bold",
                  color: Colors.grey[800]
                  //color: Theme.of(context).colorScheme.onSecondary
              ),
              children: const [
                TextSpan(
                text: "bebé",
                style: TextStyle(
                    fontSize: 27,
                    fontFamily: "bold",
                    //color: Theme.of(context).colorScheme.onSecondary
                    color: Colors.red
                ),
                ),
              ]
                ),
                      ),

          const SizedBox(height: 22,),

          Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.centerLeft,
                child: const Text("Qué tipo de asistencia necesita?",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "medium",
                  //color: Theme.of(context).colorScheme.onSecondary
                  color: Colors.black
                ),),
              ),

          const SizedBox(height: 12,),

          Container(
            height: 162,
            padding: const EdgeInsets.only(left: 6),
            child: ListView(
              // shrinkWrap: true,
              //physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              scrollDirection: Axis.horizontal,
              children: [
                ListView.builder(                          
                    itemCount: homeScreenHomitelList.length,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){                            
                      return Container(
                        margin: const EdgeInsets.only(left: 8,right: 8,top: 27,bottom: 5),
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(15)),
                          child: InkWell(
                            onTap: (){
                              //viene un index de la lista en la base
                              if(index==0){
                                Navigator.push(context, SlidePageRoute(page: const DoctorListScreen()));
                              }
                              //Implementar
                            //  else if(index==1){
                            //     Navigator.push(context, SlidePageRoute(page: ChatWithDoctorScreen2()));
                            //   }else if(index==2){
                            //     Navigator.push(context, SlidePageRoute(page: NewsScreen()));
                            //   }else if(index==3){
                            //     Navigator.push(context, SlidePageRoute(page: ChatWithDoctorScreen1()));
                            //   }
                            },
                            child: SizedBox(
                              height: 155,
                              width: 112,
                              child: Stack(
                                clipBehavior: Clip.none, fit: StackFit.expand,
                                children: [
                                  Positioned.directional(
                                    end: -20,
                                    top: -25,
                                    textDirection: Directionality.of(context),
                                    child: Image.asset(homeScreenHomitelList[index].image,scale: 6,),
                                  ),
                                  //
                                  Positioned.directional(
                                    start: 15,
                                    end: 8,
                                    top: 65,
                                    textDirection: Directionality.of(context),
                                    child: Container(
                                      padding: const EdgeInsets.only(bottom: 20),
                                      alignment: Alignment.topLeft,
                                      child: Text(homeScreenHomitelList[index].title,
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: "medium",
                                        color: Colors.grey[800]
                                        //color: Theme.of(context).colorScheme.onSecondary
                                      ),),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                    ),

              ],
              
              ),
          )
        ],
      ),
      ),
    );
    
  }

  // Container tabItems(BuildContext context, int index, String title) {
  //   return  Container(
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Container(
  //           child: Text(title,
  //             style: TextStyle(
  //                 fontSize: 15,
  //                 fontFamily: "medium",
  //                 color: tb.index==index?Theme.of(context).colorScheme.onSecondary :
  //                 Theme.of(context).colorScheme.onSecondary
  //             ),),
  //         ),
  //         //Space
  //         SizedBox(height: 4,),
  //         //
  //         Container(
  //           //width: 7,
  //           height: 7,
  //           decoration: BoxDecoration(
  //               color: tb.index==index?Theme.of(context).colorScheme.onSecondary:
  //               Colors.transparent,
  //               shape: BoxShape.circle
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }
  }
// Container tabItem1(context,int index, String img,double sc,String title){
//   return Container(
//     child: Stack(
//       clipBehavior: Clip.none, children: [
//         Positioned.directional(
//           top: -22,
//           start: 0,
//           end: 0,
//           textDirection: Directionality.of(context),
//           child: Container(
//             child: Column(
//               children: [
//                 Image.asset(img,scale: sc,),
//                 Container(
//                   child: Text(title,
//                   style: TextStyle(
//                     fontSize: 13,
//                     fontFamily: "medium",
//                     color: Theme.of(context).colorScheme.onPrimary
//                   ),),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }

// Container tabItem(int index, String img,double sc){
//   return Container(
//     child: Image.asset(img,scale: sc,),
//   );
// }

// Widget appBar() {
//     return SizedBox(
//       height: AppBar().preferredSize.height,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.only(top: 8, left: 8),
//             child: SizedBox(
//               width: AppBar().preferredSize.height - 8,
//               height: AppBar().preferredSize.height - 8,
//             ),
//           ),
//           const Expanded(
//             child: Center(
//               child: Padding(
//                 padding: EdgeInsets.only(top: 4),
//                 child: Text(
//                   'Menu',
//                   style: TextStyle(
//                     fontSize: 22,
//                     color: AppTheme.darkText,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 8, right: 8),
//             child: Container(
//               width: AppBar().preferredSize.height - 8,
//               height: AppBar().preferredSize.height - 8,
//               color: Colors.white,
//               child: Material(
//                 color: Colors.transparent,
//                 child: InkWell(
//                   borderRadius:
//                       BorderRadius.circular(AppBar().preferredSize.height),
//                   // onTap: () {
//                   //   if (mounted) {
//                   //     setState(() {
//                   //       multiple = !multiple;
//                   //     });
//                   //   }
//                   // },
//                   // child: Icon(
//                   //   multiple ? Icons.dashboard : Icons.view_agenda,
//                   //   color: AppTheme.darkGrey,
//                   // ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

class HomeListView extends StatelessWidget {
  const HomeListView(
      {
        //required this.listData,
      required this.callBack,
      required this.animationController,
      required this.animation,
      Key? key})
      : super(key: key);

  //final HomeList listData;
  final VoidCallback callBack;
  final AnimationController animationController;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, _) {
        return FadeTransition(
          opacity: animation,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 50 * (1.0 - animation.value), 0.0),
            child: AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    // Image.asset(
                    //   //listData.imagePath,
                    //   fit: BoxFit.cover,
                    // ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.grey.withOpacity(0.2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4.0)),
                        //onTap: () => callBack(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
