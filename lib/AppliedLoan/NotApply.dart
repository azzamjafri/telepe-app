import 'package:flutter/material.dart';
class NotApply extends StatefulWidget {
  @override
  _NotApplyState createState() => _NotApplyState();
}

class _NotApplyState extends State<NotApply> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/1.png"),
                fit: BoxFit.fill,
                //colorFilter: ColorFilter.mode(Color.fromRGBO(192, 234, 218,1).withOpacity(0.6), BlendMode.softLight),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 90, 30, 0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Container(
                    height: 100,
                    child: Image.asset('images/teelpe15.png'),
                  ),
                ),
                Text('Dear User Name',style: TextStyle(color: Colors.deepPurple,fontSize: 15),),
                SizedBox(height: 15,),
                Text("   You haven't applied for any loans you can\n  select any option which is suitable for you" ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: RaisedButton(onPressed: (){
                    //Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child:categories()));
                  },shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(12.0),
                    side: BorderSide(color:Color.fromRGBO(129, 239, 194, 1.0) ),),
                    color:Colors.lime ,
                    child: Text('Loans',style: TextStyle(color: Colors.white),),
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );;
  }
}
