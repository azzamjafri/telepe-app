import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:telepeapp/colors.dart';
import 'package:telepeapp/drawer.dart';

class BusinessLead extends StatefulWidget {

  @override
  _BusinessLeadState createState() => _BusinessLeadState();
}

class _BusinessLeadState extends State<BusinessLead> {

  Color _pinkColor = Color.fromRGBO(242, 132, 124, 0.5);

  var scaffoldKey = GlobalKey<ScaffoldState>();
  var _banker = false;
  var _financialConsultant = false;
  var _financialServiceProvider = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: scaffoldKey,
      drawer: Draw(context: context),
      body: SafeArea(
        child: SingleChildScrollView(

          child: new Stack(
            children: <Widget>[


              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: new Image.asset('assets/eee.png', fit: BoxFit.fill,),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: new Column(
                  children: <Widget>[
                    Padding(padding: new EdgeInsets.only(top: 20.0),),
                    Image.asset(
                      'assets/teelpe15.png', fit: BoxFit.fill, scale: 2.0,),

                    new Center(
                      child: new Text('Business Leads', style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.1,
                          color: Colors.white),),
                    ),
                    Padding(padding: new EdgeInsets.only(top: 20.0),),
                    new Container(
                      //width: MediaQuery.of(context).size.width,
                      height: 190.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white.withOpacity(0.85)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: new Column(
                          children: <Widget>[
                            Align(alignment: Alignment.centerLeft,
                                child: new Text('Dear User Name', style: new TextStyle(color: blueColor, fontFamily: 'Gotham', fontSize: 15.0, fontWeight: FontWeight.bold),)),
                            Padding(padding: new EdgeInsets.only(top: 15.0),),
                            Align(alignment: Alignment.centerLeft,
                                child: new Text('Thanks for Visit us')),
                            new Text(
                                'If you are a banker/Financial Consultant/ Financial Services provider and want to grow your business then please join us'),
                            Padding(padding: new EdgeInsets.only(top: 15.0),),

                            // ***** BLUE BUTTON ****

                            Expanded(
                              child: new FlatButton(onPressed: () {},
                                child: Text(
                                  'Your Experience + Telepe Leads = High Profit + Grow as sky',
                                  style: TextStyle(
                                      fontSize: 13.0, color: Colors.white),),
                                shape: RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(
                                        15.0)),
                                color: blueColor,),
                            ),

                          ],
                        ),
                      ),
                    ),


                    Padding(padding: new EdgeInsets.only(top: 10.0),),

                    new Container(
                      width: MediaQuery.of(context).size.width,
                      // HEIGHT OF SECOND CONTAINER
//                      height: MediaQuery.of(context).size.height*1.8,
                        height: 1200.0,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white.withOpacity(0.85)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Column(

                          children: <Widget>[
                            Align(alignment: Alignment.centerLeft,
                                child: new Text('I am a', style: new TextStyle(
                                    fontFamily: 'Gotham',
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),)),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: CheckboxListTile(
                                    title: Text('Banker',
                                      style: TextStyle(fontSize: 12.5),),
                                    value: _banker,
                                    onChanged: (val) {
                                      setState(() {
                                        _banker = val;
                                        _financialConsultant = false;
                                        _financialServiceProvider = false;
                                      });
                                    },
                                  ),
                                ),




                                Expanded(
                                  child: CheckboxListTile(
                                    title: Text('Financial Consultant',
                                      style: TextStyle(fontSize: 12.5),),
                                    value: _financialServiceProvider,
                                    onChanged: (val) {
                                      setState(() {
                                        _banker = false;
                                        _financialConsultant = false;
                                        _financialServiceProvider = val;
                                      });
                                    },
                                  ),
                                ),


                              ],
                            ),

                            new Row(
                              children: <Widget>[
                                Expanded(
                                  child: CheckboxListTile(
                                    title: Text('Financial Service Provider',
                                      style: TextStyle(fontSize: 12.5),),
                                    value: _financialConsultant,
                                    onChanged: (val) {
                                      setState(() {
                                        _banker = false;
                                        _financialConsultant = val;
                                        _financialServiceProvider = false;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),

                            Padding(padding: EdgeInsets.all(12.0),),
                            inputButton('Full Name'),
                            Padding(padding: EdgeInsets.all(12.0),),
                            inputButton('Bank Name/Company Name'),
                            Padding(padding: EdgeInsets.all(12.0),),
                            inputButton('Phone Number'),
                            Padding(padding: EdgeInsets.all(12.0),),
                            inputButton('Email id'),
                            Padding(padding: EdgeInsets.all(12.0),),

                            getDropDownContainer('Choose Lead Product'),
                            Padding(padding: EdgeInsets.all(12.0),),
                            getDropDownContainer('Lead Location'),
                            Padding(padding: EdgeInsets.all(12.0),),
                            getDropDownContainer('Choose Income Range'),
                            Padding(padding: EdgeInsets.all(12.0),),

                            Align(alignment: Alignment.topLeft,
                              child: Row(
                                children: <Widget>[
                                  Text('No. of lead required', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                                  Text('(Select any one)', style: TextStyle( color: Colors.black),)
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(12.0),),
                            choiceButtons(),
                            Padding(padding: EdgeInsets.all(12.0),),
                            // TEXT OPTIONS ( NON_SELECTABLE )
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: new Column(
//                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[

                                  Align(alignment: Alignment.bottomLeft, child: new Text('A. 100% Verified And Genuine', style: new TextStyle(color: Colors.black, fontSize: 15.0),)),
                                  Padding(padding: EdgeInsets.all(12.0),),
                                  Align(alignment: Alignment.bottomLeft,child: new Text('B. Transparent Policy', style: new TextStyle(color: Colors.black, fontSize: 15.0),)),
                                  Padding(padding: EdgeInsets.all(12.0),),
                                  Align(alignment: Alignment.bottomLeft, child: new Text('C. 99% Accuracy Maintain', style: new TextStyle(color: Colors.black, fontSize: 15.0),)),
                                  Padding(padding: EdgeInsets.all(12.0),),
                                  Align(alignment: Alignment.bottomLeft, child: new Text('D. Exchange Facility', style: new TextStyle(color: Colors.black, fontSize: 15.0),)),
                                  Padding(padding: EdgeInsets.all(12.0),),
                                  Align(alignment: Alignment.bottomLeft, child: new Text('\t\tDear User Name', style: new TextStyle(color: Colors.blue, fontSize: 12.0),)),
                                  Padding(padding: EdgeInsets.all(12.0),),
                                  new Center(child: new Text('Thanks for choosing our services,', style: new TextStyle(color: Colors.black, fontSize: 13.5),),),
                                  Align(alignment: Alignment.center, child: new Text('10 days money back guarantee if you are not satisfied with our lead services. So, don\'t worry about your payment', style: new TextStyle(color: Colors.black, fontSize: 13.5),)),
                                  Padding(padding: EdgeInsets.all(12.0),),

                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: new FlatButton(onPressed: () {},
                                      child: Text(
                                        'Buy and Download',
                                        style: TextStyle(
                                            fontSize: 13.0, color: Colors.white),),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: new BorderRadius.circular(
                                              15.0)),
                                      color: blueColor,),
                                  ),

                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );
  }


  inputButton(String field) {
    return new SizedBox(
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: MediaQuery
          .of(context)
          .size
          .height / 14,
      child: new TextFormField(
        textAlign: TextAlign.center,
        decoration: new InputDecoration(
            fillColor: _pinkColor,
            filled: true,
            hintText: '$field',

            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(color: Colors.pinkAccent)
            )
        ),
      ),
    );
  }


  getDropDownContainer(String field) {
    return new Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: 30.0,
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0, left: 10.0),
        child: new Row(
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('$field', style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),),
            Padding(padding: EdgeInsets.only(left: 45.0, right: 45.0),),
            new DropdownButton<String>(
              items: <String>['A', 'B', 'C', 'D'].map((String val) {
                return new DropdownMenuItem<String>(
                  value: val,
                  child: new Text(val),
                );
              }).toList(), onChanged: (String value) {  },
            )
          ],
        ),
      ),
    );
  }


  choiceButtons() {

    return new Row(

      children: <Widget>[
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width / 3,
            height: 80.0,
            child: new FlatButton(onPressed: () {},
              highlightColor: blueColor,
              child: Text(
                '100Lead/40Rs\nRs. 4000',
                style: TextStyle(
                    fontSize: 13.0, color: Colors.white),),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(
                      15.0)),
              color: _pinkColor,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(12.0),),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width / 3,
            height: 80.0,
            child: new FlatButton(onPressed: () {},

              highlightColor: blueColor,
              child: Text(
                '200Lead/35Rs\nRs. 7000',
                style: TextStyle(
                    fontSize: 13.0, color: Colors.white),),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(
                      15.0)),
              color: _pinkColor,

            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(12.0),),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width / 3,
            height: 80.0,
            child: new FlatButton(onPressed: () {},
              highlightColor: blueColor,
              child: Text(
                '500Lead/25Rs\nRs. 12,5000',
                style: TextStyle(
                    fontSize: 13.0, color: Colors.white),),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(
                      15.0)),
              color: _pinkColor,
            ),
          ),
        ),
      ],

    );

  }

}