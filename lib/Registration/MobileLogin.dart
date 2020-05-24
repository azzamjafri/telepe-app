import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telepeapp/HomePage/HomeScreen.dart';
import 'package:telepeapp/NavBar/NavBar.dart';
import 'package:telepeapp/Registration/Registration.dart';
import 'package:telepeapp/Registration/mpinlogin.dart';
import 'package:telepeapp/Registration/termsandconditions.dart';
import 'package:telepeapp/colors.dart';

class MobileLoginPage extends StatefulWidget {
  @override
  _MobileLoginPageState createState() => _MobileLoginPageState();
}

class _MobileLoginPageState extends State<MobileLoginPage> {
  bool checkbox=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/1.png",
                  fit: BoxFit.fill,
                ),
              ),
              getContents(),
            ],
          ),
        ),
      ),
    );
  }

  getContents() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 100,),

        Image.asset("assets/teelpe15.png",height: 150,width: 150,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "INSTANT,SIMPLE,FAST,ANYTIME",
                style: TextStyle(color: yellowColor),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Login by Mobile Number",
            style: TextStyle(
                color: blueColor, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 20,),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 1.5,
            child: TextField(
              decoration: InputDecoration(

                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: greyColor
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: greyColor
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "  Mobile Number",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  filled: true,
                  fillColor: greyColor

              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 1.5,
            child: TextField(
              decoration: InputDecoration(
                  suffix: FlatButton(
                    onPressed: (){},
                    child: Text("Get OTP Code",style: TextStyle(color: blueColor),),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: greyColor
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: greyColor
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "  OTP Code",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  filled: true,
                  fillColor: greyColor

              ),
            ),
          ),
        ),
        SizedBox(height: 20,),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              minWidth: 150,
              color: yellowColor,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NavBar()));
              },
              child: Text("Login",style: TextStyle(color: blueColor),),
            ),
            SizedBox(width: 40,)
          ],
        ),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MPinLoginPage()));
                },
                child: Text("or Login by M-Pin ",style: TextStyle(fontWeight: FontWeight.bold),))

          ],
        ),
        SizedBox(height: 30,),
        Row(
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


      ],
    );
  }
}
