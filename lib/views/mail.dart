import 'package:flutter/material.dart';
import 'package:invoice/views/new_password.dart';

class Mail extends StatefulWidget {
  const Mail({super.key});

  @override
  State<Mail> createState() => _MailState();
}

class _MailState extends State<Mail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 133,vertical: 10),
            height: 100,
            child: Image.asset("assets/images/Email.png"),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Check Your Mail',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF1D1B20),
                        fontSize: 25,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        height: 0,

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'We have sent a password recover',
                      style: TextStyle(
                        color: Color(0xFF758090),
                        fontSize: 15,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w300,
                        height: 0.10,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'instructions to your mail',
                      style: TextStyle(
                        color: Color(0xFF758090),
                        fontSize: 15,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w300,
                        height: 0.10,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
SizedBox(height: 10,),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewPassword()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              height: 40,
              width: double.infinity,
              decoration: ShapeDecoration(
                color: Color(0xFF663CEF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      'Open Email App',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                        height: 0.06,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          TextButton(onPressed: (){},
              child: Text("Skip, I'll confirm later")),
          SizedBox(height: MediaQuery.of(context).size.height *0.3,),
         Text("Did not receive the Email? Check your spam filter,"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Or"),
              TextButton(onPressed: (){},
                  child: Text("Try another Email address"))
            ],
          )
        ],
      ),
    );
  }
}
