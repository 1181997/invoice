import 'package:flutter/material.dart';

class BankInfo extends StatefulWidget {
  const BankInfo({super.key});

  @override
  State<BankInfo> createState() => _BankInfoState();
}

class _BankInfoState extends State<BankInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  'Bank Details',
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
          SizedBox(height: 20,),


          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.account_balance_outlined,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1,color: Color(0xFF663CEF))),
                  labelText: 'Bank Name',
                  hintText: 'Bank Of Baroda',
                  suffixIcon: Icon(Icons.arrow_drop_down_outlined )
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.dialpad_outlined,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1,color: Color(0xFF663CEF))),
                  labelText: 'Account number',
                  hintText: '12345677654321',
                  suffixIcon: Icon(Icons.arrow_drop_down_outlined )
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.dialpad_outlined,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1,color: Color(0xFF663CEF))),
                  labelText: 'Re-Enter Account number',
                  hintText: '12345677654321',
                  suffixIcon: Icon(Icons.arrow_drop_down_outlined )
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.looks_one_outlined,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1,color: Color(0xFF663CEF))),
                  labelText: 'IFSC Code',
                  hintText: 'BARB0ABRBUL',
                  suffixIcon: Icon(Icons.arrow_drop_down_outlined )
              ),
            ),
          ),
Spacer(),
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
                      'Submit',
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
    );
  }
}
