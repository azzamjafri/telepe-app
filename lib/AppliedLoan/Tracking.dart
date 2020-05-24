import 'package:flutter/material.dart';
import 'package:telepeapp/drawer.dart';

class Tracking extends StatefulWidget {
  @override
  _TrackingState createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  int current_step = 0;
  List<Step> steps = [
    Step(
      title: Text('Application Form Submitted'),
      content: Container(),
      isActive: true,

    ),
    Step(
      title: Text('Document Submitted'),
      content: Text('World!'),
      isActive: true,
    ),
    Step(

      title: Text('Application Under Review\n(It make take 3-15 worling Day)',),
      content: Text('Hello World!'),

      isActive: true,
    ),
    Step(
      title: Text('Approved\n(As per bank/financial\n Service Provider Report)'),
      content: Text('Hello!'),
      isActive: true,
      state: StepState.complete,
    ),
    Step(
        title: Text('Total Loan Amount'),
        content: Text('Hello!'),
        // isActive: true,
        state: StepState.indexed
    ),
    Step(
        title: Text('Distributed'),
        content: Text('Hello!'),
        //isActive: true,
        state: StepState.indexed
    ),
  ];

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
                image: AssetImage("assets/1.png"),
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
                    child: Image.asset('assets/teelpe15.png'),
                  ),
                ),
                Text('Dear User Name',style: TextStyle(color: Colors.deepPurple,fontSize: 15),),
                SizedBox(height: 15,),
                Text('Thanks for submitting your loan application with Telepe'),
                Stepper(
                  steps: steps,
                  type: StepperType.vertical,
                  currentStep: 0,
                  controlsBuilder: (BuildContext context,
                      {VoidCallback onStepContinue, VoidCallback onStepCancel,VoidCallback onStepTapped}) =>
                      Container(),
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

