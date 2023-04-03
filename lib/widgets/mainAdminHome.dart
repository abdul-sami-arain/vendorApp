import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vendorapp/widgets/dashboardSquare.dart';
import 'package:vendorapp/widgets/heading2.dart';
import 'package:vendorapp/widgets/jobs.dart';
import 'package:vendorapp/widgets/sqDB2.dart';
import 'package:vendorapp/widgets/squares.dart';
import 'package:vendorapp/widgets/title5.dart';
import 'package:vendorapp/widgets/wideSquaresDb.dart';


class AdminHomeM extends StatefulWidget {
  const AdminHomeM({super.key});

  @override
  State<AdminHomeM> createState() => _AdminHomeMState();
}

class _AdminHomeMState extends State<AdminHomeM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Heading2(heading: "Admin Portal", color: Colors.black),
                Container()
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SquareDB2(heading: " Total\t\nUsers", value: "212", color: Colors.red,),
                SquareDB2(heading: " Total\t\nServices", value: "22", color: Colors.amber,),
                SquareDB2(heading: " Total\t\nVendors", value: "98", color: Colors.pink,),
              ],
            ),
            SizedBox(height: 20.h,),
              SizedBox(height: 5.h,),
            Title5(heading: "Posted Jobs", color: Colors.grey, weight: FontWeight.w600),
            SizedBox(height: 15.h,),
            Jobs(value: "54"),
            SizedBox(height: 10.h,),
            Jobs(value: "54"),
            SizedBox(height: 10.h,),
            Jobs(value: "54"),
            SizedBox(height: 10.h,),
      
          ],
        ),
      ),
    );
  }
}