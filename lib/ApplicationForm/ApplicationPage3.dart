

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:telepeapp/ApplicationForm/ApplicationPage2.dart';
import 'package:telepeapp/ApplicationForm/ApplicationPage4.dart';
import 'package:telepeapp/colors.dart';

class ApplicationPage3 extends StatefulWidget {
  @override
  _ApplicationPage3State createState() => _ApplicationPage3State();
}

class _ApplicationPage3State extends State<ApplicationPage3> {
  String rent="";
  double loanamount=5000.0;
  String loanamountString="5000";
  String monthsString="3";
  double months=3.0;
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
                              color: yellowColor
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
                      Text("Income",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Loan\nSelect",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),),
                      Text("Verify\nAccount",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Get Loan",style: TextStyle(fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width / 1.5,
                      child:Wrap(
                        direction: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 10),
                            child: Text("How much amount needed:",style: TextStyle(fontSize: 15,color: blueColor,fontWeight: FontWeight.w400),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 10),
                            child: Text("\u20b9${loanamountString}",style: TextStyle(fontSize: 15,color: blueColor,fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("5k"),
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width / 1.5,
                          child:Slider(
                            activeColor: blueColor,
                            divisions: 99,
                            onChanged: (val){
                              setState(() {
                                loanamountString=val.toStringAsFixed(0);
                                loanamount=val;
                              });
                            },
                            min: 5000,
                            max: 500000,
                            value: loanamount,
                          ),
                        ),
                        Text("5Lac")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width / 1.5,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 10),
                            child: Text("Choose Tenure:",style: TextStyle(fontSize: 15,color: blueColor,fontWeight: FontWeight.w400),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 10),
                            child: Text("${monthsString}M",style: TextStyle(fontSize: 15,color: blueColor,fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("3M"),
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width / 1.5,
                          child:Slider(
                            activeColor: blueColor,
                            divisions: 11,
                            onChanged: (val){
                              setState(() {
                                monthsString=val.toStringAsFixed(0);
                                months=val;
                              });
                            },
                            min: 3,
                            max: 36,
                            value: months,
                          ),
                        ),
                        Text("3 Yrs")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Upload Documents",style: TextStyle(color: blueColor,fontWeight: FontWeight.w400),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: Center(child: Text("Pan Card",style: TextStyle(fontWeight: FontWeight.w500),))),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width/2.5,
                              child: TextField(
                                decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.attach_file,color: Colors.blue,),
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
                                    hintText: "  Upload",
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,),
                                    filled: true,
                                    fillColor: greyColor),
                              ),

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: Center(child: Text("Adhaar Front",style: TextStyle(fontWeight: FontWeight.w500),))),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width/2.5,
                              child: TextField(
                                decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.attach_file,color: Colors.blue,),
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
                                    hintText: "  Upload",
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,),
                                    filled: true,
                                    fillColor: greyColor),
                              ),

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: Center(child: Text("Adhaar Back",style: TextStyle(fontWeight: FontWeight.w500),))),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width/2.5,
                              child: TextField(
                                decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.attach_file,color: Colors.blue,),
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
                                    hintText: "  Upload",
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,),
                                    filled: true,
                                    fillColor: greyColor),
                              ),

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: Center(child: Text("Photo",style: TextStyle(fontWeight: FontWeight.w500),))),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width/2.5,
                              child: TextField(
                                decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.attach_file,color: Colors.blue,),
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
                                    hintText: "  Upload",
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,),
                                    filled: true,
                                    fillColor: greyColor),
                              ),

                            ),
                          ),
                        ),
                      ),
                    ],
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
                          _getDialog();
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

   _getDialog() {
    return showDialog(context: context,
      barrierDismissible: false,
      builder: (context){
      return Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        child: Container(

          height: MediaQuery.of(context).size.height/3,
          width: MediaQuery.of(context).size.width/1.5,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/1w.png"),
              fit: BoxFit.fill
            )
          ),
          child: Stack(
            children: [
                  Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("Congratulations!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: blueColor),)

                         ],
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text("You are eligible to apply loan\n of \u20b9${loanamountString}"),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text("Please go for account verification."),
                     ),
                     RaisedButton(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20)
                       ),
                       child: Text("GO",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),),
                       onPressed: (){
                         Navigator.push(context, CupertinoPageRoute(builder: (context)=>ApplicationPage4()));
                       },
                       color: yellowColor,
                     )
                   ],
                  ),
            ],
          ),
        ),

      );
      }
    );
  }


}
