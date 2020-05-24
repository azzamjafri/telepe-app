import 'package:flutter/material.dart';
import 'package:telepeapp/MyAccount/profile_pic_selection.dart';
import 'package:telepeapp/colors.dart';



class EditAccount extends StatefulWidget {
  @override
  _EditAccountState createState() => _EditAccountState();
}

class _EditAccountState extends State<EditAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        FlatButton(child: Image.asset("assets/backkkll.png",height: 50,width: 50,),onPressed: (){
                          Navigator.pop(context);
                        },),
                        Padding(padding: new EdgeInsets.only(left: MediaQuery.of(context).size.width / 6),),
                        Center(
                          child: new Text('Edit', style: new TextStyle(fontSize: 25.0, color: Colors.white),),
                        ),
                      ],
                    ),
                    Padding(padding: new EdgeInsets.only(top: MediaQuery.of(context).size.height / 35),),
                    Container(
                      height: 100.0,
                      width: 100.0,

                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new AssetImage('assets/prof.png')
                          )
                      ),
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          new IconButton(icon: Icon(Icons.edit), onPressed: (){
                            Navigator.push(context, MaterialPageRoute( builder: (context)=> ProfilePicSelection()));
                          }, color: Colors.grey,)
                        ],
                      ),
                    ),

                    Padding(padding: new EdgeInsets.only(top: 20.0),),
                    displayInfo('Name', 'aaaa'),
                    Padding(padding: const EdgeInsets.only(top: 12.0),),
                    displayInfo('Phone Number', '111111111'),
                    Padding(padding: const EdgeInsets.only(top: 12.0),),
                    displayInfo('E-Mail id', '11111@gmail.com'),
                    Padding(padding: const EdgeInsets.only(top: 12.0),),
                    displayInfo('Place', 'bbbbbbb'),
                    Padding(padding: const EdgeInsets.only(top: 12.0),),
                    displayInfo('M-Pin', '**********'),
                    Padding(padding: const EdgeInsets.only(top: 35.0),),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(11.0, 11.0, 16.0, 11.0),
                          child: FlatButton(onPressed: (){}, child: Text('Save', style: TextStyle(fontSize: 18.0, color: blueColor), ), shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0)), color: yellowColor,),
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
            height: 40.0,
//            color: greyColor,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: _width,
              child: new TextFormField(
                textAlign: TextAlign.center,
                decoration: new InputDecoration(
                  hintText: '$val',
                  fillColor: greyColor,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                    borderSide: new BorderSide(style: BorderStyle.solid),
                  ),
                ),
                keyboardType: (field.compareTo('Phone Number') == 0) ? TextInputType.phone : TextInputType.text,
              ),
            )
          )
        ],
      ),
    );

  }

}






