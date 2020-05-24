import 'package:flutter/material.dart';
import 'package:telepeapp/drawer.dart';

class FeedBack extends StatefulWidget {
  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
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
                image: AssetImage("assets/background1.png"),
                fit: BoxFit.fill,
                //colorFilter: ColorFilter.mode(Color.fromRGBO(192, 234, 218,1).withOpacity(0.6), BlendMode.softLight),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 190, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('FeedBack',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black87),),
                SizedBox(height: 10,),
                Text('Your Suggesstion is important to us'),
                SizedBox(height: 10,),
                Text('Thanks by telepe',style: TextStyle(color: Colors.blueAccent),),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 250,
                      child: TextField(
                        //textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            filled: true,
                            hintText: 'Name',
                            hintStyle: TextStyle(color: Colors.black87),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 250,
                      child: TextField(
                        //textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.black87),
                            filled: true,
                            hintText: 'Email Id',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                      width: 250,
                      child: TextField(
                        //textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            filled: true,
                            hintText: 'Message',
                            hintStyle: TextStyle(color: Colors.black87),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                    )
                  ],
                ),
                RaisedButton(onPressed: (){
                  //Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child:categories()));
                },shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(12.0),
                  side: BorderSide(color:Colors.transparent),),
                  color:Colors.blueAccent,
                  child: Text('Send',style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
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
