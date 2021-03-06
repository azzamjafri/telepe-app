import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telepeapp/Registration/extraterms.dart';
import 'package:telepeapp/colors.dart';

class TermsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(context),
    );
  }

  getBody(var context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/9.png",
                fit: BoxFit.fill,
              ),
            ),
            getContents(context),
          ],
        ),
      ),
    );
  }

  getContents(var context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Spacer(
              flex: 2,
            ),
            Text(
              "TERMS AND CONDITIONS",
              style: TextStyle(color: blueColor, fontWeight: FontWeight.bold),
            ),
            Spacer(
              flex: 1,
            ),
            Image.asset(
              "assets/teelpe15.png",
              height: 60,
              width: 60,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Spacer(
              flex: 1,
            ),
            Text(
              "GENERAL T&C:",
              style: TextStyle(color: blueColor, fontWeight: FontWeight.bold),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Spacer(
              flex: 1,
            ),
            Text(
              "Dear Users,",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
        SizedBox(
          height: 125,
          width: MediaQuery.of(context).size.width/1.2,
          child: Text("                           Fund booking is a financial services provider application and we generate that leads on paid basis. We are not any bank and NBFC or any other kind of Financial institutions. Also we can’t provide a loan. We only generate the leads and can refer to other banking sector that they can teach at your far better guidelines.",textAlign: TextAlign.justify,),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("CREDIT SCORES",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
        SizedBox(
          height: 125,
          width: MediaQuery.of(context).size.width/1.2,
          child: Text("Fund Booking is not authorize to check your credit history. So don’t worry, Fund booking will not check any credit history. But it will lead to any financial institution. Then they can check your credit history before or while loan process. In that case, fund Booking is not responsible.",textAlign: TextAlign.justify,),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("3 EMI FREE",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
        SizedBox(
          height: 125,
          width: MediaQuery.of(context).size.width/1.2,
          child: Text("“3 EMI FREE” is just a sales attraction line. Fund Booking is not responsible if any user will not get any monetarium period due to lockdown from the Bank/ NBFC or any other financial institutions. We are just a lead generator. So, Fund Booking is not responsible.",textAlign: TextAlign.justify,),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("LOW CIBIL SCORE: ",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
        SizedBox(
          height: 125,
          width: MediaQuery.of(context).size.width/1.2,
          child: Text("“Low Cibil Score” is also a sales attraction line, which is used to attract the users. For getting any loan, applicant should be a good credit/cibic history. Any Applicant/User can’t claim for any types of our services, if they will not be getting satisfied.",textAlign: TextAlign.justify,),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("APPLICATION FEE:",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
        SizedBox(
          height: 125,
          width: MediaQuery.of(context).size.width/1.2,
          child: Text("Application fees or any other kind of other fees which is taken by Fund Booking is not returnable amount or application fee. If any Applicant/user did not get refund back then Fund Booking app is not responsible. We Fund Booking is just a kind of application leads generator in the market. And we are not responsible for any kind of due or refund. If any user/applicant is not getting loan states/ required loan/call/replies as per requirement, then Fund Booking is not responsible.",textAlign: TextAlign.justify,),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("DATA POLICY:",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
        SizedBox(
          height: 125,
          width: MediaQuery.of(context).size.width/1.2,
          child: Text("Fund booking will not sell Applicant/User’s database to any third party in the market. Your database is 100% secured and safe with us. But Fund Booking can use your contact details with loan providers/banks/NBFC/Financial Institutions only for your services. For any query please,",textAlign: TextAlign.justify,),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Mail us at:111222@g.com",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>ExtraTermsPage()));
                },
                child: Text("OK",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),),
                color: yellowColor,
                minWidth: 100,
              ),
            ),
            SizedBox(width: 30,),
          ],
        )
      ],
    );
  }
}
