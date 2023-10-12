import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';


class BusinessInfo extends StatefulWidget {
  const BusinessInfo({super.key});

  @override
  State<BusinessInfo> createState() => _BusinessInfoState();
}

class _BusinessInfoState extends State<BusinessInfo> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              height: 105,
              width: 100,
              child: Stack(
                // alignment: Alignment.bottomCenter,
                children: [
                  DottedBorder(
                      borderType: BorderType.Circle,
                      strokeWidth: 2,
                      color: Color(0xFF663CEF),
                      dashPattern: [10,6],
                      child: Container(
                        width: 90,
                        height: 90,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          width: 80,
                          height: 80,
                          child: Image.asset("assets/images/Ellipse 6.png",fit: BoxFit.cover,),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle
                          ),
                        ),
                      )),
                  Positioned(
                    left: 60,
                    top: 30,
                    child: Container(
                      width: 25,
                      height: 29,
                      decoration: BoxDecoration(color: Color(0xFF453DE0)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 30,

                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 35,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFF1D1B20),
                        ),
                        child: Image.asset("assets/images/camera.png"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.apartment_outlined,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1,color: Color(0xFF663CEF))),
                  labelText: 'Company Name',
                  hintText: 'Road Runner Lawn Services',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_outline,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1,color: Color(0xFF663CEF))),
                  labelText: 'Owner Name',
                  hintText: 'William C. Smith',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.call,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1,color: Color(0xFF663CEF))),
                  labelText: 'Mobile number',
                  hintText: '+1 316 448 7280',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.call,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1,color: Color(0xFF663CEF))),
                  labelText: 'Alternative mobile number',
                  hintText: '+1 316 448 7280',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.pin_outlined,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1,color: Color(0xFF663CEF))),
                  labelText: 'GST/TAX number',
                  hintText: '22AAAAA0000A1Z5',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1,color: Color(0xFF663CEF))),
                  labelText: 'Business Email',
                  hintText: 'contact@roadrunnerlawn.com',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.language_outlined,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1,color: Color(0xFF663CEF))),
                  labelText: 'Business website',
                  hintText: 'www.roadrunnerlawn.us',
                ),
              ),
            ),
            SizedBox(height: 20,),

            InkWell(
              onTap: () {

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
                        'Next',
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

          ],
        ),
      ),
    );
  }
}
