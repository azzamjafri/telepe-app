

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telepeapp/HomePage/HomeScreen.dart';
import 'package:telepeapp/MyAccount/my_account.dart';
import 'package:telepeapp/Mywallet/MyWallet.dart';
import 'package:telepeapp/dummy.dart';

import '../colors.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var currentIndex=2;
  final List<Widget> _widgetOptions = <Widget>[
    MyAccount(),
    MyWallet(),
    HomeScreen(),
    DummyPage(),
    DummyPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[currentIndex],
      bottomNavigationBar:BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 20,
                child: MaterialButton(
                  onPressed: (){
                    setState(() {
                      currentIndex=0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/1a.png",height: 30,width: 30,color: currentIndex==0?blueColor: Colors.black,),
                      Text("My Account",style: TextStyle(color:currentIndex==0?blueColor: Colors.black,fontSize: 8),)
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 20,
                child: MaterialButton(
                  onPressed: (){
                    setState(() {
                      currentIndex=1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/ha.png",height: 30,width: 30,color: currentIndex==1?blueColor: Colors.black),
                      Text("Wallet",style: TextStyle(color:currentIndex==1?blueColor: Colors.black,fontSize: 10))
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 20,
                child: MaterialButton(
                  onPressed: (){
                    setState(() {
                      currentIndex=2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/mmqq.png",height: 30,width: 30,color: currentIndex==2?blueColor: Colors.black),
                      Text("Home",style: TextStyle(color:currentIndex==2?blueColor: Colors.black,fontSize: 10))
                    ],
                  ),
                ),
              ),

              Expanded(
                flex: 20,
                child: MaterialButton(

                  onPressed: (){
                    setState(() {
                      currentIndex=3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/llll.png",height: 30,width: 30,color:currentIndex==3?blueColor: Colors.black),
                      Text("Share",style: TextStyle(color:currentIndex==3?blueColor: Colors.black,fontSize: 10))
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 20,
                child: MaterialButton(

                  onPressed: (){
                    setState(() {
                      currentIndex=4;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/khgfg.png",height: 30,width: 30,color:currentIndex==4?blueColor: Colors.black),
                      Text("Logout",style: TextStyle(color:currentIndex==4?blueColor: Colors.black,fontSize: 10))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),


      ),
    );
  }
}
