import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendorapp/boarding_screen/presentation/contentModel.dart';
import 'package:vendorapp/screens/mainhome.dart';
import 'package:vendorapp/screens/provider_description.dart';
import 'package:vendorapp/screens/signin.dart';
import 'package:vendorapp/widgets/description.dart';
import 'package:vendorapp/widgets/heading.dart';
import 'package:im_stepper/main.dart';
import 'package:im_stepper/stepper.dart';
import 'package:vendorapp/widgets/labelsField.dart';
import 'package:vendorapp/widgets/profile2.dart';
import 'package:vendorapp/widgets/squares.dart';
import 'package:vendorapp/widgets/title2.dart';
import 'package:vendorapp/widgets/title3.dart';

class ServiceProvider extends StatelessWidget {
  String service;
   ServiceProvider({super.key,required this.service});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(  
         appBar: AppBar(
          backgroundColor: Color(0xff034047),
          title: Text("House Painting"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                SizedBox(height: 10.h,),
                GestureDetector(
                  onTap: (){
                    
                  },
                  child: Profile2(name: "Nasir", availability: "Available", service: service)),
                SizedBox(height: 10.h,),
                Profile2(name: "Nadeem", availability: "Unavailable", service: service),
                SizedBox(height: 10.h,),
                Profile2(name: "Sahir", availability: "Available", service: service),
                SizedBox(height: 10.h,),
                Profile2(name: "Shahzawaz", availability: "Unavailable", service: service),
                SizedBox(height: 10.h,),
              ],
            ),
          ),
        ) ,
      ),
    );
  }
}