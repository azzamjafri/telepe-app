import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telepeapp/Registration/termsandconditions.dart';
import 'package:telepeapp/colors.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool checkbox=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
    );
  }

  getContents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 90,),
        Image.asset("assets/teelpe15.png",height: 125,width: 125,),
       Column(
         children: [
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
               "Register",
               style: TextStyle(
                   color: blueColor, fontSize: 20, fontWeight: FontWeight.w500),
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
                     hintText: "  Full Name",
                     hintStyle: TextStyle(
                         fontWeight: FontWeight.bold, color: Colors.black),
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
                     suffixIcon: Icon(Icons.arrow_drop_down),
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
                         fontWeight: FontWeight.bold, color: Colors.black),
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
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(
               "Set M-Pin",
               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
             ),
           ),
         ],
       ),
        Row(
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: checkbox,
              onChanged: (val){
                setState(() {
                  checkbox=true;
                });
              },
            ),
            Text("I Agree the "),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>TermsPage()));
                },
                child: Text("Terms and conditions and privacy policy",style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              minWidth: 150,
              color: yellowColor,
              onPressed: (){},
              child: Text("Continue",style: TextStyle(color: blueColor),),
            ),
            SizedBox(width: 20,)
          ],
        ),
      ],
    );
  }
}
