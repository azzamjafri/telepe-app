

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telepeapp/colors.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/back1.png",
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment(0,-0.6),
            child: Image.asset("assets/teelpe15.png",height: 150,width: 150,),
          ),
          Align(
            alignment: Alignment(0,-0.35),
            child: Text("Notifications",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold ),),
          ),
          Align(
            alignment: Alignment(0,.3),
            child: SizedBox(
              width: MediaQuery.of(context).size.width/1.3,
              height: MediaQuery.of(context).size.height/2.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Application Applied"),
                  Text("Application Loan Appear/Decline"),
                  Text("Amount pay/complete amount section"),
                  Text("Verify Amount"),
                  Text("Amount Paid"),
                  Text("Telepaint has been added"),
                  Text("One user joined today using your link"),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-.9,-1),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                height: 100,
                width: 100,
                color: Colors.transparent,
              ),
            ),
          )
        ],
      ),
    );
  }


}
