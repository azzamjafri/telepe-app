

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telepeapp/NavBar/NavBar.dart';
import 'package:telepeapp/Registration/MobileLogin.dart';
import 'package:telepeapp/Registration/Registration.dart';
import 'package:telepeapp/colors.dart';

class MPinLoginPage extends StatefulWidget {
  @override
  _MPinLoginPageState createState() => _MPinLoginPageState();
}

class _MPinLoginPageState extends State<MPinLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/1.png",
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment(0,-.5),
            child: Image.asset("assets/teelpe15.png"),
          ),
          Align(
            alignment: Alignment(0,-.2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "INSTANT,SIMPLE,FAST,ANYTIME",
                style: TextStyle(color: yellowColor,fontSize: 16),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0,0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Login M-PIN",
                style: TextStyle(color: blueColor,fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0,0.2),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: greyColor,
                        shape: BoxShape.circle
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: greyColor,
                        shape: BoxShape.circle
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: greyColor,
                        shape: BoxShape.circle
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: greyColor,
                        shape: BoxShape.circle
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: greyColor,
                        shape: BoxShape.circle
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: greyColor,
                        shape: BoxShape.circle
                    ),
                  ),
                ),

              ],


            ),
          ),
          Align(
            alignment: Alignment(0,0.4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  color: yellowColor,
                  onPressed: (){},
                  child: Text("Reset",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  color: yellowColor,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NavBar()));
                  },
                  child: Text("Log in",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0,0.6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileLoginPage()));
                    },
                    child: Text("or Login by Mobile Number ",style: TextStyle(fontWeight: FontWeight.bold),))

              ],
            ),
          ),
          Align(
            alignment: Alignment(0,0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? ",style: TextStyle(fontWeight: FontWeight.bold),),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationPage()));
                  },
                    child: Text("Register",style: TextStyle(fontWeight: FontWeight.bold,color: blueColor)))
              ],
            ),
          )
        ],
      ),
    );
  }
}
