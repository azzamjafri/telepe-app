

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:telepeapp/ApplicationForm/ApplicationPage2.dart';
import 'package:telepeapp/ApplicationForm/ApplicationPage5.dart';
import 'package:telepeapp/colors.dart';

class ApplicationPage4 extends StatefulWidget {
  @override
  _ApplicationPage4State createState() => _ApplicationPage4State();
}

class _ApplicationPage4State extends State<ApplicationPage4> {
  String rent="";
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
              Column(
                children: [
                  SizedBox(height: 75,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/teelpe15.png",height: 75,width: 75,),
                    ],
                  ),

                  Text("Application Form",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 30,
                    width: MediaQuery.of(context).size.width/1.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: blueColor
                          ),
                          child: Center(child: Text("1",style: TextStyle(color: Colors.white),),),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: blueColor
                          ),
                          child: Center(child: Text("2",style: TextStyle(color: Colors.white),),),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: blueColor
                          ),
                          child: Center(child: Text("3",style: TextStyle(color: Colors.white),),),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: yellowColor
                          ),
                          child: Center(child: Text("4"),),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: greyColor
                          ),
                          child: Center(child: Text("5"),),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Personal",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Income",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Loan\nSelect",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Verify\nAccount",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),),
                      Text("Get Loan",style: TextStyle(fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Fill all correct details for loan amount received"),
                  ),
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
                            hintText: "  Full Name(As per Bank)",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,),
                            filled: true,
                            fillColor: greyColor),
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
                            hintText: "  Bank Name",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,),
                            filled: true,
                            fillColor: greyColor),
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
                            hintText: "  Account Number",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,),
                            filled: true,
                            fillColor: greyColor),
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
                            hintText: "  IFSC Code",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,),
                            filled: true,
                            fillColor: greyColor),
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
                            hintText: "  Branch Location",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,),
                            filled: true,
                            fillColor: greyColor),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.5,
                      child:  MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: (){
                          _getDialog();
                        },
                        child: Text("Verify and Submit",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),),
                        color: yellowColor,
                      )
                    ),
                  ),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }

   _getDialog() {
    return showDialog(context: context,

    builder: (context){
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        title: Text("Dear user"),
        content: Wrap(
          children: [
            Text("Pay \u20b925 for validating the account.\n(This is Refundable, so don't worry)\nValidate and Continue",
            style: TextStyle(color: Colors.blue,fontSize: 15,),)
          ],
        ),
        actions: [
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            child: Text("OK",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),),
            onPressed: (){
              Navigator.push(context, CupertinoPageRoute(builder: (context)=>ApplicationPage5()));
            },
            color: yellowColor,
          )
        ],
      );
    }
    );
   }


}
