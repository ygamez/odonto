import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odontobb/domain/blocks/animation/sliderigrout.dart';
import 'package:odontobb/UI/sceens/categoriscreen.dart';

class DoctorListScreen extends StatefulWidget {
  @override
  _DoctorListScreenState createState() => _DoctorListScreenState();
}

class _DoctorListScreenState extends State<DoctorListScreen>with SingleTickerProviderStateMixin {
  late TabController tb;
  @override
  void initState() {
    super.initState();
    tb = TabController(length: 5, vsync: this);
    tb.addListener(_handleTabSelection);
  }
  void _handleTabSelection() {
    setState(() {});
  }
  late MediaQueryData queryData;
  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return MediaQuery(
      data: queryData.copyWith(textScaleFactor: 1.0),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(
              children: [
                //Appbar
                Container(
                  height: 50,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      //back btn
                      Positioned.directional(
                        textDirection: Directionality.of(context),
                        start: -4,
                        top: 0,
                        bottom: 0,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              "icons/ic_back.png",
                              scale: 30,
                            ),
                          ),
                        ),
                      ),
                      //title
                      Positioned.directional(
                        textDirection: Directionality.of(context),
                        top: 0,
                        bottom: 0,
                        start: 0,
                        end: 0,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Doctor list",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'medium',
                                color: Theme.of(context).colorScheme.onSecondary
                            ),
                          ),
                        ),
                      ),
                      //search icon
                      Positioned(
                        right: 4,
                        top: 0,
                        bottom: 0,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, SlidePageRoute(page: const CategoriesScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              "icons/ic_search.png",
                              scale: 22,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //Space
                SizedBox(height: 8,),
                //TabBar
                Container(
                  height: 60,
                  padding: EdgeInsets.only(left: 0),
                  child: TabBar(
                      controller: tb,
                  //   labelPadding: EdgeInsets.symmetric(vertical: 2.0),
                      isScrollable: true,
                      tabs: [
                        Tab(
                          child:tabItem1(context,0,"Dentist")
                        ),
                        Tab(
                            child:tabItem1(context,1,"Endocrine")
                        ),
                        Tab(
                            child:tabItem1(context,2,"Dentist")
                        ),
                        Tab(
                            child:tabItem1(context,3,"Orthopodist")
                        ),
                        Tab(
                            child:tabItem1(context,4,"Surgeon")
                        ),
                        ]
                      )
                ),
                //

                //
                // Expanded(
                //   child: TabBarView(
                //       controller: tb,
                //       children: [
                //         TabScreen1(),
                //         TabScreen1(),
                //         TabScreen1(),
                //         TabScreen1(),
                //         TabScreen1(),
                //         Endocrine(),
                //         Dentist(),
                //         Orthopodist(),
                //         Surgeon(),
                //       ]
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Container tabItem1(context,int index,String title){
    return Container(
      child: Column(
        children: [
          Container(
            child: Text(title,
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: "medium",
                  color:tb.index==index? Theme.of(context).colorScheme.onSecondary:
                  Theme.of(context).colorScheme.onSecondary
              ),),
          ),
          //Space
          SizedBox(height: 4,),
          //
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
                color:  tb.index==index?Theme.of(context).colorScheme.onSecondary:
                Colors.transparent,
                shape: BoxShape.circle
            ),
          )
        ],
      )
    );
  }

}
