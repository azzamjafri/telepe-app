import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:telepeapp/MyAccount/edit_account.dart';
import 'package:telepeapp/colors.dart';
import 'package:telepeapp/drawer.dart';

import '../HomePage/HomeScreen.dart';



class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Draw(context: context),
      body: SingleChildScrollView(
        child: new Stack(
          children: <Widget>[

            new Container(

              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/asd1.png', fit: BoxFit.fill,),
            ),

            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                child: new Column(
                  children: <Widget>[
                    Padding(padding: new EdgeInsets.only(top: MediaQuery.of(context).size.width / 10),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(child: Image.asset("assets/9k.png",height: 50,width: 50,),onPressed: (){
                          scaffoldKey.currentState.openDrawer();
                        },),
                        Padding(padding: new EdgeInsets.only(left: MediaQuery.of(context).size.width / 10),),
                        Center(
                          child: Text('My Account', style: new TextStyle(color: Colors.white, fontSize: 25.0),),
                        ),
                      ],
                    ),
                    Padding(padding: new EdgeInsets.only(top: MediaQuery.of(context).size.height / 35),),
                    Container(
                      height: 80.0,
                      width: 80.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new AssetImage('assets/prof.png')
                          )
                      ),
                    ),

                    Padding(padding: new EdgeInsets.only(top: 20.0),),
                    displayInfo('Name', 'aaaa'),
                    Padding(padding: const EdgeInsets.only(top: 10.0),),
                    displayInfo('Phone Number', '111111111'),
                    Padding(padding: const EdgeInsets.only(top: 10.0),),
                    displayInfo('E-Mail id', '11111@gmail.com'),
                    Padding(padding: const EdgeInsets.only(top: 10.0),),
                    displayInfo('Place', 'bbbbbbb'),
                    Padding(padding: const EdgeInsets.only(top: 10.0),),
                    displayInfo('M-Pin', '**********'),
                    Padding(padding: const EdgeInsets.only(top: 35.0),),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FloatingActionButton(
                          elevation: 5.0,
                          child: new Icon(Icons.edit),
                          backgroundColor: blueColor,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EditAccount()));
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }



  displayInfo(String field, String val) {
    double _width = MediaQuery.of(context).size.width;
    return new Container(
      width: _width,
      height: 50.0,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: _width / 3,
            child: new Text('$field', style: new TextStyle(fontSize: 16.0),),
          ),
          Padding(padding: EdgeInsets.all(12.0),),
          Container(
            width: _width/ 2,
            height: 35.0,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.grey.shade200
            ),
            child: Center(
              child: Text('$val', style: TextStyle(fontSize: 15.0),),
            ),
          )
        ],
      ),
    );

  }

}






