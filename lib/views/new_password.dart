import 'package:flutter/material.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create New password?',
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
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width *0.80,
                      child: Opacity(
                        opacity: 0.50,
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: [Text(
                            'Your new password must be diffrent from previous used Password',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
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
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Must be at least 8 characters",
              style: TextStyle(
                color: Color(0xFF97A1B1),
                fontSize: 13,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                height: 0.09,
              ),),
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
                  hintText: '***********',
                  suffixIcon: Icon(Icons.visibility_off_outlined)
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Both Password must match",
              style: TextStyle(
                color: Color(0xFF97A1B1),
                fontSize: 13,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                height: 0.09,
              ),),
          ),
          SizedBox(height: 10,),
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
                    'Reset Password',
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
        ],
      ),
    );
  }
}
