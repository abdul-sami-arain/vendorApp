import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendorapp/widgets/subhead.dart';
import 'package:vendorapp/widgets/title1.dart';
import 'package:vendorapp/widgets/title3.dart';

import '../screens/provider_description.dart';


class Profile2 extends StatelessWidget {
  String name;
  String availability;
  String service;
   Profile2({super.key,required this.name,required this.availability,required this.service});
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color:Color(0xff034047) ,
                  blurRadius: 6.0,
                  spreadRadius: 1.0,
                  offset: Offset(0.0, 0.0),
                  // Shadow position
                ),
              ],
      ),
      height: availability=="Available"?160.h:110.h,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                radius: 30.0,
                backgroundImage:
                    AssetImage("assets/images/user.png"),
                backgroundColor: Colors.blue,
              ),
              SizedBox(width: 10.w,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right: 140.w),
                    child: Title3(heading: name, color: Colors.black),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: 140.w),
                    child: Container(
                          height: 20.h,
                          width: 80,
                          decoration: BoxDecoration(
                            color:availability=="Available"? Colors.green:Colors.red,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(vertical: 3.h),
                            child:availability=="Available"? Text(  
                              "Avaialble",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ): Text(  
                              "UnAvailable",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                  )
                ],
              )
              ],
            ),

            Padding(
              padding:  EdgeInsets.only(left: 0.w),
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
             availability=="Available"?Container(
                        height: 48.h,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                                  Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ProviderDescription(name: name, service: service)),);
                          },
                          child: Text("Request Service"),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xff034047)),
                          ),
              )
            ):Container(),

          ],
        ),
      ),
    );
  }
}