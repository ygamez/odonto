import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
//FToast fToast;
  _showToast() {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
          color: Colors.greenAccent
          //Theme.of(context).textTheme.overline
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.check,
              color: Theme.of(context).textTheme.subtitle2?.color),
          SizedBox(
            width: 7.0,
          ),
          Text("Tap Again to Exit",
          style: TextStyle(
            fontSize: 15,
            fontFamily: "medium",
            color: Theme.of(context).textTheme.subtitle2?.color
          ),),
        ],
      ),
    );


    // fToast.showToast(
    //   child: toast,
    //   gravity: ToastGravity.CENTER,
    //   toastDuration: Duration(seconds: 2),
    // );

  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}