import 'package:flutter/material.dart';
import 'package:invoice/tabs/address.dart';
import 'package:invoice/tabs/bank_info.dart';
import 'package:invoice/tabs/business_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<Tab> tabs = <Tab>[
    Tab(text: 'Business Info'),
    Tab(text: 'Address'),
    Tab(text: 'Bank Info'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF8F9FA),
          centerTitle: true,
          title: Container(
        height: 46,
        decoration: ShapeDecoration(
        color: Color(0xFFF8F9FA),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
    ),) ,
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
          ),),

          bottom: TabBar(
            tabs: tabs,
            labelColor: Colors.black,
          ),
        ),
        body: TabBarView(
          children: [
            BusinessInfo(),
            // Chat Tab

            Address(),
            // Status Tab

            BankInfo(),
            // Call Tab

          ],
        ),
      ),
    );
  }
}
