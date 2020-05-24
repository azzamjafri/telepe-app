import 'package:flutter/material.dart';
import 'package:telepeapp/AppliedLoan/Tracking.dart';
import 'package:telepeapp/drawer.dart';
import 'package:telepeapp/colors.dart';

import '../colors.dart';

class appliedLoan extends StatefulWidget {
  @override
  _appliedLoanState createState() => _appliedLoanState();
}

class _appliedLoanState extends State<appliedLoan> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      key: scaffoldKey,
      drawer:Draw(context: context),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/back.png"),
                fit: BoxFit.fill,
                //colorFilter: ColorFilter.mode(Color.fromRGBO(192, 234, 218,1).withOpacity(0.6), BlendMode.softLight),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 90, 30, 0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Container(
                    height: 100,
                    child: Image.asset('assets/teelpe15.png'),
                  ),
                ),
                Text('Dear User Name',style: TextStyle(color: Colors.deepPurple,fontSize: 15),),
                SizedBox(height: 15,),
                Text('Thanks for submitting your loan application with Telepe'),
                SizedBox(
                  height: 15,
                ),
                Text('            Please Enter Your Application number\n                 to track your loan status'),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 250,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            filled: true,
                            hintText: 'Application Number',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius: BorderRadius.circular(10)

                            )
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: RaisedButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Tracking()));
                    //Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child:categories()));
                  },shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(12.0),
                    side: BorderSide(color:Colors.transparent ),),
                    color:yellowColor ,
                    child: Text('Track',style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                FlatButton(child: Image.asset("assets/9k.png",height: 50,width: 50,),onPressed: (){
                  scaffoldKey.currentState.openDrawer();
                },),
                Padding(padding: new EdgeInsets.only(left: MediaQuery.of(context).size.width / 10),),
//              Center(
//                child: Text('My Account', style: new TextStyle(color: Colors.white, fontSize: 25.0),),
//              ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
