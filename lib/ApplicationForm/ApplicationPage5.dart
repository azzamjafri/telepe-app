

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:telepeapp/ApplicationForm/ApplicationPage2.dart';
import 'package:telepeapp/colors.dart';

class ApplicationPage5 extends StatefulWidget {
  @override
  _ApplicationPage5State createState() => _ApplicationPage5State();
}

class _ApplicationPage5State extends State<ApplicationPage5> {
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
                  "assets/background3.png",
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
                              color: blueColor
                          ),
                          child: Center(child: Text("4",style: TextStyle(color: Colors.white)),),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: yellowColor
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
                      Text("Verify\nAccount",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Get Loan",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Dear Name of the user",style: TextStyle(color: blueColor),),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Thanks for Applying",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: blueColor)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Wrap(
                      children: [
                        Text("For fast process please pay loan application fees of Rs.199/-(100% Refundable) so, don't worry to pay application fee.")
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     Text("Process and Get Loan",style: TextStyle(fontWeight: FontWeight.bold),),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: (){
                          _getDialog();
                        },
                        child: Text("Pay",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),),
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
                      image: AssetImage("assets/teelpe25.png"),
                      fit: BoxFit.fill
                  )
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Dear user name"),
                          ),
                        ],
                      ),
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
                        padding: const EdgeInsets.all(15.0),
                        child: Wrap(children: [
                          Text("Thanks for applying loan.Your application number is 11111 please wait for next notification or you can check sattus from applied loan section.")
                        ], ),
                      ),
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
