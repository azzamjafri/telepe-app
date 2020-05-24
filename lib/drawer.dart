//<<<<<<< HEAD:lib/drawer.dart
import 'package:flutter/material.dart';
import 'package:telepeapp/BusinessLead/business_lead.dart';
import 'package:telepeapp/MyAccount/my_account.dart';
import 'package:telepeapp/Mywallet/MyWallet.dart';
import 'package:telepeapp/ReferAndEarn/ReferEarn.dart';
import 'package:telepeapp/colors.dart';
import 'package:telepeapp/loan/loans.dart';

import 'AppliedLoan/appliedLoan.dart';
import 'Support/Support.dart';
import 'feedback/Feedback.dart';

class Draw extends StatelessWidget {
  const Draw({
    Key key,
    @required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [

          ListView(
            children: <Widget>[
              Container(
                color: blueColor,
                height: 110,
              ),
              SizedBox(
                height: 38,
              ),
              Center(child: Text('Name,Palace',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: blueColor),),
              ),
              SizedBox(
                height: 5,
              ),
              Center(child: Text('Mobile Number')),
              ListTile(
                leading: Image.asset('assets/l2.png',color: Colors.black87,),
                title: Text(
                  'My Account',
                  style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0,color: blueColor),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyAccount()),
                  );
                },
              ),
              ListTile(
                leading: Image.asset('assets/t.png'),
                title: Text(
                  'Loans',
                  style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0,color:blueColor),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => loans()),
                  );
                },
              ),
              ListTile(
                leading: Image.asset('assets/ha.png',color: Colors.black87,),
                title: Text(
                  'My Wallet',
                  style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0,color: blueColor),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyWallet()),
                  );
                },

              ),
              ListTile(
                leading: Image.asset('assets/u.png',),
                title: Text(
                  'Applied Loans',
                  style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0,color: blueColor),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => appliedLoan()),
                  );
                },

              ),
              ListTile(
                leading: Image.asset('assets/p.png',),
                title: Text(
                  'Business Lead',
                  style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0,color: blueColor),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BusinessLead()));
                },
              ),
              ListTile(
                leading: Image.asset('assets/h.png',),
                title: Text(
                  'Refer and Earn',
                  style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0,color: blueColor),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => refer()),
                  );
                },

              ),
              ListTile(
                leading: Image.asset('assets/k.png',),
                title: Text(
                  'FeedBack',
                  style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0,color: blueColor),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FeedBack()),
                  );
                },
              ),
              ListTile(
                leading: Image.asset('assets/l.png',),
                title: Text(
                  'Support',
                  style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0,color: blueColor),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Support()),
                  );
                },
              ),
              ListTile(
                leading: Image.asset('assets/loh.png',),
                title: Text(
                  'Logout',
                  style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0,color: blueColor),
                ),
                onTap: () => Navigator.of(context).pop(),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70,left: 100),
            child: Container(height:150,width: 80,child: Image.asset('assets/prof.png',color: Colors.black87,)),
          ),],
      ),
    );
  }
}


//class Draw extends StatelessWidget {
//  const Draw({
//    Key key,
//    @required this.context,
//  }) : super(key: key);
//
//  final BuildContext context;
//
//  @override
//  Widget build(BuildContext context) {
//    return Drawer(
//      child: Stack(
//        children: [
//
//          ListView(
//            children: <Widget>[
//              Container(
//                color: blueColor,
//                height: 110,
//              ),
//              SizedBox(
//                height: 38,
//              ),
//              Center(child: Text('Name,Palace',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: blueColor),),
//              ),
//              SizedBox(
//                height: 5,
//              ),
//              Center(child: Text('Mobile Number')),
//              ListTile(
//                leading: Image.asset('assets/l2.png',color: Colors.black87,),
//                title: Text(
//                  'My Account',
//                  style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0,color: blueColor),
//                ),
//                onTap: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => MyAccount()),
//                  );
//                },
//              ),
//              ListTile(
//                leading: Image.asset('assets/t.png'),
//                title: Text(
//                  'Loans',
//                  style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0,color:blueColor),
//                ),
//                onTap: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => loans()),
//                  );
//                },
//              ),
//              ListTile(
//                leading: Image.asset('assets/ha.png',color: Colors.black87,),
//                title: Text(
//                  'My Wallet',
//                  style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0,color: blueColor),
//                ),
//                onTap: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => MyWallet()),
//                  );
//                },
//
//              ),
//              ListTile(
//                leading: Image.asset('assets/u.png',),
//                title: Text(
//                  'Applied Loans',
//                  style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0,color: blueColor),
//                ),
//                onTap: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => appliedLoan()),
//                  );
//                },
//
//              ),
//              ListTile(
//                leading: Image.asset('assets/p.png',),
//                title: Text(
//                  'Buisness Lead',
//                  style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0,color: blueColor),
//                ),
//                onTap: () => Navigator.of(context).pop(),
//              ),
//              ListTile(
//                leading: Image.asset('assets/h.png',),
//                title: Text(
//                  'Refer and Earn',
//                  style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0,color: blueColor),
//                ),
//                onTap: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) =>refer()),
//                  );
//                },
//
//              ),
//              ListTile(
//                leading: Image.asset('assets/k.png',),
//                title: Text(
//                  'FeedBack',
//                  style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0,color: blueColor),
//                ),
//                onTap: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => FeedBack()),
//                  );
//                },
//              ),
//              ListTile(
//                leading: Image.asset('assets/l.png',),
//                title: Text(
//                  'Support',
//                  style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0,color: blueColor),
//                ),
//                onTap: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => Support()),
//                  );
//                },
//              ),
//              ListTile(
//                leading: Image.asset('assets/loh.png',),
//                title: Text(
//                  'Logout',
//                  style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0,color: blueColor),
//                ),
//                onTap: () => Navigator.of(context).pop(),
//              ),
//
//            ],
//          ),
//          Padding(
//            padding: const EdgeInsets.only(top: 70,left: 100),
//            child: Container(height:150,width: 80,child: Image.asset('assets/prof.png',color: Colors.black87,)),
//          ),],
//      ),
//    );
//  }
//}
//>>>>>>> 0eed9fb386857f503c4d4cd29636e1550d2e3143:lib/drawer.dart
