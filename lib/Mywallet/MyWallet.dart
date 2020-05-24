import 'package:flutter/material.dart';
import 'package:telepeapp/Mywallet/AccountDetails.dart';
import 'package:telepeapp/colors.dart';
import 'package:telepeapp/drawer.dart';
class MyWallet extends StatefulWidget {
  @override
  _MyWalletState createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
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
                image: AssetImage("assets/hj.png"),
                fit: BoxFit.cover,
                //colorFilter: ColorFilter.mode(Color.fromRGBO(192, 234, 218,1).withOpacity(0.6), BlendMode.softLight),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(10, 170, 10, 0),
              child:SingleChildScrollView(
                child: Table(
                  children: [
                    TableRow(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex:2,
                                child: Container(
                                    height:180,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black26),
                                        borderRadius: BorderRadius.all(Radius.circular(10))),
                                    padding: const EdgeInsets.all(9.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/t1.png'),
                                        Text('100 Users',style: TextStyle(color: Colors.blue),),
                                        Text('Joined User By Links')
                                      ],
                                    )
                                ),
                              ),
                              Expanded(flex:1,child: Container(child: Image.asset('assets/arr.png'))),
                              Expanded(
                                flex: 2,
                                child: Container(
                                    height: 200,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black26),
                                        borderRadius: BorderRadius.all(Radius.circular(10))),
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/ga.png'),
                                        Text('50TP/Users',style: TextStyle(color: Colors.blue),),
                                        Text('Earn Tele points Per\nUsers')
                                      ],
                                    )
                                ),
                              ),

                            ],
                          ),
                        ]
                    ),
                    TableRow(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 50),
                                child: RotatedBox(
                                  quarterTurns: 1,
                                  child: Container(height:30,child: Image.asset('assets/arr.png')),
                                ),
                              )
                            ],
                          )
                        ]
                    ),
                    TableRow(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  height: 180,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.black26),
                                      borderRadius: BorderRadius.all(Radius.circular(10))),
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/kkkkkk.png'),
                                      Text('100*50 TP = 5000TP',style: TextStyle(color: Colors.blue),),
                                      Text('No cibili check\n3 EMI Free Support')
                                    ],
                                  )
                              ),
                            ],
                          )
                        ]
                    ),
                    TableRow(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 60),
                                child: RotatedBox(
                                  quarterTurns: 1,
                                  child: Container(height:30,child: Image.asset('assets/arr.png')),
                                ),
                              )
                            ],
                          )
                        ]
                    ),
                    TableRow(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  height: 200,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.black26),
                                      borderRadius: BorderRadius.all(Radius.circular(10))),
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/111.png'),
                                      Text('5000Tp=5000Rs',style: TextStyle(color: Colors.blue),),
                                      MaterialButton(
                                        color: yellowColor,
                                        child: Text("Withdraw"),
                                        onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>account()));
                                        },)
                                    ],
                                  )
                              ),
                            ],
                          )
                        ]
                    ),
                  ],

                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                FlatButton(child: Image.asset("assets/9k.png",height: 50,width: 50,),onPressed: (){
                  scaffoldKey.currentState.openDrawer();
                },),
                Padding(padding: new EdgeInsets.only(left: MediaQuery.of(context).size.width / 10),),
//              Center(
//                child: Text('My Account', style: new TextStyle(color: Colors.white, fontSize: 25.0),),
//              ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
