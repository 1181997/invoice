import 'package:flutter/material.dart';
import 'package:invoice/views/mail.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 25,horizontal: 20),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Invoice",
                      style: TextStyle(
                        color: Color(0xFF663CEF),
                        fontSize: 23,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),),
                    SizedBox(width: 5,),
                    Text("Manager",
                      style: TextStyle(
                        color: Color(0xFF374253),
                        fontSize: 23,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w300,
                        height: 0,
                      ),)
                  ],
                ),

              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 133,vertical: 10),
                height: 130,
                child: Image.asset("assets/images/Frame.png"),
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Forgot your password?',
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
width: MediaQuery.of(context).size.width *0.80,
                          child: Opacity(
                            opacity: 0.60,
                            child: Wrap(
                              alignment: WrapAlignment.start,
                              children: [Text(
                                'Please enter the Email address associated with Your '
                                    'account and We will Email you a link to reset your password',
                                maxLines: 4,
                                style: TextStyle(
                                  color: Color(0xFF758090),
                                  fontSize: 15,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w300,
                                  height: 1,
                                ),
                              ),],
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 25,),


              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email_outlined,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 1,color: Color(0xFF663CEF))),
                    labelText: 'Email address',
                    hintText: 'leonvlevitt@army',
                  ),
                ),
              ),
              SizedBox(height: 20,),

              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Mail()));
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
                          'Forgot Password',
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
              Container(
                margin: EdgeInsets.fromLTRB(20,0, 20,4),
                child:  Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(

                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: StrokeAlign.center,
                            color: Color(0x4C97A1B1),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        ' Or ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF97A1B1),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                height: 40,
                width: double.infinity,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width: 1,color: Color(0xFF97A1B1))
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        'Back to Log In',
                        style: TextStyle(
                          color: Color(0xFF374253),
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

            ],
          ),
        ),
      ),
    );
  }
}
