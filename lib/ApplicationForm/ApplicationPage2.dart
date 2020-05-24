import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:telepeapp/colors.dart';

import 'ApplicationPage3.dart';

class ApplicationPage2 extends StatefulWidget {
  @override
  _ApplicationPage2State createState() => _ApplicationPage2State();
}

class _ApplicationPage2State extends State<ApplicationPage2> {
  var salary=true;
  var businessman=false;
  var student=false;
  var working=true;
  var notworking=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                              color: yellowColor
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
                      Text("Personal",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Income",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),),
                      Text("Loan\nSelect",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Verify\nAccount",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Get Loan",style: TextStyle(fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(height: 20,),
                  StatefulBuilder(
                    builder: (_,setState){
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Checkbox(
                                value: salary,
                                onChanged: (val){
                                  setState(() {
                                    salary=val;
                                    businessman=false;
                                    student=false;
                                  });
                                },
                              ),
                              Text("Salary"),
                              Checkbox(
                                value: businessman,
                                onChanged: (val){
                                  setState(() {
                                    businessman=val;
                                    salary=false;
                                    student=false;
                                  });
                                },
                              ),
                              Text("Businessman"),
                              Checkbox(
                                value: student,
                                onChanged: (val){
                                  setState(() {
                                    student=val;
                                    salary=false;
                                    businessman=false;
                                  });
                                },
                              ),
                              Text("Student"),
                            ],
                          ),
                          (student)? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Checkbox(
                                value: working,
                                onChanged: (val){
                                  setState(() {
                                    working=val;
                                    notworking=false;
                                  });
                                },
                              ),
                              Text("Working"),
                              Checkbox(
                                value: notworking,
                                onChanged: (val){
                                  setState(() {
                                    notworking=val;
                                    working=false;

                                  });
                                },
                              ),
                              Text("Not Working"),
                            ],
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
                                    hintText: (!notworking)? "  Company Name":"  Family Monthly Income",
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
                                    hintText: (salary || working)?"  Total Work Experience":(businessman)?("  Company Work Experience"):(notworking)?"  Father Age":null,
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
                                    hintText: (salary || working)?"  Gross Salary":(businessman)?("  Monthly Income"):(notworking)?"  Mother Age":null,
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,),
                                    filled: true,
                                    fillColor: greyColor),
                              ),
                            ),
                          ),
                          (notworking)?
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
                                    hintText: "Loan Purpose",
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,),
                                    filled: true,
                                    fillColor: greyColor),
                              ),
                            ),
                          ):Container(),
                        ],
                      );
                    },
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
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>ApplicationPage3()));
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
    );;
  }


}
