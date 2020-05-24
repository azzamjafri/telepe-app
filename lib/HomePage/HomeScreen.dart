

import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:telepeapp/ApplicationForm/ApplicationPage1.dart';
import 'package:telepeapp/AppliedLoan/appliedLoan.dart';
import 'package:telepeapp/BusinessLead/business_lead.dart';
import 'package:telepeapp/Mywallet/MyWallet.dart';
import 'package:telepeapp/ReferAndEarn/ReferEarn.dart';
import 'package:telepeapp/Support/Support.dart';
import 'package:telepeapp/colors.dart';
import 'package:telepeapp/drawer.dart';
import 'package:telepeapp/feedback/Feedback.dart';
import 'package:telepeapp/loan/loans.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var shadows=[
    Shadow( // bottomLeft
        offset: Offset(-1.0, -1.0),
        color: Colors.white
    ),
    Shadow( // bottomRight
        offset: Offset(1.0, -1.0),
        color: Colors.white
    ),
    Shadow( // topRight
        offset: Offset(1.0, 1.0),
        color: Colors.white
    ),
    Shadow( // topLeft
        offset: Offset(-1.0, 1.0),
        color: Colors.white
    ),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: scaffoldKey,
      drawer:Draw(context: context),
      body: getBody(),
    );
  }

  SafeArea getBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/kihk.png",
                fit: BoxFit.fill,
              ),
            ),
            getContents(),
          ],
        ),
      ),
    );
  }

  getContents() {
    return Column(
      children: [
       getHeader(),
        getCarousel(),
        getLoans(),
        getFeedBack(),
        getClients(),
      ],
    );
  }

 Padding getHeader() {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FlatButton(child: Image.asset("assets/9k.png",height: 50,width: 50,),onPressed: (){
            scaffoldKey.currentState.openDrawer();
          },),
          Text(" Hello  ",style: TextStyle(fontSize:20,shadows: shadows
          ),),
          Text("  User Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Image.asset("assets/hl.png",height: 50,width: 50,),
          Image.asset("assets/haj.png",height: 50,width: 50,),
        ],
      ),

    );
  }

  getCarousel() {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width/1.2,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/teelpe10.png")
          )
        ),
        child: PageIndicatorContainer(
          child: PageView(
            children: [
              Image.asset("assets/r1.png",fit: BoxFit.fill,),
              Image.asset("assets/r1.png"),
              Image.asset("assets/r1.png"),
              Image.asset("assets/r1.png"),
              Image.asset("assets/r1.png"),
              Image.asset("assets/r1.png"),
            ],
          ),
          length: 6,
          indicatorSelectorColor: blueColor,
        ),
      ),
    );
  }

  getLoans() {
    var imagesize=60.0;
    var font1=12.0;
    const double padding1=4.0;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ApplicationPage1()));
            },
            child: Table(
              children: [
                TableRow(
                  children:[
                    Image.asset("assets/a.png",height: imagesize,width: imagesize,),
                    Image.asset("assets/b.png",height: imagesize,width: imagesize,),
                    Image.asset("assets/c.png",height: imagesize,width: imagesize,),
                  ]
                ),
                TableRow(
                  children:[
                    Padding(
                      padding: const EdgeInsets.all(padding1),
                      child: Center(child: Text("Instant Personal Loan",style: TextStyle(fontSize: font1,color: blueColor,fontWeight: FontWeight.bold,),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(padding1),
                      child: Center(child: Text("Instant Business Loan",style: TextStyle(fontSize: font1,color: blueColor,fontWeight: FontWeight.bold),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(padding1),
                      child: Center(child: Text("Instant Low CIBIL\nScoreLoan",style: TextStyle(fontSize: font1,color: blueColor,fontWeight: FontWeight.bold),)),
                    ),
                  ]
                ),
                TableRow(
                  children: [
                    Center(child: Text("No Cibil Check",style: TextStyle(fontSize: font1),)),
                    Center(child: Text("No Cibil Check",style: TextStyle(fontSize: font1),)),
                    Center(child: Text("No Cibil Check",style: TextStyle(fontSize: font1),)),

                  ]
                ),
                TableRow(
                    children: [
                      Center(child: Text("3 EMI Free Support",style: TextStyle(fontSize: font1),)),
                      Center(child: Text("3 EMI Free Support",style: TextStyle(fontSize: font1),)),
                      Center(child: Text("3 EMI Free Support",style: TextStyle(fontSize: font1),)),

                    ]
                ),
                //1st
                TableRow(
                    children:[
                      Image.asset("assets/d.png",height: imagesize,width: imagesize,),
                      Image.asset("assets/f.png",height: imagesize,width: imagesize,),
                      Image.asset("assets/ga.png",height: imagesize,width: imagesize,),
                    ]
                ),
                TableRow(
                    children:[
                      Padding(
                        padding: const EdgeInsets.all(padding1),
                        child: Center(child: Text("Instant Loan\n(Android/iOS App Development)",style: TextStyle(fontSize: font1,color: blueColor,fontWeight: FontWeight.bold,),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(padding1),
                        child: Center(child: Text("Instant Loan\n(Web/Software/ERP Development)",style: TextStyle(fontSize: font1,color: blueColor,fontWeight: FontWeight.bold),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(padding1),
                        child: Center(child: Text("Instant Student Loan",style: TextStyle(fontSize: font1,color: blueColor,fontWeight: FontWeight.bold),)),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Center(child: Text("No Cibil Check",style: TextStyle(fontSize: font1),)),
                      Center(child: Text("No Cibil Check",style: TextStyle(fontSize: font1),)),
                      Center(child: Text("No Cibil Check",style: TextStyle(fontSize: font1),)),

                    ]
                ),
                TableRow(
                    children: [
                      Center(child: Text("3 EMI Free Support",style: TextStyle(fontSize: font1),)),
                      Center(child: Text("3 EMI Free Support",style: TextStyle(fontSize: font1),)),
                      Center(child: Text("3 EMI Free Support",style: TextStyle(fontSize: font1),)),

                    ]
                ),
                //2nd
                TableRow(
                    children:[
                      Image.asset("assets/z.png",height: imagesize,width: imagesize,),
                      Image.asset("assets/n.png",height: imagesize,width: imagesize,),
                      Image.asset("assets/m.png",height: imagesize,width: imagesize,),
                    ]
                ),
                TableRow(
                    children:[
                      Padding(
                        padding: const EdgeInsets.all(padding1),
                        child: Center(child: Text("Instant Loan\n(Low Salary/Income)",style: TextStyle(fontSize: font1,color: blueColor,fontWeight: FontWeight.bold,),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(padding1),
                        child: Center(child: Text("Instant Daily Basis/\nPrivate Loan",style: TextStyle(fontSize: font1,color: blueColor,fontWeight: FontWeight.bold),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(padding1),
                        child: Center(child: Text("Refer and Earn\n(Earn upto 2Lac/Month)",style: TextStyle(fontSize: font1,color: blueColor,fontWeight: FontWeight.bold),)),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Center(child: Text("No Cibil Check",style: TextStyle(fontSize: font1),)),
                      Center(child: Text("No Cibil Check",style: TextStyle(fontSize: font1),)),
                      Center(child: Text("",style: TextStyle(fontSize: 5),)),

                    ]
                ),
                TableRow(
                    children: [
                      Center(child: Text("3 EMI Free Support",style: TextStyle(fontSize: font1),)),
                      Center(child: Text("3 EMI Free Support",style: TextStyle(fontSize: font1),)),
                      Center(child: Text("",style: TextStyle(fontSize: 5),)),

                    ]
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  getFeedBack() {
    return Row(
    children: [
      Expanded(
        flex: 50,
        child: SizedBox(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        flex: 30,
                        child: Container(
                          color: blueColor,
                        ),
                      ),
                      Expanded(
                        flex: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/ka.png",height: 20,width: 20,),
                            SizedBox(height: 100,width: 100,),
                            Image.asset("assets/ka1.png",height: 20,width: 20,),

                          ],
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment(-0.5,-.6),
                    child: Image.asset("assets/prof.png",height: 60,width: 60,color: Colors.black,),
                  ),
                  Align(
                    alignment: Alignment(0.5,-.7),
                    child: Text("Name",style: TextStyle(color: Colors.white),),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
      Expanded(
        flex: 50,
        child: SizedBox(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/thanks.png"),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left:12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Thanks Telepe Message",style: TextStyle(shadows: shadows,fontWeight: FontWeight.bold),),
                        Text("Name",style: TextStyle(shadows: shadows,fontWeight: FontWeight.bold),),
                        Text("Age",style: TextStyle(shadows: shadows,fontWeight: FontWeight.bold),),
                        Text("Place",style: TextStyle(shadows: shadows,fontWeight: FontWeight.bold),),
                        Text("Loan Amount",style: TextStyle(shadows: shadows,fontWeight: FontWeight.bold),),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )
    ],
    );

  }

  getClients() {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(child: Text("Our Direct Partners",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
          ),
          Image.asset("assets/Logo/a1.png",height: 75,width: 75,),
          Image.asset("assets/Logo/b1.jpeg",height: 75,width: 75,),
          Image.asset("assets/Logo/c1.png",height: 75,width: 75,),
          Image.asset("assets/Logo/d1.png",height: 75,width: 75,),
          Image.asset("assets/Logo/e1.jpeg",height: 75,width: 75,),
          Image.asset("assets/Logo/f1.png",height: 75,width: 75,),
          Image.asset("assets/Logo/g1.png",height: 75,width: 75,),
          Image.asset("assets/Logo/h1.png",height: 75,width: 75,),
          Image.asset("assets/Logo/i1.jpeg",height: 75,width: 75,),
          Image.asset("assets/Logo/j1.png",height: 75,width: 75,),
          Image.asset("assets/Logo/k1.png",height: 75,width: 75,),
          Image.asset("assets/Logo/l1.jpeg",height: 75,width: 75,),
          Image.asset("assets/Logo/m1.png",height: 75,width: 75,),
          Image.asset("assets/Logo/n1.jpeg",height: 75,width: 75,),
          Image.asset("assets/Logo/o1.jpeg",height: 75,width: 75,),



        ],
      ),
    );
  }
}


