import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendorapp/boarding_screen/presentation/contentModel.dart';
import 'package:vendorapp/screens/mainhome.dart';
import 'package:vendorapp/screens/signin.dart';
import 'package:vendorapp/screens/terms.dart';
import 'package:vendorapp/screens/testing.dart';
import 'package:vendorapp/widgets/callout.dart';
import 'package:vendorapp/widgets/description.dart';
import 'package:vendorapp/widgets/heading.dart';
import 'package:im_stepper/main.dart';
import 'package:im_stepper/stepper.dart';
import 'package:vendorapp/widgets/labelsField.dart';

class FixerSignup extends StatefulWidget {
  const FixerSignup({super.key});

  @override
  State<FixerSignup> createState() => _FixerSignupState();
}

class _FixerSignupState extends State<FixerSignup> {
  TextEditingController fullname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController cnic = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffc6d8e2),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 35.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
          
          
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Heading(heading: "User Sign Up")),
                    SizedBox(height: 15.h,),
                    Labels(heading: "Full Name", color: Color(0xff034047)),
                    Container(
                      child: TextFormField(
                        
                        style: TextStyle(
                          color:Color(0xff034047) 
                        ),
                        decoration: InputDecoration(
                           enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Color(0xff034047)),   
                        ),  
                        focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff034047)),
                            ),  
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xff034047) ,
                          ),
                          
                        ),
                        
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Labels(heading: "Email", color: Color(0xff034047)),
                    Container(
                      child: TextFormField(
                        style: TextStyle(
                          color:Color(0xff034047) 
                        ),
                        decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Color(0xff034047)),   
                        ),  
                        focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff034047)),
                            ),  
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color(0xff034047) ,
                          ),
                          prefixIconColor: Color(0xff034047)
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Labels(heading: "Password", color: Color(0xff034047)),
                    Container(
                      child: TextFormField(
                        style: TextStyle(
                          color:Color(0xff034047) 
                        ),
                        decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Color(0xff034047)),   
                        ),  
                        focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff034047)),
                            ),  
                          prefixIcon: Icon(
                            Icons.password,
                            color: Color(0xff034047) ,
                          ),
                          prefixIconColor: Color(0xff034047)
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Labels(heading: "Phone Number", color: Color(0xff034047)),
                    Container(
                      child: TextFormField(
                        style: TextStyle(
                          color:Color(0xff034047) 
                        ),
                        decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Color(0xff034047)),   
                        ),  
                        focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff034047)),
                            ),  
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Color(0xff034047) ,
                          ),
                          prefixIconColor: Color(0xff034047)
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Labels(heading: "CNIC", color: Color(0xff034047)),
                    Container(
                      child: TextFormField(
                        style: TextStyle(
                          color:Color(0xff034047) 
                        ),
                        decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Color(0xff034047)),   
                        ),  
                        focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff034047)),
                            ),  
                          prefixIcon: Icon(
                            Icons.card_giftcard,
                            color: Color(0xff034047) ,
                          ),
                          prefixIconColor: Color(0xff034047)
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h,),
                Container(
                        height: 48.h,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Terms()),);
                          },
                          child: Text("Sign in"),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xff034047)),
                          ),
                        )),
                SizedBox(height: 10.h,),
                 Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Container(
                        height: 2.h,
                        width: 70.w,
                        color: Color(0xff034047),
                      ),
                      Text("OR",style: TextStyle(color: Color(0xff034047),fontSize: 20.sp),),
                      Container(
                        height: 2.h,
                        width: 70.w,
                        color: Color(0xff034047),
                      ),
                      ],
                    ),
            ),
            SizedBox(height: 10.h,),
            Row(
              children: [
                 Container(
                        height: 48.h,
                        width: 160.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp1()),);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Callout(heading: "Signin with", color: Color.fromARGB(255, 17, 84, 138)),
                              SizedBox(width: 4.w,),
                              Image.asset("assets/images/facebook.png",height: 35.h,width: 35.w,)
                            ],
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                        )),
                        SizedBox(width: 4.h,),
                         Container(
                        height: 48.h,
                        width: 160.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp1()),);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Callout(heading: "Signin with", color: Color.fromARGB(255, 17, 84, 138)),
                              SizedBox(width: 4.w,),
                              Image.asset("assets/images/google.png",height: 35.h,width: 35.w,)
                            ],
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                        )),
              ],
            )
              ],
            ),
          ),
        ) ,
      ),
    );
  }
}