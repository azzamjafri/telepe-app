import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:telepeapp/drawer.dart';
class refer extends StatefulWidget {
  @override
  _referState createState() => _referState();
}

class _referState extends State<refer> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  void show(BuildContext context){
    showModalBottomSheet<dynamic>(
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      backgroundColor: Colors.transparent,
      builder: (context) =>
          DraggableScrollableSheet(

            initialChildSize: 0.25,
            minChildSize: 0.2,
            maxChildSize: 1,
            builder: (context, scrollController) {
              return Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 1, 8, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('Share Via',style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 10,
                      ),
                      Table(
                        children: [
                          TableRow(
                            children: [
                              Image.asset('assets/whats.png'),
                            Image.asset('assets/insta.png'),
                              Image.asset('assets/twee.png'),
                              Image.asset('assets/link.png'),
                              Image.asset('assets/mes.png'),
//                        Image.asset('images/whats.png'),
                            ]
                          ),
                          TableRow(
                            children: [
                              Image.asset('assets/iconl.png'),
                              Image.asset('assets/nnnanna.png'),
                             Center(child: Text('',style: TextStyle(color: Colors.black87,fontSize: 14,textBaseline: TextBaseline.alphabetic),)),
                              Container(),
                              Container(),
                            ]
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
    );}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer:Draw(context: context),
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: [
          Container(

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/backkk.png"),
                fit: BoxFit.fill,
                //colorFilter: ColorFilter.mode(Color.fromRGBO(192, 234, 218,1).withOpacity(0.6), BlendMode.softLight),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 46, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 100,
                    child: Image.asset('assets/teelpe15.png'),
                  ),
                ),
                Text('Refer and Earn',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87),),
                SizedBox(height: 15,),
                Text('Congratulations',style: TextStyle(color: Colors.blueAccent,fontSize: 20,fontWeight: FontWeight.w700),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Dear user Name',style: TextStyle(color: Colors.blue,fontSize: 18),),
                  ],
                ),
                SizedBox(height: 15,),
                Text('Thanks for Choosing',style: TextStyle(color: Colors.black87,fontSize: 17,fontWeight: FontWeight.w400),),
                SizedBox(height: 15,),
                Text('Referal program of Telepe',style: TextStyle(color: Colors.black87,fontSize: 17,fontWeight: FontWeight.w700),),
                SizedBox(height: 10,),
                Text('(Earn Unlimted by just refer)',style: TextStyle(color: Colors.blueAccent,fontSize: 17,fontWeight: FontWeight.w500),),
                SizedBox(height: 5,),
                Text('Your Link',style: TextStyle(color: Colors.black87,fontSize: 17),),
                SizedBox(height: 13,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 37,
                      width: 270,
                      child: TextField(
                        //textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            filled: true,
                            hintText: 'www.hhh/xye.com/123',
                            suffixIcon: IconButton(icon: Icon(Icons.share,color: Colors.black87,),
                                onPressed:(){ show(context);}),
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
                SizedBox(
                  height: 10,
                ),
                Center(child: Text('Earn upto 2 Lakh by just refer this\n link to your circle',style: TextStyle(color: Colors.black87,fontSize: 15),)),
                SizedBox(
                  height: 10,
                ),
                Text('Collect Tele paints and transfer to your bank',style: TextStyle(color: Colors.black87,fontSize: 15),),
                SizedBox(height: 8,),
                Text('More refer = More Earning',style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold),),
                SizedBox(height: 7,),
                Text('10 Refer = 10 User= 10*50 = 500 TP',style: TextStyle(color: Colors.black87,fontSize: 15,fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text('1 TP=1 INR,1 User Services = 50 TP',style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold),)


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
