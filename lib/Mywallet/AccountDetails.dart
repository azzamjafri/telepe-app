import 'package:flutter/material.dart';
import 'package:telepeapp/buttons.dart';
import 'package:telepeapp/colors.dart';

import '../colors.dart';

class account extends StatefulWidget {
  @override
  _accountState createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/1.png"),
                fit: BoxFit.cover,
                //colorFilter: ColorFilter.mode(Color.fromRGBO(192, 234, 218,1).withOpacity(0.6), BlendMode.softLight),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 70, 30, 10),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    child: Image.asset('assets/teelpe15.png'),
                  ),
                  //SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text('Submit Accout Details',style: TextStyle(color: Colors.deepPurple,fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              filled: true,
                              hintText: 'Full Name(as per Bank)',
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
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              filled: true,
                              hintText: 'Bank Name',
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
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              filled: true,
                              hintText: 'Account Number',
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
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              filled: true,
                              hintText: 'IFSC Code',
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
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              filled: true,
                              hintText: 'Branch Location',
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
                    height: 35,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text('     Verify & Validate Account By Rs.25\nAnd Then Transfer Your Earning to Bank'),
                        Text('(Do not woory this amount will be refundable after verify)',style: TextStyle(color: Colors.blue), )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RoundButton(color: yellowColor,f: (){
                    showDialog<dynamic>(context: context,
                        builder: (BuildContext context){
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(32.0))),
                        contentPadding: EdgeInsets.only(top: 10.0),
                        content: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/haksn.png'),
                              fit: BoxFit.fill
                            )
                          ),
                          height: 270,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Congratulations',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 25,),),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text('Your Request has been submitted sucessfully our team will then receive you will get settlement within 7 days ',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400
                                ),),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RaisedButton(onPressed: (){
                                    Navigator.pop(context);
                                    //Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child:categories()));
                                  },shape: RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(18.0),
                                    side: BorderSide(color:Colors.transparent ),),
                                    color:yellowColor ,
                                    child: Text('ok',style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                      );
                        }
                    );
                  },name: 'Verify and Get Amount',),


                ],
              ),
            ),
          )


        ],
      ),
    );
  }
}
