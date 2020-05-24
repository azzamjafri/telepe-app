
import 'package:flutter/material.dart';

import '../colors.dart';
//import 'package:telepeapp/colors.dart';
//import 'package:flutter_instagram_image_picker/InstagramAuth.dart';
//import 'package:flutter_instagram_image_picker/flutter_instagram_image_picker.dart';
//import 'package:flutter_instagram_image_picker/screens.dart';
//import 'package:image_picker/image_picker.dart';


class ProfilePicSelection extends StatefulWidget {

  @override
  _ProfilePicSelectionState createState() => _ProfilePicSelectionState();
}

class _ProfilePicSelectionState extends State<ProfilePicSelection> {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: new Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                FlatButton(child: Image.asset("assets/backkkll.png",height: 50,width: 50, color: Colors.grey,),onPressed: (){
                  Navigator.pop(context);
                },),
                Padding(padding: new EdgeInsets.only(left: MediaQuery.of(context).size.width / 12),),
                Center(
                  child: new Text('Choose Photo', style: new TextStyle(fontSize: 22.0, color: Colors.grey, fontWeight: FontWeight.bold),),
                ),
              ],
            ),

            Padding(padding: new EdgeInsets.only(left: MediaQuery.of(context).size.width / 6, top: 16.0),),

            new Container(
              height: 130.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(18.0),
                  color: greyColor
              ),
              child: new Center(
                child: new Image.asset('assets/l2.png', color: Colors.grey,),
              ),
            ),


            Padding(padding: new EdgeInsets.only(top: 14.0),),

            getInstaCard(),

            Padding(padding: new EdgeInsets.only(top: 14.0),),

            getFbCard(),
            Padding(padding: new EdgeInsets.only(top: 14.0),),
            Align(
              alignment: Alignment.centerLeft,
                child: new Text('Gallery', style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.grey, letterSpacing: 1.2),)),
            Padding(padding: new EdgeInsets.only(top: 6.0),),

            new Container(
              width: MediaQuery.of(context).size.width,
              height: 100.0,

            )




          ],
        ),
      ),

    );
  }


    getInstaCard(){
    return new Card(
      elevation: 15.0,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new Image.asset('assets/insta.png', scale: 3.0,),
            Padding(padding: EdgeInsets.only(left: 5.0),),
            new Text('Instagram', style: new TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, letterSpacing: 1.2),),
            Padding(padding: EdgeInsets.only(left: 70.0),),
            FlatButton(
              onPressed: () async {
//                var accessToken;
//                accessToken = await InstagramAuth().accessToken;
//                if(accessToken == null) {
//                  accessToken = await Navigator.push(context, MaterialPageRoute(builder: (_) => InstagramWebViewLoginPage()));
//                  if(accessToken == null) return ;
//                }
//
//                Navigator.push(context, MaterialPageRoute(builder: (context)=> InstagramImagePicker(
//                  accessToken,
//                  showLogoutButton: true,
//                  onDone: (items){ Navigator.pop(context);},
//                  onCancel: ()=> Navigator.pop(context),
//                )
//                )
//                );
              },
              child: new Text('Import', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
              color: blueColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            )

          ],
        ),
      ),
    );
  }

  getFbCard(){

    return new Card(
      elevation: 15.0,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new Image.asset('assets/lalla.png', scale: 3.0,),
            Padding(padding: EdgeInsets.only(left: 5.0),),
            new Text('Facebook', style: new TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, letterSpacing: 1.2),),
            Padding(padding: EdgeInsets.only(left: 70.0),),
            FlatButton(
              onPressed: (){},
              child: new Text('Import', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
              color: blueColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            )

          ],
        ),
      ),
    );

  }


}



