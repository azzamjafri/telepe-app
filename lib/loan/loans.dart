import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:telepeapp/drawer.dart';

import '../HomePage/HomeScreen.dart';

class loans extends StatefulWidget {
  @override
  _loansState createState() => _loansState();
}

class _loansState extends State<loans> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer:Draw(context: context),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/ik.png"),
                fit: BoxFit.fill,
                //colorFilter: ColorFilter.mode(Color.fromRGBO(192, 234, 218,1).withOpacity(0.6), BlendMode.softLight),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Container(
              height: 40,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(child: Image.asset("assets/9k.png",height: 50,width: 50,),onPressed: (){
                    scaffoldKey.currentState.openDrawer();
                  },),
                  Text(
                    'LOANS',
                    style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                  Container(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 70, 10, 0),
            child: SingleChildScrollView(
              child: Table(
                children: [
                  TableRow(
                      children: [Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black26),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            padding: const EdgeInsets.all(9.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/a.png'),
                                Text('Instant personal Loan',style: TextStyle(color: Colors.blue),),
                                Text('No cibili check\n3 EMI Free Support')
                              ],
                            )
                        ),
                      ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black26),
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/b.png'),
                                  Text('Instant Buisness Loan',style: TextStyle(color: Colors.blue),),
                                  Text('No cibili check\n3 EMI Free Support')
                                ],
                              )
                          ),
                        ),]
                  ),
                  TableRow(
                      children: [Padding(
                        padding: const EdgeInsets.only(right: 10,top: 15),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black26),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            padding: const EdgeInsets.all(9.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/c.png'),
                                Text('Instant Low CIBIL\nScore Loan',style: TextStyle(color: Colors.blue),),
                                Text('No cibili check\n3 EMI Free Support')
                              ],
                            )
                        ),
                      ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 15),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black26),
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/d.png'),
                                  Text('Instant Loan\n(Android App Dev.)',style: TextStyle(color: Colors.blue),),
                                  Text('No cibili check\n3 EMI Free Support')
                                ],
                              )
                          ),
                        ),]
                  ),
                  TableRow(
                      children: [Padding(
                        padding: const EdgeInsets.only(right: 10,top: 15),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black26),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            padding: const EdgeInsets.all(9.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/f.png'),
                                Text('Instant Loan\n(Web/Software/ERP)',style: TextStyle(color: Colors.blue),),
                                Text('No cibili check\n3 EMI Free Support')
                              ],
                            )
                        ),
                      ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 15),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black26),
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/hk.png'),
                                  Text('Instant Student Loan',style: TextStyle(color: Colors.blue),),
                                  Text('No cibili check\n3 EMI Free Support')
                                ],
                              )
                          ),
                        ),]
                  ),
                  TableRow(
                      children: [Padding(
                        padding: const EdgeInsets.only(right: 10,top: 15),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black26),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            padding: const EdgeInsets.all(9.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/z.png'),
                                Text('Instant Loan For\n(Low Salary/Income)',style: TextStyle(color: Colors.blue),),
                                Text('No cibili check\n3 EMI Free Support')
                              ],
                            )
                        ),
                      ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 15),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black26),
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/n.png'),
                                  Text('Instant Daily Basics\n(Private Loans)',style: TextStyle(color: Colors.blue),),
                                  Text('No cibili check\n3 EMI Free Support')
                                ],
                              )
                          ),
                        ),]
                  )
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
