

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:telepeapp/ApplicationForm/ApplicationPage2.dart';
import 'package:telepeapp/colors.dart';

class ApplicationPage1 extends StatefulWidget {
  @override
  _ApplicationPage1State createState() => _ApplicationPage1State();
}

class _ApplicationPage1State extends State<ApplicationPage1> {
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
                              color: yellowColor
                          ),
                          child: Center(child: Text("1"),),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: greyColor
                          ),
                          child: Center(child: Text("2"),),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: greyColor
                          ),
                          child: Center(child: Text("3"),),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: greyColor
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
                      Text("Personal",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),),
                      Text("Income",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Loan\nSelect",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Verify\nAccount",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Get Loan",style: TextStyle(fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(height: 10,),
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
                            hintText: "  Full Name",
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
                            hintText: "  Mobile Number",
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
                            hintText: "  Email ID",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,),
                            filled: true,
                            fillColor: greyColor),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width/2.5,
                          child: TextField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.calendar_today),
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
                                hintText: "  DOB",
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
                          width: MediaQuery.of(context).size.width/2.5,
                          child: TextField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.keyboard_arrow_down),
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
                                hintText: "  Place",
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,),
                                filled: true,
                                fillColor: greyColor),
                          ),

                        ),
                      ),
                    ],
                  ),
                  StatefulBuilder(
                    builder: (BuildContext context,StateSetter SetState){
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: TextField(
                                decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.keyboard_arrow_down),
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
                                    hintText: "  Marriage Status",
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,),
                                    filled: true,
                                    fillColor: greyColor),
                              ),
                            ),
                          ),
                          RadioButtonGroup(
                            orientation: GroupedButtonsOrientation.HORIZONTAL,
                            labels: <String>[
                              "Rent",
                              "Own"
                            ],
                            onSelected: (val){
                              setState(() {
                                rent=val;
                                print(rent);
                              });
                            },
                          )
                        ],
                      );
                    },
                  ),
                  (rent=="Rent")?Padding(
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
                            hintText: "  Rent Amount",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,),
                            filled: true,
                            fillColor: greyColor),
                      ),
                    ),
                  ):Container(),
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
                            hintText: "  Address",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,),
                            filled: true,
                            fillColor: greyColor),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: (){},
                        child: Text("Change",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),),
                        color: yellowColor,
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>ApplicationPage2()));
                        },
                        child: Text("Next",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),),
                        color: yellowColor,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


}
