import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:vendorapp/screens/post_detail.dart';

import '../widgets/labelsField.dart';


class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
         
          body: Container(
              // padding: const EdgeInsets.all(20),
              child: Theme(
                data: ThemeData(
                   canvasColor: Colors.white,
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: Color(0xff034047),
                  
                  secondary: Color(0xff034047),
                )),
                  child: Stepper(
                    
                    type: StepperType.horizontal,
                    currentStep: currentStep,
                    onStepCancel: () => currentStep == 0
                        ? null
                        : setState(() {
                            currentStep -= 1;
                          }),
                    onStepContinue: () {
                      bool isLastStep = (currentStep == getSteps().length - 1);
                      if (isLastStep) {
                        //Do something with this information
                      } else {
                        setState(() {
                          currentStep += 1;
                        });
                      }
                    },
                    onStepTapped: (step) => setState(() {
                      currentStep = step;
                    }),
                    steps: getSteps(),
                  ),
                ),
              )),
      ),
      );
    
  }

  List<Step> getSteps() {
    return <Step>[
      Step(
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 0,
        title: const Text("Details"),
        content:  Column(
          
          
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 3.h,),
                    Labels(heading: "Task Title", color: Color(0xff034047)),
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
                          
                        ),
                        
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    Labels(heading: "Task Detail", color: Color(0xff034047)),
                    SizedBox(height: 10.h,),
                    ToggleSwitch(
                      activeBgColor: [Color(0xff034047)],
                      minWidth: 102.w,
                      initialLabelIndex: 0,
                      totalSwitches: 3,
                      labels: ['Chat', 'Video', 'Audio'],
                      icons: [Icons.chat, CupertinoIcons.videocam,CupertinoIcons.mic],
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(
                         border: new OutlineInputBorder(
                            borderSide: new BorderSide(color:Color(0xff034047) ,width: 2 )
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xff034047), width: 2),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xff034047), width: 2),
                          ),
                      ),
                      minLines: 12, // any number you need (It works as the rows for the textarea)
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                    )
                  ],
                ),
      ),
      Step(
        state: currentStep > 1 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 1,
        title: const Text("When & Where"),
        content: Column(
          children:  [
              Labels(heading: "Task Location", color: Color(0xff034047)),
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
                            hintText: "eg DHA Karachi" 
                          
                        ),
                        
                      ),
                    ),
                    SizedBox(height: 20.h,),
            Labels(heading: "When do you want to start the work?", color: Color(0xff034047)),
            SizedBox(height: 5.h,),
                    Container(
                      child: TextFormField(
                        
                        style: TextStyle(
                          color:Color(0xff034047) 
                        ),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                            Icons.calendar_month,
                            color: Color(0xff034047) ,
                          ),
                           enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Color(0xff034047)),   
                        ),  
                        focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff034047)),
                            ), 
                            hintText: "02-10-2023" 
                          
                        ),
                        
                      ),
                    ),
          ],
        ),
      ),
      Step(
        state: currentStep > 2 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 2,
        title: const Text("Budget"),
        content: Column(
          children:  [
            Labels(heading: "What's Your budget estimate?", color: Color(0xff034047)),
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
                            hintText: "eg DHA Karachi" 
                          
                        ),
                        
                      ),
                    ),
            SizedBox(height: 20.h,),
             Container(
                          height: 48.h,
                          width:150.w,
                           decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                
                              ),
                          child: ElevatedButton(
                            onPressed: () {
                               Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PostDetail()),);
                            },
                            child: Text("Post",style: TextStyle(color: Color(0xff034047),fontWeight: FontWeight.w500),),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                )
              ),
          ],
        ),
      ),
    ];
  }
}





// class CustomBtn extends StatelessWidget {
//   final Function? callback;
//   final Widget? title;
//   CustomBtn({Key? key, this.title, this.callback}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 10),
//       child: SizedBox(
//         width: double.infinity,
//         child: Container(
//           color: Color(0xff034047) ,
//           child: TextButton(
//             onPressed: () => callback!(),
//             child: title!,
//           ),
//         ),
//       ),
//     );
//   }
// }



