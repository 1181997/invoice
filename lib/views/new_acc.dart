import 'package:flutter/material.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({super.key});

  @override
  State<NewAccount> createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
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

                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                child: Image.asset("assets/images/Lp.png"),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create Account',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF1D1B20),
                            fontSize: 20,
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
                        Text(
                          'Hello user!',
                          style: TextStyle(
                            color: Color(0xFF758090),
                            fontSize: 11,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w300,
                            height: 0.10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 13,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Please fill Out the form below to get started.',
                          style: TextStyle(
                            color: Color(0xFF758090),
                            fontSize: 11,
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
              Container(
                margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0x4C97A1B1)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset("assets/images/google-icon.png"),
                          ),
                          SizedBox(width: 8,),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              'Sign in with Google',
                              style: TextStyle(
                                color: Color(0xFF1D1B20),
                                fontSize: 12,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w300,
                                height: 0.06,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    )),
                    SizedBox(width: 10,),
                    Expanded(child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0x4C97A1B1)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset("assets/images/fb-icon.png"),
                          ),
                          SizedBox(width: 8,),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              'Sign in with FB',
                              style: TextStyle(
                                color: Color(0xFF1D1B20),
                                fontSize: 12,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w300,
                                height: 0.06,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20,15, 20, 20),
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
                        'Or',
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock_outline,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1,color: Color(0xFF663CEF))),
                      labelText: 'Password',
                      hintText: '************',
                      suffixIcon: Icon(Icons.visibility_off_outlined)
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock_outline,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1,color: Color(0xFF663CEF))),
                      labelText: 'Confirm Password',
                      hintText: 'Leaonlev@273#',
                      suffixIcon: Icon(Icons.visibility_outlined)
                  ),
                ),
              ),
              Container(
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
                        'Sign UP',
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
                        'Log In',
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
