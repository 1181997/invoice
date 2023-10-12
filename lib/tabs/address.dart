import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {

  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 135,
              height: 30,
              margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 5,
                    height: 30,
                    decoration: ShapeDecoration(
                      color: Color(0xFF663CEF),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Billing Address',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1D1B20),
                      fontSize: 18,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                maxLines: 5,
                decoration: InputDecoration(

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 1,color: Color(0xFF663CEF))),
                    labelText: 'Address',
                    hintText: '1942 Williams Lane Wichita, US 85040',
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width *0.90,
              child: Opacity(
                opacity: 0.50,
                child: Wrap(
                  alignment: WrapAlignment.start,
                  children: [Text(
                    'Street address, company name, c/o, apartment,building,floor etc...',
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
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.location_on_outlined,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 1,color: Color(0xFF663CEF))),
                    labelText: 'City',
                    hintText: 'Los Angeles',
                    suffixIcon: Icon(Icons.arrow_drop_down_outlined )
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.map_outlined,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 1,color: Color(0xFF663CEF))),
                    labelText: 'State/Province/Region',
                    hintText: 'California',
                    suffixIcon: Icon(Icons.arrow_drop_down_outlined )
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.flag_outlined,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 1,color: Color(0xFF663CEF))),
                    labelText: 'Country',
                    hintText: 'United States',
                    suffixIcon: Icon(Icons.arrow_drop_down_outlined )
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.tag_outlined,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 1,color: Color(0xFF663CEF))),
                    labelText: 'Zip/Postal Code',
                    hintText: '85040',
                    suffixIcon: Icon(Icons.arrow_drop_down_outlined )
                ),
              ),
            ),

            InkWell(
              onTap: () {
                //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Mail()));
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
